# Oneline combines Day 1 and Discharge data and includes summary variables  --------------------------------------------------------------------
## One line per patient
### Note: This filters out a very small number of patients who have no Day 1 or Discharge data entered, but do have data on an "Additional days" form
oneline = ccp_data %>%
  # Filter for Day 1 event data
  filter(
    redcap_event_name == "Day 1 Hospital Admission (Arm 1: TIER 0)" |
    redcap_event_name == "Day 1 Hospital&ICU Admission (Arm 2: TIER 1)" |
    redcap_event_name == "Day 1 (Arm 3: TIER 2)") %>%
  filter(is.na(redcap_repeat_instrument)) %>%
  purrr::discard( ~ all(is.na(.))) %>%
  # Join to Discharge event data
  full_join(
    ccp_data %>%
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
          any_daily_hoterm:status,
          # other duplicate variables
          dag_id, redcap_data_access_group, project, arm, arm_n)),
    by = c("subjid"),
    suffix = (c(".day1", ".disch"))) %>%
  select(-c(redcap_event_name.day1, redcap_event_name.disch))
