# ISARIC REDCap database analysis: DATA PREP
# Cleaning and preparation of variables
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

# Functions require library(tidyverse), requires() nor :: not currently written in.  

library(tidyverse)
library(lubridate)
library(finalfit)

# Add location data---------------------------------------------------------------------------------
ccp_data = ccp_data %>% 
  mutate(dag_id = gsub("\\-.*","", subjid)) %>% 
  mutate(dag_id = str_replace_all(dag_id, 'O', '0')) %>% 
  mutate(dag_id = ifelse(dag_id == 'RGT02', 'RTG02', dag_id)) %>% 
  mutate(dag_id = ifelse(dag_id == 'RLB14', 'RBL14', dag_id)) %>% 
  mutate(dag_id = ifelse(dag_id == 'G405H', 'G450H', dag_id)) %>% 
  select(subjid, dag_id, everything())

areas = read_csv('https://raw.githubusercontent.com/SurgicalInformatics/ccp_location_lookups/master/data_out_ccp_lookups/ccp_dag_id_lookup.csv') %>% 
  as_tibble() %>% 
  rename(postcode_e = postcode,
         redcap_data_access_group_e  = redcap_data_access_group) %>% 
  distinct(dag_id, .keep_all = TRUE) %>% 
  select(-imd_average_postcodes_new, - city, -postcode_start, -tds_mean)

ccp_data = ccp_data %>% 
  left_join(areas, by = c('dag_id' = 'dag_id'))
rm(areas)

# Labels -------------------------------------------------------------------------------------------
## Tidyverse functions deal inconsistenly with variable label attributes. 
## Extract them here as object vlabels. 
## Apply at any time labels needed using: ff_relabel(vlabels)
vlabels = ccp_data %>% 
  mutate(age = NA %>% 
           ff_label("Age on admission (years)"),
         age.factor = NA %>% 
           ff_label("Age on admission (years)"),
         mort = NA %>% 
           ff_label("Mortality")
  ) %>% 
  extract_variable_label()


# Fix for day 1 tier 1 repeating daily form ---------------------------------------------------------
## This was an error in the REDCap specification.
## The daily form should only appear once per event, but here it is a repeating instrument
## 1. Change redcap event name  for repeated forms so they are not duplicated
## 2. Mark redcap_repeat_instance and redcap_repeat_instrument NA
ccp_data = ccp_data %>% 
  mutate(
    # For repeating forms, rewrite redcap_event_name for the day corresponding with the instance. 
    # This does not use date, only instance. 
    # This may conflict if daily forms completed in other event with same name, i.e. Day 3. 
    
    # Rows to update
    mark_to_change = if_else(redcap_event_name == "Day 1 Hospital&ICU Admission (Arm 2: TIER 1)" & 
                               redcap_repeat_instrument == "Daily Form",
                             TRUE, FALSE, FALSE),
    
    # Change to character as factor causes issues
    redcap_event_name = as.character(redcap_event_name),
    redcap_repeat_instrument = as.character(redcap_repeat_instrument),
    
    # Make change
    redcap_event_name = ifelse(mark_to_change,
                               paste0("Day ", redcap_repeat_instance + 1,
                                      " Hospital&ICU Admission (Arm 2: TIER 1)"),
                               redcap_event_name),
    # Set redcap_repeat_instrument and redcap_repeat_instance to NA as they would be normally.
    redcap_repeat_instance = ifelse(mark_to_change, NA, redcap_repeat_instance),
    redcap_repeat_instrument = ifelse(mark_to_change, NA, redcap_repeat_instrument),
    mark_to_change = NULL
  )



# Remove those patients marked definite "no" on final form-----------------------------------------
## This needs kept under review.
## Note also "probable" level here, these are not excluded. 
## Need to check daily infectious disease diagnosis forms to ensure no positives. 
## Small number removed here. 

## 03/06/2020 Number removed here has jumped up to >550. 
## Keep the helper object definite_no_subjid but now don't apply.
definite_no_subjid = ccp_data %>% 
  filter(corna_mbcat == "NO") %>% 
  pull(subjid)

# ccp_data = ccp_data %>% 
#   filter(!subjid %in% definite_no_subjid)


# Since we have multiple projects, it's possible that subjids are no longer unique
# We will have to drop non-unique subjids or they will be matched with the wrong outcome etc data
duplicates_across_projects = ccp_data %>%
  distinct(subjid, project) %>%
  add_count(subjid) %>%
  filter(n > 1)

ccp_data = ccp_data %>%
  filter(! subjid %in% duplicates_across_projects$subjid)

if (nrow(duplicates_across_projects) != 0){
  message(paste(nrow(duplicates_across_projects), "duplicate subjids across projects detected and removed."))
  duplicates_across_projects
}

# Added 18/08/2021 to deal with follow-up patients having no assigned event and being dropped in next section. 
# Thank you @LucyNorris
ccp_data = ccp_data %>% 
  mutate(
    flw_any = select(., matches("flw_")) %>%       # Count non-missing flw_ variables for each row
      {!is.na(.)} %>% 
      rowSums(),
    redcap_event_name = ifelse(flw_any > 0, "Follow-up (Arm 3: TIER 2)", redcap_event_name)
  )

# In patients who appear in more than one tier, keep the data from the highest tier ----------------
ccp_data = ccp_data %>% 
  mutate(arm = str_extract(redcap_event_name, "Arm \\d")) %>% 
  mutate(arm_n = str_extract(arm, "\\d")) %>% 
  # these two lines keep the highest arm n
  group_by(subjid) %>% 
  filter(arm_n == max(arm_n))


# Dataset and variable definitions -----------------------------------------------------------------
## Main cleaning applied here
ccp_data = ccp_data %>% 
  remove_labels() %>% 
  mutate(
    
    ## Dates ----------------------------------------------------------------
    # If admission date missing, use daily sheet 1 date if available 
    hostdat = case_when(
      (redcap_event_name == "Day 1 Hospital Admission (Arm 1: TIER 0)" | 
         redcap_event_name == "Day 1 Hospital&ICU Admission (Arm 2: TIER 1)" |
         redcap_event_name == "Day 1 (Arm 3: TIER 2)") &
        is.na(hostdat) & 
        !is.na(daily_dsstdat) ~ daily_dsstdat,
      TRUE ~ hostdat),
    
    # Onset to admission
    onset2admission = (hostdat - cestdat) %>%
      as.numeric() %>% 
      ff_label("Onset to admission (days)"),
    
    ## Age specified here -------------------------------------------------
    # Ensure any available form date is used so age is not missing
    anydat = case_when(
      !is.na(hostdat) ~ hostdat,    # If admission date, use that
      any(!is.na(daily_dsstdat)) ~ coalesce(daily_dsstdat), # first non-missing daily form across all forms
      !is.na(cestdat) ~ cestdat,    # onset
      !is.na(dsstdat) ~ dsstdat),   # enrolment
    
    age = (anydat - agedat) %>%
      as.numeric()/365, # Changed to deal with children, need fractions
    
    # Add infants to age variable by making months a fraction of year
    age_estimateyears = as.numeric(age_estimateyears),
    age_estimateyears = ifelse(age_estimateyearsu == "Months", age_estimateyears / 12, age_estimateyears),
    
    # DOB missing as no consent in some, therefore use age_estimateyears
    age = case_when(
      is.na(age) & !is.na(calc_age) ~ calc_age,
      is.na(age) & !is.na(age_estimateyears) ~ age_estimateyears,
      TRUE ~ age) %>% 
      ff_label("Age on admission (years)"),
    
    # Fixing following paeds work.
    # Remove negative ages. And where months specified and age > 2 y, these are an error and are adults.  
    age = case_when(
      age < 0 ~ NA_real_,
      age_estimateyearsu == "Months" & age > 2 ~ age * 12,
      TRUE ~ age
    ),
    
    age.factor = case_when(
      age < 50 ~ "<50",
      age < 70 ~ "50-69", 
      age < 80 ~ "70-79", 
      is.na(age) ~ NA_character_,
      TRUE ~ "80+") %>% 
      factor() %>% 
      ff_label("Age (years)")
  ) %>% 
  
  mutate_at(
    
    ## Continuous variables made numeric ---------------------------------------
    # This continues to need care.
    # Unfortunately database did not validate numeric entries, so these are messy and include units. 
    # Some continuous variables UNITS ARE NOT YET CORRECTED, see next section for those that are. 
    # Always check distributions with histograms and add corrections as we go.
    
    # 1. Remove all text, punctuation (except decimal places) and white space.
    # 2. Convert to numeric
    
    vars(temp_vsorres, hr_vsorres, rr_vsorres, 
         sysbp_vsorres, admission_diabp_vsorres, 
         oxy_vsorres, daily_fio2_lborres, daily_fio2b_lborres, daily_fio2c_lborres, daily_sao2_lborres,
         daily_pao2_lborres, daily_pco2_lborres, daily_ph_lborres, daily_hco3_lborres, daily_baseex_lborres, 
         daily_gcs_vsorres, 
         systolic_vsorres,  diastolic_vsorres, daily_meanart_vsorres, 
         daily_urine_lborres, 
         daily_hb_lborres, daily_wbc_lborres, daily_lymp_lborres,  daily_neutro_lborres, 
         daily_haematocrit_lborres, daily_plt_lborres, 
         daily_aptt_lborres, daily_pt_lborres, daily_inr_lborres, 
         daily_alt_lborres, daily_bil_lborres, daily_ast_lborres,
         daily_glucose_lborres, 
         daily_bun_lborres, daily_lactate_lborres, daily_ldh_lborres, 
         daily_creat_lborres, 
         daily_sodium_lborres, daily_potassium_lborres, daily_procal_lborres, daily_crp_lborres),
    ~as.character(.) %>% parse_number()) %>% 
  
  mutate(
    
    ## Units for continuous variables fixed here -------------------------
    # Potassium has issues, this deals with some. 
    daily_potassium_lborres = case_when(
      daily_potassium_lborres > 100 ~ NA_real_,
      daily_potassium_lborres > 12 ~ daily_potassium_lborres / 10,
      daily_potassium_lborres < 0 ~ abs(daily_potassium_lborres),
      TRUE ~ daily_potassium_lborres),
    
    # Hb
    # Ignore the units variable as people have unfortunately just got it wrong :(
    daily_hb_lborres = ifelse(daily_hb_lborres < 25, daily_hb_lborres * 10, daily_hb_lborres),
    
    # WBC
    # Units do not help here either. 
    # We couldn't be sure that those with WBC>100 were definitely factor of 10 wrong or leukaemia. 
    # Spent some time matching up lymph and neut counts, but thought easiest to exclude
    daily_wbc_lborres = ifelse(daily_wbc_lborres > 100, NA_real_, daily_wbc_lborres),
    
    # Neutrophils
    daily_neutro_lborres = ifelse(daily_neutro_lborres > 100, daily_neutro_lborres / 1000, 
                                  daily_neutro_lborres),
    
    
    # Lymphocytes needs looking at: most are x10^9, but some are x10^6
    daily_lymp_lborres = ifelse(daily_lymp_lborres > 100, daily_lymp_lborres / 1000, 
                                daily_lymp_lborres),
    
    # Platelets
    # Units don't help
    # Few very high have been left in as couldn't be sure not sepsis-related thrombocytosis
    
    # PT/INR
    # Some PTs are actually INRs
    daily_pt_lborres = ifelse(daily_pt_lborres < 9, daily_pt_lborres * 12, daily_pt_lborres),
    # No good way combining INR so consider using a threshold for abnormal
    # See below for new variable based on INR 1.0 = PT 12.0
    
    # Bilirubin
    # Don't use daily_bil_lborresu variable as looks incorrect for all daily_bil_lborres values
    
    # Urea
    # Urea values in different units can't be differentiated by eye. 
    # We changed urea values on basis of units, but wonder if the mg/dL unit has been used incorrectly
    # No pattern across hospitals for units being different. 
    # Decided to leave original values unchanged. 
    # daily_bun_lborres = ifelse(daily_bun_lborresu == "mg/dL", daily_bun_lborres * 2.8, 
    #                            daily_bun_lborres),
    
    # Creatinine
    # Ignore units variable, mg/dL values are not in the expected range for this unit. 
    # Some high values are left in on the presumption they may be correct. 
    
    # Glucose
    daily_glucose_lborres = ifelse(daily_glucose_lborres > 100, NA_real_, daily_glucose_lborres),
    
    # pO2
    daily_pao2_lborres = ifelse(daily_pao2_lborresu == "mmHg", daily_pao2_lborres / 7.5 , 
                                daily_pao2_lborres),
    
    # Lactate
    # Some very high numbers removed. Patient at 47 died and left in, presumed real.
    daily_lactate_lborres = ifelse(daily_lactate_lborres > 100, NA_real_, daily_lactate_lborres),
    
    
    # FiO2 - updated 17/08/2020
    # This may need looked at by hand. L/min have been included by the look of it. 
    daily_fio2_lborres = case_when(
      daily_fio2_lborres <= 1 ~ daily_fio2_lborres, # Presume FiO2
      daily_fio2_lborres <= 2 ~ 0.24,               # Presume these are all L/min
      daily_fio2_lborres <= 3 ~ 0.28,
      daily_fio2_lborres <= 4 ~ 0.32,
      daily_fio2_lborres <= 5 ~ 0.36,
      daily_fio2_lborres <= 6 ~ 0.40,
      daily_fio2_lborres <= 10 ~ 0.50,
      daily_fio2_lborres <= 15 ~ 0.70,
      daily_fio2_lborres > 15 ~ daily_fio2_lborres / 100, # Presume % rather than fraction
      TRUE ~ daily_fio2_lborres),
    
    # These should all be FiO2%
    daily_fio2b_lborres = case_when(
      daily_fio2b_lborres == 0 ~ 0,
      daily_fio2b_lborres <= 2 ~ 24,               # Presume everything <=15 is actually L/min
      daily_fio2b_lborres <= 3 ~ 28,
      daily_fio2b_lborres <= 4 ~ 32,
      daily_fio2b_lborres <= 5 ~ 36,
      daily_fio2b_lborres <= 6 ~ 40,
      daily_fio2b_lborres <= 10 ~ 50,
      daily_fio2b_lborres <= 15 ~ 70,
      TRUE ~ daily_fio2b_lborres),                   # Presume FiO2%
    
    # These should all be L/min
    daily_fio2c_lborres_converted = case_when(
      daily_fio2c_lborres == 0 ~ 0,
      daily_fio2c_lborres <= 2 ~ 0.24,               # Presume these are all L/min
      daily_fio2c_lborres <= 3 ~ 0.28,
      daily_fio2c_lborres <= 4 ~ 0.32,
      daily_fio2c_lborres <= 5 ~ 0.36,
      daily_fio2c_lborres <= 6 ~ 0.40,
      daily_fio2c_lborres <= 10 ~ 0.50,
      daily_fio2c_lborres <= 15 ~ 0.70,
      TRUE ~ daily_fio2c_lborres / 100),             # Presume FiO2%
    
    daily_fio2_combined = case_when(
      !is.na(daily_fio2_lborres) ~ daily_fio2_lborres,
      is.na(daily_fio2_lborres) & !is.na(daily_fio2b_lborres) ~ daily_fio2b_lborres / 100,
      is.na(daily_fio2_lborres) & !is.na(daily_fio2c_lborres) ~ daily_fio2c_lborres_converted),
    
    # Sa02
    daily_sao2_lborres = case_when(
      daily_sao2_lborres <= 1 ~ daily_sao2_lborres * 100, 
      daily_sao2_lborres <= 5 ~ NA_real_,
      daily_sao2_lborres <= 10 ~ daily_sao2_lborres * 10,
      daily_sao2_lborres <= 50 ~ NA_real_,
      daily_sao2_lborres > 500 ~ daily_sao2_lborres / 10,
      TRUE ~ daily_sao2_lborres),
    
    ## Checkbox recodes here ---------------------------------------------
    ethnicity = case_when(
      ethnic___1 == "Checked" ~ "Arab",
      ethnic___2 == "Checked" ~ 	"Black",
      ethnic___3 == "Checked" ~ 	"East Asian",
      ethnic___4 == "Checked" ~ 	"South Asian",
      ethnic___5 == "Checked" ~ 	"West Asian",
      ethnic___6 == "Checked" ~  "Latin American",
      ethnic___7 == "Checked" ~ 	"White",
      ethnic___8 == "Checked" ~ 	"Aboriginal/First Nations",
      ethnic___9 == "Checked" ~ 	"Other"
    ) %>% 
      factor() %>% 
      ff_label("Ethnicity")
  )


# Dataset and variable definitions 2 -----------------------------------------------------------
## Cleaning that may alter original data applied here
ccp_data = ccp_data %>% 
  mutate(
    
    # Fill in GCS with AVPU
    daily_gcs_vsorres = case_when(
      is.na(daily_gcs_vsorres) &
        avpu_vsorres == "Alert" ~ 15,
      is.na(daily_gcs_vsorres) &
        avpu_vsorres == "Verbal" ~ 12,
      is.na(daily_gcs_vsorres) &
        avpu_vsorres == "Pain" ~ 9,
      is.na(daily_gcs_vsorres) &
        avpu_vsorres == "Unresponsive" ~ 3,
      TRUE ~ daily_gcs_vsorres),
    
    # Collapse smoking to active smokers
    smoking_mhyn_2levels = fct_collapse(smoking_mhyn,
                                        "NO" = c("Never Smoked", "Former Smoker"),
                                        "YES" = "Yes",
                                        "N/K" = "N/K") %>% 
      factor() %>% 
      ff_label("Smoking"),
    
    daily_pt_lborres_add_inr = case_when(
      is.na(daily_pt_lborres) & !is.na(daily_inr_lborres) ~ (daily_inr_lborres * 12),
      TRUE ~ daily_pt_lborres) %>% 
      ff_label("PT")
  )


# Dataset and variable definitions 3 -------------------------------------------------------------
## Define the existence of ANY occurence across EVENTS
## Duplicates added TREATMENT object code
## Duplicates added OUTCOME object code
ccp_data = ccp_data %>% 
  group_by(subjid) %>%
  mutate(
    any_daily_hoterm = case_when(
      any(daily_hoterm == "Yes") ~ "Yes",
      any(daily_hoterm == "No")  ~ "No", 
      TRUE ~ NA_character_),
    any_daily_nasaloxy_cmtrt = case_when(
      any(daily_nasaloxy_cmtrt == "YES") ~ "Yes",
      any(daily_nasaloxy_cmtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    any_daily_noninvasive_prtrt = case_when(
      any(daily_noninvasive_prtrt == "YES") ~ "Yes",
      any(daily_noninvasive_prtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),                                   
    any_daily_invasive_prtrt = case_when(
      any(daily_invasive_prtrt == "YES") ~ "Yes",
      any(daily_invasive_prtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),                                   
    any_daily_fio2_21 = case_when(
      any(daily_fio2_combined > 0.211) ~ "Yes",
      any(daily_fio2_combined <= 0.211) ~ "No",
      TRUE ~ NA_character_),
    any_daily_fio2_28 = case_when(
      any(daily_fio2_combined > 0.281) ~ "Yes",
      any(daily_fio2_combined <= 0.281) ~ "No",
      TRUE ~ NA_character_),
    any_icu_hoterm = case_when(
      any(icu_hoterm == "Yes") ~ "Yes",
      any(icu_hoterm == "No")  ~ "No", 
      TRUE ~ NA_character_),
    any_oxygen_cmoccur = case_when(
      any(oxygen_cmoccur == "YES") ~ "Yes",
      any(oxygen_cmoccur == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    any_noninvasive_proccur = case_when(
      any(noninvasive_proccur == "YES") ~ "Yes",
      any(noninvasive_proccur == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    any_invasive_proccur = case_when(
      any(invasive_proccur == "YES") ~ "Yes",
      any(invasive_proccur == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    any_trach = case_when(
      any(daily_trach_prperf  == "YES") ~ "Yes",
      any(daily_trach_prperf  == "NO") ~ "No",
      TRUE ~ NA_character_), 
    any_icu = case_when(
      any_daily_hoterm  == "Yes" | any_icu_hoterm == "Yes" ~ "Yes",
      any_daily_hoterm  == "No" | any_icu_hoterm == "No" ~ "No",
      TRUE ~ NA_character_),
    any_oxygen = case_when(
      any_daily_nasaloxy_cmtrt  == "Yes" | any_oxygen_cmoccur == "Yes" | any_daily_fio2_21 == "Yes" ~ "Yes",
      any_daily_nasaloxy_cmtrt  == "No" | any_oxygen_cmoccur == "No" | any_daily_fio2_21 == "No" ~ "No",
      TRUE ~ NA_character_),
    any_noninvasive = case_when(
      any_daily_noninvasive_prtrt  == "Yes" | any_noninvasive_proccur == "Yes" ~ "Yes",
      any_daily_noninvasive_prtrt  == "No" | any_noninvasive_proccur == "No" ~ "No",
      TRUE ~ NA_character_),
    any_invasive = case_when(
      any_daily_invasive_prtrt  == "Yes" | any_invasive_proccur == "Yes" ~ "Yes",
      any_daily_invasive_prtrt  == "No" | any_invasive_proccur == "No" ~ "No",
      TRUE ~ NA_character_)
  ) %>% 
  mutate(
    status = case_when(
      any(dsterm == "Discharged alive") ~ "Discharged alive",
      any(dsterm == "Hospitalization") ~ "On-going care",
      any(dsterm == "Transfer to other facility") ~ "On-going care",
      any(dsterm == "Death")	 ~ "Died", 
      any(dsterm == "Palliative discharge") ~ "Died",
      any(dsterm == "Unknown") ~ NA_character_,
      # Only those with Discharge event are marked as "On-going care"
      all(is.na(dsterm)) & any(grepl("Discharge/Death", redcap_event_name)) ~ "On-going care")) %>% 
  ungroup() %>%
  # Make factor outwith group_by for speed
  mutate(
    any_daily_hoterm = factor(any_daily_hoterm),
    any_daily_nasaloxy_cmtrt = factor(any_daily_nasaloxy_cmtrt),
    any_daily_noninvasive_prtrt = factor(any_daily_noninvasive_prtrt),
    any_daily_invasive_prtrt = factor(any_daily_invasive_prtrt),
    any_daily_fio2_21 = factor(any_daily_fio2_21),
    any_daily_fio2_28 = factor(any_daily_fio2_28),
    any_icu_hoterm = factor(any_icu_hoterm),
    any_oxygen_cmoccur = factor(any_oxygen_cmoccur),
    any_noninvasive_proccur = factor(any_noninvasive_proccur),
    any_invasive_proccur = factor(any_invasive_proccur),
    any_trach = factor(any_trach),
    any_icu = factor(any_icu),
    any_oxygen = factor(any_oxygen),
    any_noninvasive = factor(any_noninvasive),
    any_invasive = factor(any_invasive),
    status = factor(status, levels = c(
      "Died", "On-going care", "Discharged alive"))
  ) %>%
  ff_relabel(vlabels)

# Topline is Day 1 data -----------------------------------------------------------------------------
topline = ccp_data %>% 
  filter(redcap_event_name == "Day 1 Hospital Admission (Arm 1: TIER 0)" | 
           redcap_event_name == "Day 1 Hospital&ICU Admission (Arm 2: TIER 1)" |
           redcap_event_name == "Day 1 (Arm 3: TIER 2)") %>% 
  filter(is.na(redcap_repeat_instrument)) %>%
  purrr::discard(~all(is.na(.))) %>% 
  ff_relabel_df(ccp_data)

# Define subsets --------------------------------------------------------------------------------
## These can be used via: filter(subjid %in% keep_14)
## Patients admitted >= 14 days ago. 
keep_14 = ccp_data %>% 
  mutate(keep = (Sys.Date() - hostdat) %>% # Difference between admission and current date
           as.numeric() %>% 
           {. >= 14}                       # keep = time_from_admission >=14
  ) %>% 
  drop_na(hostdat) %>%                     # Can't keep if hostdat missing, also drops >day 1 sheets
  filter(keep) %>% 
  pull(subjid)

# Patients admitted >= 14 days but <= 28 days
keep_14_28 = ccp_data %>% 
  mutate(keep = (Sys.Date() - hostdat) %>% 
           as.numeric() %>% 
           {. >= 14 & . <=28}) %>% 
  drop_na(hostdat) %>%                  
  filter(keep) %>% 
  pull(subjid)
