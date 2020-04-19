# ISARIC REDCap database analysis: API pull
# API pull from Oxford REDCap server
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

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
data = NA

while (tries == 0 | (tries < 5 & inherits(data, "try-error"))){
  data = try(postForm(
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
data = read_csv(data, na = "", guess_max = 20000)

# Formating
source("CCPUKSARI_R_2020-03-04_1532.R")

# Out object and clean
ccp_data = data
rm(data)
