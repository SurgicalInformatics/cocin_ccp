# Alternative to ccp_data with all TREATMENT and OUTCOME variables -------------------------------------------------------------
## Defines the existence of ANY occurence across EVENTS
### Duplicates variables in TREATMENT and OUTCOME objects
ccp_data_with_summary_vars = ccp_data %>% 
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
      any(daily_fio2_combined > 0.21) ~ "Yes",
      any(daily_fio2_combined <= 0.21) ~ "No",
      TRUE ~ NA_character_),
    any_daily_fio2_28 = case_when(
      any(daily_fio2_combined > 0.28) ~ "Yes",
      any(daily_fio2_combined <= 0.28) ~ "No",
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

# Oneline combines Day 1 and Discharge data and includes summary variables  --------------------------------------------------------------------
## One line per patient
### Note: This filters out a very small number of patients who have no Day 1 or Discharge data entered, but do have data on an "Additional days" form
oneline = ccp_data_with_summary_vars %>%
  # Filter for Day 1 event data
  filter(
    redcap_event_name == "Day 1 Hospital Admission (Arm 1: TIER 0)" |
    redcap_event_name == "Day 1 Hospital&ICU Admission (Arm 2: TIER 1)" |
    redcap_event_name == "Day 1 (Arm 3: TIER 2)") %>%
  filter(is.na(redcap_repeat_instrument)) %>%
  purrr::discard( ~ all(is.na(.))) %>%
  # Join to Discharge event data
  full_join(
    ccp_data_with_summary_vars %>%
      # Filter for Discharge event data
      filter(
        redcap_event_name == "Discharge/Death (Arm 1: TIER 0)" |
        redcap_event_name == "Discharge/Death (Arm 2: TIER 1)" |
        redcap_event_name == "Discharge/Death (Arm 3: TIER 2)") %>%
      filter(is.na(redcap_repeat_instrument)) %>%
      purrr::discard(~ all(is.na(.))) %>%
      # Deselect variables to avoid duplicate columns when joining
      select(-c(
          # location data
          redcap_data_access_group_e:nhs_region,
          # summary treatment variables
          any_icu:status,
          # other duplicate variables
          dag_id, redcap_data_access_group, project, arm, arm_n)),
    by = c("subjid"),
    suffix = (c(".day1", ".disch"))) %>%
  select(-c(redcap_event_name.day1, redcap_event_name.disch))


rm(ccp_data_with_summary_vars)
