# ISARIC REDCap database analysis: PREP IN PROGRESS FILE
# Cleaning and preparation procedures which are used for working analyses but not finalised. 
# Some of the objects created here will be replaced or become obsolete over time
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

# Functions require library(tidyverse), requires() nor :: not currently written in.  

# ICU treatment from any daily form tibble ------------------------------------------------------------------------
# This is an example of collapsing across daily/treatment forms to a single yes or no
## Currently the denominator is the number of patients with either a yes or no
## Note any daily_ variable comes from daily form and 
## _hoterm/_proccur variables from final treatment form. 
## These take a minute or two to run as it iterates by patient.
treatment = ccp_data %>% 
  filter(redcap_repeat_instrument != "Infectious Respiratory Disease Pathogen Testing" | 
           is.na(redcap_repeat_instrument)) %>% 
  filter(redcap_repeat_instrument != "Pre-admission medication" |
           is.na(redcap_repeat_instrument)) %>% 
  group_by(subjid) %>% 
  summarise(
    daily_hoterm = case_when(
      any(daily_hoterm == "Yes") ~ "Yes",
      any(daily_hoterm == "No")  ~ "No", 
      TRUE ~ NA_character_),
    daily_nasaloxy_cmtrt = case_when(
      any(daily_nasaloxy_cmtrt == "YES") ~ "Yes",
      any(daily_nasaloxy_cmtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    daily_noninvasive_prtrt = case_when(
      any(daily_noninvasive_prtrt == "YES") ~ "Yes",
      any(daily_noninvasive_prtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),                                   
    daily_invasive_prtrt = case_when(
      any(daily_invasive_prtrt == "YES") ~ "Yes",
      any(daily_invasive_prtrt == "NO")  ~ "No", 
      TRUE ~ NA_character_),                                   
    
    daily_fio2_21 = case_when(
      any(daily_fio2_lborres > 0.21) ~ "Yes",
      any(daily_fio2_lborres <= 0.21) ~ "No",
      TRUE ~ NA_character_),
    
    daily_fio2_28 = case_when(
      any(daily_fio2_lborres > 0.28) ~ "Yes",
      any(daily_fio2_lborres <= 0.28) ~ "No",
      TRUE ~ NA_character_),
    
    icu_hoterm = case_when(
      any(icu_hoterm == "Yes") ~ "Yes",
      any(icu_hoterm == "No")  ~ "No", 
      TRUE ~ NA_character_),
    oxygen_cmoccur = case_when(
      any(oxygen_cmoccur == "YES") ~ "Yes",
      any(oxygen_cmoccur == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    noninvasive_proccur = case_when(
      any(noninvasive_proccur == "YES") ~ "Yes",
      any(noninvasive_proccur == "NO")  ~ "No", 
      TRUE ~ NA_character_),
    invasive_proccur = case_when(
      any(invasive_proccur == "YES") ~ "Yes",
      any(invasive_proccur == "NO")  ~ "No", 
      TRUE ~ NA_character_) %>% 
      factor(levels = c("Yes", "No")),
    any_icu = case_when(
      daily_hoterm  == "Yes" | icu_hoterm == "Yes" ~ "Yes",
      is.na(daily_hoterm) & is.na(icu_hoterm) ~ NA_character_,
      TRUE ~ "No"),
    any_oxygen = case_when(
      daily_nasaloxy_cmtrt  == "Yes" | oxygen_cmoccur == "Yes" ~ "Yes",
      is.na(daily_nasaloxy_cmtrt ) & is.na(oxygen_cmoccur) ~ NA_character_,
      TRUE ~ "No"),
    any_noninvasive = case_when(
      daily_noninvasive_prtrt  == "Yes" | noninvasive_proccur == "Yes" ~ "Yes",
      is.na(daily_noninvasive_prtrt) & is.na(noninvasive_proccur) ~ NA_character_,
      TRUE ~ "No"),
    any_invasive = case_when(
      daily_invasive_prtrt  == "Yes" | invasive_proccur == "Yes" ~ "Yes",
      is.na(daily_invasive_prtrt) & is.na(invasive_proccur) ~ NA_character_,
      TRUE ~ "No"),
    any_trach = case_when(
        any(daily_trach_prperf  == "YES") ~ "Yes",
        any(daily_trach_prperf  == "NO") ~ "No",
        TRUE ~ NA_character_),
    # Example continuous variable extraction
    age = median(age, na.rm = TRUE) # Trick to get single age entry out
  )


# Outcomes tibble --------------------------------------------------------------------------------------------
## Plan to replace this. 
outcome = ccp_data %>% 
  filter(redcap_event_name == "Discharge/Death (Arm 1: TIER 0)" |
           redcap_event_name == "Discharge/Death (Arm 2: TIER 1)" |
           redcap_event_name == "Discharge/Death (Arm 3: TIER 2)") %>% 
  filter(is.na(redcap_repeat_instrument)) %>% 
  mutate(
    status = case_when(
      dsterm == "Discharged alive" ~ "Discharged alive",
      dsterm == "Hospitalization" ~ "On-going care",
      dsterm == "Transfer to other facility" ~ "On-going care",
      dsterm == "Death"	 ~ "Died", 
      dsterm == "Palliative discharge" ~ "Died",
      dsterm == "Unknown" ~ NA_character_,
      is.na(dsterm) ~ "On-going care") %>%    # Note this line. need adjusted after some time has passed
      factor(levels = c("Died", "On-going care", "Discharged alive"))
  ) %>% 
  # Bring in variables from other events like this.
  select(-c(age, sex, any_icu, any_invasive)) %>% 
  left_join(topline %>% select(subjid, age, sex), by = "subjid") %>% 
  left_join(treatment %>% select(-age), by = "subjid")


# Add outcome to topline ---------------------------------------------------------------------------------
## If this adds extra rows to topline, it is because there are patient IDs duplicated across tiers in error. 
topline = topline %>% 
  select(-c(dsterm, dsstdtc)) %>% 
  left_join(outcome %>% select(subjid, dsterm, dsstdtc), by = "subjid") %>% 
  mutate(
    death = ifelse(dsterm == "Death" | dsterm == "Palliative discharge", "Yes", "No"),
    death = ifelse(dsterm == "Unknown", NA_character_, death) %>% 
      factor() %>% 
      ff_label("Death")
    
  ) %>% 
  ff_relabel_df(topline)


# Survival data object --------------------------------------------------------------------------------
## This duplicates what has been done else where but is needed currently for survival analysis 
## Needs a good look as assumptions with in it. 
surv_data = ccp_data %>% 
  filter(redcap_repeat_instrument != "Infectious Respiratory Disease Pathogen Testing" | 
           is.na(redcap_repeat_instrument)) %>% 
  filter(redcap_repeat_instrument != "Pre-admission medication" |
           is.na(redcap_repeat_instrument)) %>% 
  mutate(
    # Make daily form date the master: daily_dsstdat
    
    # If daily date missing and discharge date present for that day, use discharge
    # Above is superceded, just write discharge date to daily date for that day if present
    daily_dsstdat = case_when(
      #is.na(daily_dsstdat) &
      !is.na(dsstdtc) ~ dsstdtc,
      ## If daily date missing and admission date present for that day, use that 
      is.na(daily_dsstdat) &
        !is.na(hostdat) ~ hostdat,
      TRUE ~ daily_dsstdat),
    
    # # If onset of symptoms date missing, presume admission date - WATCH THIS FOR SENSITIVITY ANALYSIS
    cestdat = case_when(
      is.na(cestdat) &
        !is.na(hostdat) ~ hostdat,
      TRUE ~ cestdat),
    
    # Now copy onset date and admission date across forms
    ## Alternative to a join with topline
  ) %>% 
  group_by(subjid) %>% 
  mutate(
    hostdat = hostdat[1],
    cestdat = cestdat[1],
    sex = sex[1] # Remove this from here as not required anymore. Check. 
  ) %>%
  
  # Corrections introduced due to Additional days forms which were introduced
  # Order with subject. 
  # Bring those with discharge status to top.
  # Then reverse order by status date so most recent date for those with no discharge also at top
  # Then filter for first row in patient
  arrange(subjid, dsterm, desc(daily_dsstdat)) %>%
  
  filter(row_number() == 1) %>% 
  ungroup() %>% 
  
  # Now hostdat is copied through, use that if available but no other status date. 
  mutate(
    daily_dsstdat = case_when(
      is.na(daily_dsstdat) &
        !is.na(hostdat) ~ hostdat,
      TRUE ~ daily_dsstdat
    ),
    
    # To here then is a single row per patient onset, admission, and status date ->
    
    # Now make status using dsterm for CPH models. 
    status = case_when(
      dsterm == "Death" ~ 1,
      dsterm == "Palliative discharge" ~ 1,
      TRUE ~ 0),
    
    # Status when using competing risks
    status_crr = case_when(
      dsterm == "Death" ~ 1,
      dsterm == "Palliative discharge" ~ 1,
      dsterm == "Discharged alive" ~ 2, 
      dsterm == "Hospitalization" ~ 2, 
      dsterm == "Transfer to other facility" ~ 2,
      TRUE ~ 0),
    
    # And make status with missing for no one completed for logreg models. 
    mort = case_when(
      dsterm == "Death" ~ 1,
      dsterm == "Palliative discharge" ~ 1,
      dsterm == "Discharged alive" ~ 0, 
      dsterm == "Hospitalization" ~ 0,
      TRUE ~ NA_real_) %>% 
      factor(), 
    
    # Make time
    time = (daily_dsstdat - cestdat) %>% as.numeric(),
    
    # Need to think about competing risks given patients with good outcomes get censored early
    # For now don't censor discharges for duration of follow-up, equivalent immortal time in Fine and Gray
    time = case_when(
      dsterm == "Discharged alive" | 
        dsterm == "Hospitalization" |
        dsterm == "Transfer to other facility" ~ 90,
      TRUE ~ time),
    
    # Time for crr
    time_crr = (daily_dsstdat - cestdat) %>% as.numeric()
    
  ) %>% 
  
  # And then filter patients with no status date as nothing can be said. 
  filter(!is.na(time)) %>% 
  # And time = 0
  filter(time >= 0) 
# # Check
# select(subjid, cestdat, hostdat, daily_dsstdat, dsstdtc, dsterm, status, time) %>%
# data.frame()

# Take time to event data above and join to day 1 data to predict outcome from day 1 findings. 
## Note this does not include variable from other days.
surv_data = surv_data %>% 
  select(subjid, status, status_crr, time, time_crr, mort) %>% 
  left_join(topline, by = "subjid") %>% 
  ff_relabel(vlabels)
