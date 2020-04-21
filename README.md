COVID19 Clinical Information Network (CO-CIN) / ISARIC-4C data pull and preparation
==========

* [ISARIC COVID-19 Clincial Research Resources](https://isaric.tghn.org/covid-19-clinical-research-resources/)
* [ISARIC4C - Coronavirus Clinical Characterisation Consortium](https://isaric4c.net/)

These are scripts to pull and prepare data from the above REDCap database. This is an active project and scripts will change, so please always update to the latest version.

## Caution
### Data security

These are patient-level data that contain disclosive information. Only use in a secure environment and do not hold data on a removable device including laptops. 

### Always check the data

It is the end-users responsibility to understand the processes contained in these scripts, the assumptions that are used, and to check the data created conforms to their expectations. 

## Data structure

Obtain a copy of the REDCap CCP data dictionary for variable names and descriptions. A vector of quoted variable names is provided, `99_varnames.R`. 

### Arms
There are three arms: 

* Arm 1: Tier 0
* Arm 2: Tier 1
* Arm 3: Tier

If a patient ID occurs in more than one arm, then that is an error. 

### Events
Within arms are events.

* Tier 0: Day 1 hospital admission, Day 3, Day 6, Day 9, Additional days, Discharge/Death
* Tier 1: Day 1 hospital&ICU admission, Day 3, Day 6, Day 9, Additional days, Discharge/Death
* Tier 2: Day 1, Day 2 ... Day 14, Additional days, Discharge/Death

### Forms/instruments
Within each event are different forms. The most important are marked bold. 

* Day 1: **Demographics**, **Onset and Admission**, **Admission Signs and Symptoms**, **Comorbidities**, Pre-admission treatment, Pre-admission medication (repeating), Infectious Respiratory Disease Pathogen Testing (repeating), **Daily form**. 
* Day 2 to Day 14: **Daily form**, Infectious Respiratory Disease Pathogen Testing (repeating).
* Discharge/Death: **Daily form**, Infectious Respiratory Disease Pathogen Diagnosis, Infectious Respiratory Disease Pathogen Testing (repeating), **Treatment**, **Complications**, Study participation, **Outcome**, Core Additional Information.    

### Repeated forms within events vs repeating instruments

This is important. As can be seen above, the instrument is used across multiple events. For instance, the daily form is used in every day event. 

However, within events (days), form can also be repeating instruments. Meaning they can be used multiple times per event. 

In the final dataset, every event gets its own row, but every repeating instrument instance also gets its own row. This is easiest to see in the following example. The variable `redcap_repeat_instrument` is used for the two repeating instruments (pre-admission medication and infectious respiratory disease pathogen testing) and `redcap_repeat_instance` used for the repeat instrument number within each event. (subjid is not real)

``` r
   subjid    redcap_event_name               redcap_repeat_instrument         redcap_repeat_instance
   <chr>     <chr>                           <chr>                                             <dbl>
 1 7A7A1-01  Day 1 Hospital Admission (Arm … NA                                                   NA
 2 7A7A1-01  Day 3 (Arm 1: TIER 0)           NA                                                   NA
 3 7A7A1-01  Day 6 (Arm 1: TIER 0)           NA                                                   NA
 4 7A7A1-01  Day 9 (Arm 1: TIER 0)           NA                                                   NA
 5 7A7A1-01  Day 1 Hospital Admission (Arm … Infectious Respiratory Disease Pat…                   1
 6 7A7A1-02  Day 1 Hospital Admission (Arm … NA                                                   NA
 7 7A7A1-02  Day 3 (Arm 1: TIER 0)           NA                                                   NA
 8 7A7A1-02  Day 6 (Arm 1: TIER 0)           NA                                                   NA
 9 7A7A1-02  Discharge/Death (Arm 1: TIER 0) NA                                                   NA
10 7A1A1-02  Day 1 Hospital Admission (Arm … Pre-admission medication                              1
```

### Important
It should be apparent therefore that there are multiple rows of data per patient across multiple arms, events and repeating instruments. Care needs to be taken when aggregating data across events, i.e. has the patient been in ICU on any particular day.  

### Patient Identifcation Number
Participant Identification Number (PIN) specify CPMS Site code (hypen) four digit number patient number e.g Y0401-0001.

## Installation and use

### Install packages

```r
install.packages("tidyverse")
install.packages("RCurl")
install.packages("finalfit")
install.packages("knitr")
install.packages("flextable")
install.packages("kableExtra")
install.packages("usethis")
install.packages("Hmisc")
```

### Set environment variable with REDCap API token

Do not store the REDCap API token as plain text.

``` r
usethis::edit_r_environ()
# this opens up .Renviron, add your token, e.g. ccp_token = 2F3xxxxxxxxxxxxE0111
# Restart R
```

### Get scripts into a new RStudio project:

`New Project - Version Control - Git -` https://github.com/SurgicalInformatics/cocin_ccp as `Repository URL`

(Our use your preferred way of cloning/downloading from GitHub.)

## Scripts: purpose and output/return

### `00_source_all.R`

**Description**: Runs all current relevant scripts below. 

**Use**: `source("00_source_all.R")` 

**Output**: see individual scripts below. 

These are all run with the single command above. They can be run separately if desired (obvs, :) )

### `01_data_pull.R`

**Description**: API pull from Oxford REDCap server

**Use**: `source("01_data_pull.R")` 

1. API pull.
2. Try-catch x5 for API server errors.
3. Apply REDCap R formatitng, file edited.

**Output**: 

* `ccp_data` - fully labelled raw dataset containing all rows.

### `02_functions.R`

**Description**: Bespoke functions used in scripts.

**Use**: `source("02_functions.R")` 

1. ggplot templates / extraction functions.
2. Table defaults.
3. Prognostic score functions.

**Output**: various functions.

### `03_prep.R`

**Description**: Cleaning and preparation of variables. See file content with detailed comments. 

**Use**: `source("03_prep.R")` 

1. Labels extract.
2. Fix tier 1 day 1 repeating `daily form` error.
3. Remove patients with COVID-19 "no" in discharge event.
4. Clean continuous and discrete variables.
5. Demonstrate aggregation across events. 
6. Make day 1 flat data frame. 
7. Define subsets.

**Output**:

* `ccp_data` (data frame/tibble): cleaned stage 1
* `topline`(data frame/tibble): day 1, One patient per row
* definite_nosubjid (vector of `subjid`): Marked "no" for COVID-19
* keep_14 (vector of `subjid`): Patients admitted >=14 days from when function run. Use `filter(subjid %in% keep_14)` to filter for these patients only
* keep_14_28 (vector of `subjid`): Patients admitted >=14 days <=28 days from when function run
* vlabels: Variable label look-up table. Apply `finalfit::ff_relabel(vlabels)` to any tibble

### `04_prep_in_progress.R`

**Description**: Cleaning and preparation procedures that are still being developed and added to. See file content with detailed comments. It is the intention that this file is used in every extraction and it will always work. But it contains procedures or creates objects that are likely to be changed in the future.

**Use**: `source("04_prep_in_progress.R")` 

1. Make `treatment`object: aggregated treatments across daily forms.
2. Make `outcome` object: discharge/death form.
3. Add `death` outcome to `topline`. 
4. Make `surv_data`: time to event data for survival analyses.

**Output**: 

* `outcome` (data frame/tibble): Discharge/death data. One patient per row
* `topline` (data frame/tibble): Outcome data added. One patient per row
* `treatment` (data frame/tibble): Various treatment variables which are aggregated across events. One patient per row
* `surv_data` (data frame/tibble): `status` for death and `time` is symptom onset to event or censored time


