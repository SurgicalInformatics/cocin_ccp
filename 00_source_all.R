# ISARIC REDCap database analysis: Source All
# This will source all files required to create data frames/tibbles
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

source("01_data_pull.R")
source("02_functions.R")
source("03_prep.R")
source("04_prep_in_progress.R")



# Suggestion for sparing the API:
# save.image(file = "00_source_all.RData")