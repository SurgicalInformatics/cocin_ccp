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

# API pull
## The API call can fail randomly due to traffic
## Try 5 times then stop
tries = 0
subjid = NA

while (tries == 0 | (tries < 5 & inherits(subjid, "try-error"))){
  subjid = try(postForm(
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
  ))
  tries = tries + 1
  # let's wait a second letting the API cool off
  Sys.sleep(1)
}

#subjid = read_rds("subjids_2020-07-24.rds")
subjid = read_csv(subjid) %>% 
  distinct(subjid)

# split into two pulls, 35k first, then the rest
subjid1 = subjid %>% 
  slice(1:20000) %>% 
  pull(subjid)

subjid2 = subjid %>% 
  slice(20001:40000) %>% 
  pull(subjid)

subjid3 = subjid %>% 
  slice(40001:60000) %>% 
  pull(subjid)

subjid4 = subjid %>% 
  slice(60001:n()) %>% 
  pull(subjid)

# using guess_type = FALSE so all columns get read in as characters
# otherwise batch1 and batch2 may end up with different column types
# will parse all once combined
batch1 = redcap_read(
  redcap_uri = "https://ncov.medsci.ox.ac.uk/api/",
  export_data_access_groups = TRUE,
  token = Sys.getenv("ccp_token"),
  records = subjid1,
  guess_type = FALSE
)$data

batch2 = redcap_read(
  redcap_uri = "https://ncov.medsci.ox.ac.uk/api/",
  export_data_access_groups = TRUE,
  token = Sys.getenv("ccp_token"),
  records = subjid2,
  guess_type = FALSE
)$data

batch3 = redcap_read(
  redcap_uri = "https://ncov.medsci.ox.ac.uk/api/",
  export_data_access_groups = TRUE,
  token = Sys.getenv("ccp_token"),
  records = subjid3,
  guess_type = FALSE
)$data

batch4 = redcap_read(
  redcap_uri = "https://ncov.medsci.ox.ac.uk/api/",
  export_data_access_groups = TRUE,
  token = Sys.getenv("ccp_token"),
  records = subjid4,
  guess_type = FALSE
)$data

data_pull = bind_rows(batch1, batch2, batch3, batch4)
data = type_convert(data_pull)
#write_rds(data_pull, path = "subjids_2020-07-24.rds")

rm(batch1, batch2, batch3, batch4, data_pull, subjid, subjid1, subjid2, subjid3, subjid4)
# Formating
source("CCPUKSARI_R_2020-06-26_1323.r")

# Out object and clean
ccp_data = data
rm(data, tries)
