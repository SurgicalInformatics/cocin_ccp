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

# API pull
## The API call fail randomly due to traffic
## Try 5 times then stop
tries = 0
data_pull = NA

while (tries == 0 | (tries < 5 & inherits(data_pull, "try-error"))){
  data_pull = try(postForm(
    uri='https://ncov.medsci.ox.ac.uk/api/',
    token=Sys.getenv("ccp_token"),
    content='record',
    format='csv',
    type='flat',
    rawOrLabel='raw',
    rawOrLabelHeaders='raw',
    exportCheckboxLabel='false',
    exportSurveyFields='false',
    exportDataAccessGroups='true',
    returnFormat='json'
  ))
  tries = tries + 1
  # let's wait a second letting the API cool off
  Sys.sleep(1)
}
data = read_csv(data_pull, na = "", col_types = cols(.default = col_character())) %>% 
  type_convert()
#write_rds(data_pull, path = "data_pull_2020-06-29_1632.rds")


# Formating
source("CCPUKSARI_R_2020-06-26_1323.r")

# Out object and clean
ccp_data = data
rm(data, tries)
