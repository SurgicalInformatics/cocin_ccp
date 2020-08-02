# ISARIC REDCap database analysis: API pull
# API pull from Oxford REDCap server
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

# To use this, set your REDCap API token as an environment variable.
## Uncomment and run the following line:
# usethis::edit_r_environ()
## this opens up .Renviron, add your token, e.g. ccp_token = 2F3xxxxxxxxxxxxE0111
## Restart R

# 1. API pull
# 2. Apply REDCap R formatitng, file edited.
# 3. Final object created: ccp_data

# Libraries
library(RCurl)
library(tidyverse)
library(REDCapR)

# Functions for safe api pull
rate = rate_backoff(max_times = 10)
insistent_postForm = purrr::insistently(postForm, rate)
insistent_redcap_read = purrr::insistently(redcap_read, rate)
batch = function(.vector, .n = 200){
  split(.vector, ceiling(seq_along(.vector)/.n))
}

# Get subjid
subjid = insistent_postForm(
  uri='https://ncov.medsci.ox.ac.uk/api/',
  token=Sys.getenv("ccp_token"),
  content='record',
  #report_id='297',
  'fields[0]'='subjid',
  format='csv',
  type='flat',
  rawOrLabel='raw',
  rawOrLabelHeaders='raw',
  exportCheckboxLabel='false',
  exportSurveyFields='false',
  exportDataAccessGroups='false',
  returnFormat='json'
) %>% 
  read_csv() %>% 
  distinct(subjid) %>% 
  pull(subjid)

# Get data in batches
data = batch(subjid) %>% 
  map_df(~ insistent_redcap_read(
    redcap_uri = "https://ncov.medsci.ox.ac.uk/api/",
    export_data_access_groups = TRUE,
    token = Sys.getenv("ccp_token"),
    records = .x,
    guess_type = FALSE)$data
  ) %>% 
  type_convert() %>% 
  as_tibble()

# Formating
source("CCPUKSARI_R_2020-06-26_1323.r")

# Out object and clean
ccp_data = data
rm(data, subjid, batch, rate, insistent_postform, insistent_redcap_read)
