# RP edited file from REDCap based EMH prevision changes - overwrite factors with factors. 


# Setting Factors (will NOT create new variable for factors)
# we've removed all namings
data$redcap_event_name = factor(data$redcap_event_name,levels=c("day_1_hospital_adm_arm_1","day_3_arm_1","day_6_arm_1","day_9_arm_1","additional_days_arm_1","dischargedeath_arm_1","day_1_hospitalicu_arm_2","day_3_arm_2","day_6_arm_2","day_9_arm_2","additional_days_arm_2","dischargedeath_arm_2","initial_follow_up_arm_2","day_1_arm_3","day_2_arm_3","day_3_arm_3","day_4_arm_3","day_5_arm_3","day_6_arm_3","day_7_arm_3","day_8_arm_3","day_9_arm_3","day_10_arm_3","day_11_arm_3","day_12_arm_3","day_13_arm_3","day_14_arm_3","additional_days_arm_3","dischargedeath_arm_3","initial_follow_up_arm_3"))
data$redcap_repeat_instrument = factor(data$redcap_repeat_instrument,levels=c("preadmission_medication","infectious_respiratory_disease_pathogen_testing","daily_form"))
data$participant_identification_number_pin_complete = factor(data$participant_identification_number_pin_complete,levels=c("0","1","2"))
data$tiers_faorres___1 = factor(data$tiers_faorres___1,levels=c("0","1"))
data$tiers_faorres___2 = factor(data$tiers_faorres___2,levels=c("0","1"))
data$tiers_faorres___3 = factor(data$tiers_faorres___3,levels=c("0","1"))
data$tiers_consent_complete = factor(data$tiers_consent_complete,levels=c("0","1","2"))
data$covid19_new = factor(data$covid19_new,levels=c("1"))
data$version_9_7 = factor(data$version_9_7,levels=c("1"))
data$ni_site = factor(data$ni_site,levels=c("1"))
data$corona_ieorres = factor(data$corona_ieorres,levels=c("1","0"))
data$coriona_ieorres2 = factor(data$coriona_ieorres2,levels=c("1","0"))
data$coriona_ieorres3 = factor(data$coriona_ieorres3,levels=c("1","0"))
data$fever = factor(data$fever,levels=c("1","0"))
data$cough = factor(data$cough,levels=c("1","0"))
data$dyspnoe = factor(data$dyspnoe,levels=c("1","0"))
data$ari = factor(data$ari,levels=c("1","0"))
data$inflammatory_mss = factor(data$inflammatory_mss,levels=c("1","0"))
data$symptoms_epi_travel = factor(data$symptoms_epi_travel,levels=c("1","2","3"))
data$symptoms_epi_physical = factor(data$symptoms_epi_physical,levels=c("1","2","3"))
data$symptoms_epi_healthfac = factor(data$symptoms_epi_healthfac,levels=c("1","2","3"))
data$symptoms_epi_lab = factor(data$symptoms_epi_lab,levels=c("1","2","3"))
data$symptoms_epi_pathogen = factor(data$symptoms_epi_pathogen,levels=c("1","2","3"))
data$symptoms_epi_animal = factor(data$symptoms_epi_animal,levels=c("1","2","3"))
data$inclusion_criteria_complete = factor(data$inclusion_criteria_complete,levels=c("0","1","2"))
data$sex = factor(data$sex,levels=c("1","2","3"))
data$agedatyn = factor(data$agedatyn,levels=c("1","0"))
data$age_estimateyearsu = factor(data$age_estimateyearsu,levels=c("1","2"))
data$ethnic___1 = factor(data$ethnic___1,levels=c("0","1"))
data$ethnic___2 = factor(data$ethnic___2,levels=c("0","1"))
data$ethnic___3 = factor(data$ethnic___3,levels=c("0","1"))
data$ethnic___4 = factor(data$ethnic___4,levels=c("0","1"))
data$ethnic___5 = factor(data$ethnic___5,levels=c("0","1"))
data$ethnic___6 = factor(data$ethnic___6,levels=c("0","1"))
data$ethnic___7 = factor(data$ethnic___7,levels=c("0","1"))
data$ethnic___8 = factor(data$ethnic___8,levels=c("0","1"))
data$ethnic___9 = factor(data$ethnic___9,levels=c("0","1"))
data$ethnic___10 = factor(data$ethnic___10,levels=c("0","1"))
data$healthwork_erterm = factor(data$healthwork_erterm,levels=c("1","2","3"))
data$labwork_erterm = factor(data$labwork_erterm,levels=c("1","2","3"))
data$pregyn_rptestcd = factor(data$pregyn_rptestcd,levels=c("1","0","998","999"))
data$postpart_rptestcd = factor(data$postpart_rptestcd,levels=c("1","0","3"))
data$pregout_rptestcd = factor(data$pregout_rptestcd,levels=c("1","2"))
data$aplb_lbperf = factor(data$aplb_lbperf,levels=c("1","2","3"))
data$aplb_lborres = factor(data$aplb_lborres,levels=c("1","2"))
data$aplb_lbmethod = factor(data$aplb_lbmethod,levels=c("1","2"))
data$apdm_age = factor(data$apdm_age,levels=c("1","0"))
data$apvs_weightu = factor(data$apvs_weightu,levels=c("1","2"))
data$apvs_weightnk = factor(data$apvs_weightnk,levels=c("1"))
data$apsc_gestout = factor(data$apsc_gestout,levels=c("1","2","3"))
data$apsc_brfedind = factor(data$apsc_brfedind,levels=c("1","2","3"))
data$apsc_brfedindy = factor(data$apsc_brfedindy,levels=c("1","2","3"))
data$apsc_dvageind = factor(data$apsc_dvageind,levels=c("1","2","3"))
data$apsc_vcageind = factor(data$apsc_vcageind,levels=c("1","2","3","4"))
data$covid19_vaccine = factor(data$covid19_vaccine,levels=c("1","0","3"))
data$vaccine_covid_trial = factor(data$vaccine_covid_trial,levels=c("1","0","3"))
data$influenza_2021_vaccine = factor(data$influenza_2021_vaccine,levels=c("1","0","3"))
data$demographics_complete = factor(data$demographics_complete,levels=c("0","1","2"))
data$asymptomatic = factor(data$asymptomatic,levels=c("1"))
data$readm_cov19 = factor(data$readm_cov19,levels=c("1","0","3"))
data$prev_subjid_nk = factor(data$prev_subjid_nk,levels=c("1"))
data$readminreasnk = factor(data$readminreasnk,levels=c("1"))
data$susp_reinf = factor(data$susp_reinf,levels=c("1","0","3"))
data$surgefacil = factor(data$surgefacil,levels=c("1","0","3"))
data$hooccur = factor(data$hooccur,levels=c("1","2","3","4"))
data$siteid_transfernk = factor(data$siteid_transfernk,levels=c("1"))
data$hostdat_transfernk = factor(data$hostdat_transfernk,levels=c("1"))
data$subjidcat_transfer = factor(data$subjidcat_transfer,levels=c("1","2","3"))
data$travel_erterm = factor(data$travel_erterm,levels=c("1","2","3"))
data$supper_trcntry = factor(data$supper_trcntry,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","1","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","2","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","3","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","202","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","201","193","194","195","196","197","198","199","200"))
data$travel_erterm_2 = factor(data$travel_erterm_2,levels=c("1","2","3"))
data$supper_trcntry_2 = factor(data$supper_trcntry_2,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","1","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","2","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","3","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","202","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","201","193","194","195","196","197","198","199","200"))
data$animal_eryn = factor(data$animal_eryn,levels=c("1","2","3","4"))
data$animal_eryn_2 = factor(data$animal_eryn_2,levels=c("1","2","3","4"))
data$onset_and_admission_complete = factor(data$onset_and_admission_complete,levels=c("0","1","2"))
data$temp_vsyn = factor(data$temp_vsyn,levels=c("1","0"))
data$temp_vsorresu = factor(data$temp_vsorresu,levels=c("1","2"))
data$hr_vsyn = factor(data$hr_vsyn,levels=c("1","0"))
data$rr_vsyn = factor(data$rr_vsyn,levels=c("1","0"))
data$sysbp_vsyn = factor(data$sysbp_vsyn,levels=c("1","0"))
data$diabp_vsyn = factor(data$diabp_vsyn,levels=c("1","0"))
data$dehydration_vsorres = factor(data$dehydration_vsorres,levels=c("1","2","3"))
data$stercap_vsyn = factor(data$stercap_vsyn,levels=c("1","0"))
data$stercap_vsorres = factor(data$stercap_vsorres,levels=c("1","2","3"))
data$oxy_vsyn = factor(data$oxy_vsyn,levels=c("1","0"))
data$oxy_vsorresu = factor(data$oxy_vsorresu,levels=c("1","2","3"))
data$fever_ceoccur_v2 = factor(data$fever_ceoccur_v2,levels=c("1","2","3"))
data$cough_ceoccur_v2 = factor(data$cough_ceoccur_v2,levels=c("1","2","3"))
data$coughsput_ceoccur_v2 = factor(data$coughsput_ceoccur_v2,levels=c("1","2","3"))
data$coughhb_ceoccur_v2 = factor(data$coughhb_ceoccur_v2,levels=c("1","2","3"))
data$sorethroat_ceoccur_v2 = factor(data$sorethroat_ceoccur_v2,levels=c("1","2","3"))
data$runnynose_ceoccur_v2 = factor(data$runnynose_ceoccur_v2,levels=c("1","2","3"))
data$earpain_ceoccur_v2 = factor(data$earpain_ceoccur_v2,levels=c("1","2","3"))
data$wheeze_ceoccur_v2 = factor(data$wheeze_ceoccur_v2,levels=c("1","2","3"))
data$chestpain_ceoccur_v2 = factor(data$chestpain_ceoccur_v2,levels=c("1","2","3"))
data$myalgia_ceoccur_v2 = factor(data$myalgia_ceoccur_v2,levels=c("1","2","3"))
data$jointpain_ceoccur_v2 = factor(data$jointpain_ceoccur_v2,levels=c("1","2","3"))
data$fatigue_ceoccur_v2 = factor(data$fatigue_ceoccur_v2,levels=c("1","2","3"))
data$shortbreath_ceoccur_v2 = factor(data$shortbreath_ceoccur_v2,levels=c("1","2","3"))
data$ageusia_ceoccur_v2 = factor(data$ageusia_ceoccur_v2,levels=c("1","2","3"))
data$lowerchest_ceoccur_v2 = factor(data$lowerchest_ceoccur_v2,levels=c("1","2","3"))
data$headache_ceoccur_v2 = factor(data$headache_ceoccur_v2,levels=c("1","2","3"))
data$confusion_ceoccur_v2 = factor(data$confusion_ceoccur_v2,levels=c("1","2","3"))
data$seizures_cecoccur_v2 = factor(data$seizures_cecoccur_v2,levels=c("1","2","3"))
data$abdopain_ceoccur_v2 = factor(data$abdopain_ceoccur_v2,levels=c("1","2","3"))
data$vomit_ceoccur_v2 = factor(data$vomit_ceoccur_v2,levels=c("1","2","3"))
data$diarrhoea_ceoccur_v2 = factor(data$diarrhoea_ceoccur_v2,levels=c("1","2","3"))
data$conjunct_ceoccur_v2 = factor(data$conjunct_ceoccur_v2,levels=c("1","2","3"))
data$rash_ceoccur_v2 = factor(data$rash_ceoccur_v2,levels=c("1","2","3"))
data$skinulcers_ceoccur_v2 = factor(data$skinulcers_ceoccur_v2,levels=c("1","2","3"))
data$lymp_ceoccur_v2 = factor(data$lymp_ceoccur_v2,levels=c("1","2","3"))
data$bleed_ceoccur_v2 = factor(data$bleed_ceoccur_v2,levels=c("1","2","3"))
data$bleed_ceterm_v2 = factor(data$bleed_ceterm_v2,levels=c("1","2","3"))
data$anosmia_ceoccur_v2 = factor(data$anosmia_ceoccur_v2,levels=c("1","2","3"))
data$no_symptoms = factor(data$no_symptoms,levels=c("1","2","3"))
data$admission_signs_and_symptoms_complete = factor(data$admission_signs_and_symptoms_complete,levels=c("0","1","2"))
data$chrincard = factor(data$chrincard,levels=c("1","2","3"))
data$hypertension_mhyn = factor(data$hypertension_mhyn,levels=c("1","2","3"))
data$chronicpul_mhyn = factor(data$chronicpul_mhyn,levels=c("1","2","3"))
data$asthma_mhyn = factor(data$asthma_mhyn,levels=c("1","0","2"))
data$renal_mhyn = factor(data$renal_mhyn,levels=c("1","2","3"))
data$modliv = factor(data$modliv,levels=c("1","0","2"))
data$mildliver = factor(data$mildliver,levels=c("1","0","2"))
data$chronicneu_mhyn = factor(data$chronicneu_mhyn,levels=c("1","2","3"))
data$malignantneo_mhyn = factor(data$malignantneo_mhyn,levels=c("1","2","3"))
data$chronichaemo_mhyn = factor(data$chronichaemo_mhyn,levels=c("1","2","3"))
data$aidshiv_mhyn = factor(data$aidshiv_mhyn,levels=c("1","2","3"))
data$obesity_mhyn = factor(data$obesity_mhyn,levels=c("1","2","3"))
data$diabetes_type_mhyn = factor(data$diabetes_type_mhyn,levels=c("0","1","2","3"))
data$diabetescom_mhyn = factor(data$diabetescom_mhyn,levels=c("1","2","3"))
data$diabetes_mhyn = factor(data$diabetes_mhyn,levels=c("1","2","3"))
data$rheumatologic_mhyn = factor(data$rheumatologic_mhyn,levels=c("1","2","3"))
data$dementia_mhyn = factor(data$dementia_mhyn,levels=c("1","2","3"))
data$malnutrition_mhyn = factor(data$malnutrition_mhyn,levels=c("1","2","3"))
data$smoking_mhyn = factor(data$smoking_mhyn,levels=c("1","2","3","4"))
data$other_mhyn = factor(data$other_mhyn,levels=c("1","2","3"))
data$vulnerable_transplant = factor(data$vulnerable_transplant,levels=c("1","2","3"))
data$vulnerable_cancers = factor(data$vulnerable_cancers,levels=c("1","2","3"))
data$vulnerable_copd = factor(data$vulnerable_copd,levels=c("1","2","3"))
data$vulnerable_scid = factor(data$vulnerable_scid,levels=c("1","2","3"))
data$vulnerable_immuno = factor(data$vulnerable_immuno,levels=c("1","2","3"))
data$vulnerable_preg = factor(data$vulnerable_preg,levels=c("1","2","3"))
data$comorbidities_complete = factor(data$comorbidities_complete,levels=c("0","1","2"))
data$immno_cmtrt = factor(data$immno_cmtrt,levels=c("1","2","3"))
data$infect_cmtrt = factor(data$infect_cmtrt,levels=c("1","2","3"))
data$chronic_ace_cmoccur = factor(data$chronic_ace_cmoccur,levels=c("1","2","3"))
data$chronic_arb_cmoccur = factor(data$chronic_arb_cmoccur,levels=c("1","2","3"))
data$chronic_nsaid_cmoccur = factor(data$chronic_nsaid_cmoccur,levels=c("1","2","3"))
data$clinical_frailty = factor(data$clinical_frailty,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$preadmission_treatment_complete = factor(data$preadmission_treatment_complete,levels=c("0","1","2"))
data$no_medication = factor(data$no_medication,levels=c("1"))
data$cmdose_unit = factor(data$cmdose_unit,levels=c("1","2","3","4","5","99"))
data$cmdosfrq = factor(data$cmdosfrq,levels=c("1","2","3","4","5","6","7","8","9","10","11","99"))
data$cmroute = factor(data$cmroute,levels=c("1","2","3","4","5"))
data$preadmission_medication_complete = factor(data$preadmission_medication_complete,levels=c("0","1","2"))
data$reinf_pcr = factor(data$reinf_pcr,levels=c("1","0","3"))
data$reinf_antigen = factor(data$reinf_antigen,levels=c("1","0","3"))
data$reinf_serology = factor(data$reinf_serology,levels=c("1","0","3"))
data$reinf_asymptomatic = factor(data$reinf_asymptomatic,levels=c("1"))
data$fever_ceoccur_v3 = factor(data$fever_ceoccur_v3,levels=c("1","2","3"))
data$cough_ceoccur_v3 = factor(data$cough_ceoccur_v3,levels=c("1","2","3"))
data$coughsput_ceoccur_v3 = factor(data$coughsput_ceoccur_v3,levels=c("1","2","3"))
data$coughhb_ceoccur_v3 = factor(data$coughhb_ceoccur_v3,levels=c("1","2","3"))
data$sorethroat_ceoccur_v3 = factor(data$sorethroat_ceoccur_v3,levels=c("1","2","3"))
data$runnynose_ceoccur_v3 = factor(data$runnynose_ceoccur_v3,levels=c("1","2","3"))
data$earpain_ceoccur_v3 = factor(data$earpain_ceoccur_v3,levels=c("1","2","3"))
data$wheeze_ceoccur_v3 = factor(data$wheeze_ceoccur_v3,levels=c("1","2","3"))
data$chestpain_ceoccur_v3 = factor(data$chestpain_ceoccur_v3,levels=c("1","2","3"))
data$myalgia_ceoccur_v3 = factor(data$myalgia_ceoccur_v3,levels=c("1","2","3"))
data$jointpain_ceoccur_v3 = factor(data$jointpain_ceoccur_v3,levels=c("1","2","3"))
data$fatigue_ceoccur_v3 = factor(data$fatigue_ceoccur_v3,levels=c("1","2","3"))
data$shortbreath_ceoccur_v3 = factor(data$shortbreath_ceoccur_v3,levels=c("1","2","3"))
data$ageusia_ceoccur_v3 = factor(data$ageusia_ceoccur_v3,levels=c("1","2","3"))
data$lowerchest_ceoccur_v3 = factor(data$lowerchest_ceoccur_v3,levels=c("1","2","3"))
data$headache_ceoccur_v3 = factor(data$headache_ceoccur_v3,levels=c("1","2","3"))
data$confusion_ceoccur_v3 = factor(data$confusion_ceoccur_v3,levels=c("1","2","3"))
data$seizures_cecoccur_v3 = factor(data$seizures_cecoccur_v3,levels=c("1","2","3"))
data$abdopain_ceoccur_v3 = factor(data$abdopain_ceoccur_v3,levels=c("1","2","3"))
data$vomit_ceoccur_v3 = factor(data$vomit_ceoccur_v3,levels=c("1","2","3"))
data$diarrhoea_ceoccur_v3 = factor(data$diarrhoea_ceoccur_v3,levels=c("1","2","3"))
data$conjunct_ceoccur_v3 = factor(data$conjunct_ceoccur_v3,levels=c("1","2","3"))
data$rash_ceoccur_v3 = factor(data$rash_ceoccur_v3,levels=c("1","2","3"))
data$skinulcers_ceoccur_v3 = factor(data$skinulcers_ceoccur_v3,levels=c("1","2","3"))
data$lymp_ceoccur_v3 = factor(data$lymp_ceoccur_v3,levels=c("1","2","3"))
data$bleed_ceoccur_v3 = factor(data$bleed_ceoccur_v3,levels=c("1","2","3"))
data$anosmia_ceoccur_v3 = factor(data$anosmia_ceoccur_v3,levels=c("1","2","3"))
data$no_symptoms_v3 = factor(data$no_symptoms_v3,levels=c("1","2","3"))
data$reinf_pre_adm_hosp = factor(data$reinf_pre_adm_hosp,levels=c("1","2","3"))
data$reinf_pre_oxygen = factor(data$reinf_pre_oxygen,levels=c("1","2","3"))
data$reinf_pre_hdu_icu = factor(data$reinf_pre_hdu_icu,levels=c("1","2","3"))
data$reinf_pre_inv_vent = factor(data$reinf_pre_inv_vent,levels=c("1","2","3"))
data$reinf_pre_ecmo = factor(data$reinf_pre_ecmo,levels=c("1","2","3"))
data$reinf_pre_dexameth = factor(data$reinf_pre_dexameth,levels=c("1","2","3"))
data$reinf_pre_steroid = factor(data$reinf_pre_steroid,levels=c("1","2","3"))
data$reinf_pre_tociliz = factor(data$reinf_pre_tociliz,levels=c("1","2","3"))
data$reinf_pre_remdesivir = factor(data$reinf_pre_remdesivir,levels=c("1","2","3"))
data$reinf_pre_conv_plasma = factor(data$reinf_pre_conv_plasma,levels=c("1","2","3"))
data$reinf_pre_lopin_riton = factor(data$reinf_pre_lopin_riton,levels=c("1","2","3"))
data$reinf_pre_interferon = factor(data$reinf_pre_interferon,levels=c("1","2","3"))
data$reinf_pre_chloro_hchlo = factor(data$reinf_pre_chloro_hchlo,levels=c("1","2","3"))
data$reinfection_form_complete = factor(data$reinfection_form_complete,levels=c("0","1","2"))
data$daily_hoterm = factor(data$daily_hoterm,levels=c("1","2","3"))
data$daily_temp_vsorresu = factor(data$daily_temp_vsorresu,levels=c("1","2"))
data$daily_temp_vsorresnk = factor(data$daily_temp_vsorresnk,levels=c("1"))
data$daily_fi02_lbyn = factor(data$daily_fi02_lbyn,levels=c("1","2","3"))
data$daily_sa02_lbyn = factor(data$daily_sa02_lbyn,levels=c("1","2","3"))
data$daily_pao2_lbyn = factor(data$daily_pao2_lbyn,levels=c("1","0"))
data$daily_pao2_lborresu = factor(data$daily_pao2_lborresu,levels=c("1","2"))
data$daily_pao2_lbspec = factor(data$daily_pao2_lbspec,levels=c("1","2","3","4"))
data$daily_pco2_lbyn = factor(data$daily_pco2_lbyn,levels=c("1","2"))
data$daily_pco2_lborresu = factor(data$daily_pco2_lborresu,levels=c("1","2"))
data$daily_ph_lbyn = factor(data$daily_ph_lbyn,levels=c("1","0"))
data$daily_hco3_lbyn = factor(data$daily_hco3_lbyn,levels=c("1","0"))
data$daily_hco3_lborresu = factor(data$daily_hco3_lborresu,levels=c("1","2"))
data$daily_baseex_lbyn = factor(data$daily_baseex_lbyn,levels=c("1","0"))
data$avpu_vsorres = factor(data$avpu_vsorres,levels=c("1","2","3","4","5"))
data$daily_gcs_lbyn = factor(data$daily_gcs_lbyn,levels=c("1","0","3"))
data$systolic_vsyn = factor(data$systolic_vsyn,levels=c("1","0"))
data$diastolic_vsyn = factor(data$diastolic_vsyn,levels=c("1","0"))
data$daily_meanart_lbyn = factor(data$daily_meanart_lbyn,levels=c("1","0"))
data$daily_urine_lbyn = factor(data$daily_urine_lbyn,levels=c("1","2","0"))
data$daily_noninvasive_prtrt = factor(data$daily_noninvasive_prtrt,levels=c("1","2","3"))
data$daily_invasive_prtrt = factor(data$daily_invasive_prtrt,levels=c("1","2","3"))
data$daily_nasaloxy_cmtrt = factor(data$daily_nasaloxy_cmtrt,levels=c("1","2","3"))
data$daily_ecmo_prtrt = factor(data$daily_ecmo_prtrt,levels=c("1","2","3"))
data$daily_rrt_cmtrt = factor(data$daily_rrt_cmtrt,levels=c("1","2","3"))
data$daily_inotrope_cmyn = factor(data$daily_inotrope_cmyn,levels=c("1","2","3"))
data$daily_dopless5_cmtrt = factor(data$daily_dopless5_cmtrt,levels=c("1","2","3"))
data$daily_dop5to15_cmtrt = factor(data$daily_dop5to15_cmtrt,levels=c("1","2","3"))
data$daily_dopgr15_cmtrt = factor(data$daily_dopgr15_cmtrt,levels=c("1","2","3"))
data$daily_neuro_cmtrt = factor(data$daily_neuro_cmtrt,levels=c("1","2","3"))
data$daily_nitritc_cmtrt = factor(data$daily_nitritc_cmtrt,levels=c("1","2","3"))
data$daily_prone_cmtrt = factor(data$daily_prone_cmtrt,levels=c("1","2","3"))
data$daily_trach_prperf = factor(data$daily_trach_prperf,levels=c("1","2","3"))
data$daily_prperf = factor(data$daily_prperf,levels=c("1","2","3"))
data$remdesivir = factor(data$remdesivir,levels=c("1","0","2"))
data$remdesivir_last_dose = factor(data$remdesivir_last_dose,levels=c("1","0","2"))
data$daily_lbperf = factor(data$daily_lbperf,levels=c("1","0"))
data$daily_hb_lbyn = factor(data$daily_hb_lbyn,levels=c("1","0","3"))
data$daily_hbop_lborres = factor(data$daily_hbop_lborres,levels=c("1","2"))
data$daily_hb_lborresu = factor(data$daily_hb_lborresu,levels=c("1","2"))
data$daily_wbc_lbyn = factor(data$daily_wbc_lbyn,levels=c("1","0","3"))
data$daily_wbcop_lborres = factor(data$daily_wbcop_lborres,levels=c("1","2"))
data$daily_wbc_lborresu = factor(data$daily_wbc_lborresu,levels=c("1","2"))
data$daily_lymp_lbyn = factor(data$daily_lymp_lbyn,levels=c("1","0","3"))
data$daily_lympop_lbyn = factor(data$daily_lympop_lbyn,levels=c("1","2"))
data$daily_lymp_lborresu = factor(data$daily_lymp_lborresu,levels=c("1","2","3"))
data$daily_neutro_lbyn = factor(data$daily_neutro_lbyn,levels=c("1","0","3"))
data$daily_neutroop_lbyn = factor(data$daily_neutroop_lbyn,levels=c("1","2"))
data$daily_neutro_lborresu = factor(data$daily_neutro_lborresu,levels=c("1","2","3"))
data$daily_haematocrit_lbyn = factor(data$daily_haematocrit_lbyn,levels=c("1","0"))
data$daily_haematocrit_lborresu = factor(data$daily_haematocrit_lborresu,levels=c("1","2"))
data$daily_plt_lbyn = factor(data$daily_plt_lbyn,levels=c("1","0","3"))
data$daily_pltop_lborres = factor(data$daily_pltop_lborres,levels=c("1","2"))
data$daily_plt_lborresu = factor(data$daily_plt_lborresu,levels=c("1","2"))
data$daily_aptt_lbyn = factor(data$daily_aptt_lbyn,levels=c("1","0","3"))
data$daily_apttop_lborres = factor(data$daily_apttop_lborres,levels=c("1","2"))
data$daily_pt_inr_lbyn = factor(data$daily_pt_inr_lbyn,levels=c("1","2","3","4"))
data$daily_ptop_lborres = factor(data$daily_ptop_lborres,levels=c("1","2"))
data$daily_inrop_lborres = factor(data$daily_inrop_lborres,levels=c("1","2"))
data$daily_esr_lbyn = factor(data$daily_esr_lbyn,levels=c("1","0","3"))
data$daily_esrop_lbyn = factor(data$daily_esrop_lbyn,levels=c("1","2"))
data$daily_ferr_lbyn = factor(data$daily_ferr_lbyn,levels=c("1","0","3"))
data$daily_ferrop_lbyn = factor(data$daily_ferrop_lbyn,levels=c("1","2"))
data$daily_ferr_lborresu = factor(data$daily_ferr_lborresu,levels=c("1","2"))
data$daily_alt_lbyn = factor(data$daily_alt_lbyn,levels=c("1","0","3"))
data$daily_altop_lbyn = factor(data$daily_altop_lbyn,levels=c("1","2"))
data$daily_bil_lbyn = factor(data$daily_bil_lbyn,levels=c("1","0","3"))
data$daily_bilop_lborres = factor(data$daily_bilop_lborres,levels=c("1","2"))
data$daily_bil_lborresu = factor(data$daily_bil_lborresu,levels=c("1","2"))
data$daily_ast_lbyn = factor(data$daily_ast_lbyn,levels=c("1","0","3"))
data$daily_astop_lborres = factor(data$daily_astop_lborres,levels=c("1","2"))
data$daily_glucose_lbyn = factor(data$daily_glucose_lbyn,levels=c("1","0","3"))
data$daily_glucoseop_lborres = factor(data$daily_glucoseop_lborres,levels=c("1","2"))
data$daily_glucose_lborresu = factor(data$daily_glucose_lborresu,levels=c("1","2"))
data$daily_bun_lbyn = factor(data$daily_bun_lbyn,levels=c("1","0","3"))
data$daily_bunop_lborres = factor(data$daily_bunop_lborres,levels=c("1","2"))
data$daily_bun_lborresu = factor(data$daily_bun_lborresu,levels=c("1","2"))
data$daily_lactate_lbyn = factor(data$daily_lactate_lbyn,levels=c("1","0","3"))
data$daily_lactateop_lbyn = factor(data$daily_lactateop_lbyn,levels=c("1","2"))
data$daily_lactate_lborresu = factor(data$daily_lactate_lborresu,levels=c("1","2"))
data$daily_ldh_lbyn = factor(data$daily_ldh_lbyn,levels=c("1","0","3"))
data$daily_ldhop_lborres = factor(data$daily_ldhop_lborres,levels=c("1","2"))
data$daily_cpk_lby = factor(data$daily_cpk_lby,levels=c("1","0","3"))
data$daily_cpkop_lbyn_2 = factor(data$daily_cpkop_lbyn_2,levels=c("1","2"))
data$daily_creat_lbyn = factor(data$daily_creat_lbyn,levels=c("1","0","3"))
data$daily_creatop_lborres = factor(data$daily_creatop_lborres,levels=c("1","2"))
data$daily_creat_lborresu = factor(data$daily_creat_lborresu,levels=c("1","2","3"))
data$daily_sodium_lbyn = factor(data$daily_sodium_lbyn,levels=c("1","0","3"))
data$daily_sodiumop_lborres = factor(data$daily_sodiumop_lborres,levels=c("1","2"))
data$daily_sodium_lborresu = factor(data$daily_sodium_lborresu,levels=c("1","2"))
data$daily_potassium_lbyn = factor(data$daily_potassium_lbyn,levels=c("1","0","3"))
data$daily_potassiumop_lborres = factor(data$daily_potassiumop_lborres,levels=c("1","2"))
data$daily_potassium_lborresu = factor(data$daily_potassium_lborresu,levels=c("1","2"))
data$daily_procal_lbyn = factor(data$daily_procal_lbyn,levels=c("1","0","3"))
data$daily_procalop_lborres = factor(data$daily_procalop_lborres,levels=c("1","2"))
data$daily_crp_lbyn = factor(data$daily_crp_lbyn,levels=c("1","0","3"))
data$daily_crpop_lborres = factor(data$daily_crpop_lborres,levels=c("1","2"))
data$daily_crp_lborresu = factor(data$daily_crp_lborresu,levels=c("1","2","3"))
data$daily_egfr_lbyn = factor(data$daily_egfr_lbyn,levels=c("1","0","3"))
data$daily_egfrop_lborres = factor(data$daily_egfrop_lborres,levels=c("1","2"))
data$daily_egfr_equation___1 = factor(data$daily_egfr_equation___1,levels=c("0","1"))
data$daily_egfr_equation___2 = factor(data$daily_egfr_equation___2,levels=c("0","1"))
data$daily_egfr_equation___3 = factor(data$daily_egfr_equation___3,levels=c("0","1"))
data$daily_egfr_equation___4 = factor(data$daily_egfr_equation___4,levels=c("0","1"))
data$daily_hba1cop_lborres = factor(data$daily_hba1cop_lborres,levels=c("1","2"))
data$daily_hba1c_lborresu = factor(data$daily_hba1c_lborresu,levels=c("1","2"))
data$daily_hba1c_lborresnk = factor(data$daily_hba1c_lborresnk,levels=c("1"))
data$xray_prperf = factor(data$xray_prperf,levels=c("1","2","3"))
data$infiltrates_faorres = factor(data$infiltrates_faorres,levels=c("1","2","3"))
data$daily_samples = factor(data$daily_samples,levels=c("1","0"))
data$daily_form_complete = factor(data$daily_form_complete,levels=c("0","1","2"))
data$mbperf = factor(data$mbperf,levels=c("1","2","3"))
data$cov19sars_mbyn_v2 = factor(data$cov19sars_mbyn_v2,levels=c("2","1","0"))
data$influ_mbyn = factor(data$influ_mbyn,levels=c("2","1","0"))
data$influ_mbyn_v2 = factor(data$influ_mbyn_v2,levels=c("2","1","0"))
data$influ_mbcat = factor(data$influ_mbcat,levels=c("1","2","3","4","5","7","6","888"))
data$corna_mbcat = factor(data$corna_mbcat,levels=c("2","1","0"))
data$corna_mbcaty = factor(data$corna_mbcaty,levels=c("1","2","3","888"))
data$rsv_mbcat = factor(data$rsv_mbcat,levels=c("2","1","0"))
data$rsv_mbcat_v2 = factor(data$rsv_mbcat_v2,levels=c("2","1","0"))
data$adeno_mbcat = factor(data$adeno_mbcat,levels=c("2","1","0"))
data$adeno_mbcat_v2 = factor(data$adeno_mbcat_v2,levels=c("2","1","0"))
data$bact_mborres = factor(data$bact_mborres,levels=c("1","2"))
data$clinicalpneu_mborres = factor(data$clinicalpneu_mborres,levels=c("1","0","2"))
data$infectuk_mborres = factor(data$infectuk_mborres,levels=c("1","2"))
data$pcr_path_diag___0 = factor(data$pcr_path_diag___0,levels=c("0","1"))
data$pcr_path_diag___1 = factor(data$pcr_path_diag___1,levels=c("0","1"))
data$pcr_path_diag___2 = factor(data$pcr_path_diag___2,levels=c("0","1"))
data$pcr_path_diag___3 = factor(data$pcr_path_diag___3,levels=c("0","1"))
data$pcr_path_diag___4 = factor(data$pcr_path_diag___4,levels=c("0","1"))
data$pcr_path_diag___5 = factor(data$pcr_path_diag___5,levels=c("0","1"))
data$pcr_path_diag___6 = factor(data$pcr_path_diag___6,levels=c("0","1"))
data$pcr_path_diag___10 = factor(data$pcr_path_diag___10,levels=c("0","1"))
data$other_mbyn = factor(data$other_mbyn,levels=c("2","1","0"))
data$infectious_respiratory_disease_pathogen_diagnosis_complete = factor(data$infectious_respiratory_disease_pathogen_diagnosis_complete,levels=c("0","1","2"))
data$daily_mbperf = factor(data$daily_mbperf,levels=c("1","0"))
data$mbspec = factor(data$mbspec,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","15","14"))
data$mbmethod = factor(data$mbmethod,levels=c("1","2","3"))
data$mborres = factor(data$mborres,levels=c("1","2","3"))
data$mbspec_v2 = factor(data$mbspec_v2,levels=c("7","1","2","3","4","5","6"))
data$mborres_v2 = factor(data$mborres_v2,levels=c("1","2","3"))
data$mbtestcd_nsth = factor(data$mbtestcd_nsth,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","40"))
data$mbtestcd_bc = factor(data$mbtestcd_bc,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","40"))
data$mbtestcd_sp = factor(data$mbtestcd_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","40"))
data$mbtestcd_drs = factor(data$mbtestcd_drs,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","40"))
data$mbtestcd_ur = factor(data$mbtestcd_ur,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","40"))
data$mbtestcd_csf = factor(data$mbtestcd_csf,levels=c("1","2","3","4","5","6","7","40"))
data$mbtestcd_fst = factor(data$mbtestcd_fst,levels=c("1","2","3","4","5","40"))
data$mbspec_v3 = factor(data$mbspec_v3,levels=c("1","2","3","4","10"))
data$infectious_respiratory_disease_pathogen_testing_complete = factor(data$infectious_respiratory_disease_pathogen_testing_complete,levels=c("0","1","2"))
data$antiviral_cmyn = factor(data$antiviral_cmyn,levels=c("1","2","3"))
data$antiviral_cmtrt___1 = factor(data$antiviral_cmtrt___1,levels=c("0","1"))
data$antiviral_cmtrt___2 = factor(data$antiviral_cmtrt___2,levels=c("0","1"))
data$antiviral_cmtrt___3 = factor(data$antiviral_cmtrt___3,levels=c("0","1"))
data$antiviral_cmtrt___4 = factor(data$antiviral_cmtrt___4,levels=c("0","1"))
data$antiviral_cmtrt___7 = factor(data$antiviral_cmtrt___7,levels=c("0","1"))
data$antiviral_cmtrt___10 = factor(data$antiviral_cmtrt___10,levels=c("0","1"))
data$antiviral_cmtrt___11 = factor(data$antiviral_cmtrt___11,levels=c("0","1"))
data$antiviral_cmtrt___8 = factor(data$antiviral_cmtrt___8,levels=c("0","1"))
data$antiviral_cmtrt___9 = factor(data$antiviral_cmtrt___9,levels=c("0","1"))
data$antiviral_cmtrt___5 = factor(data$antiviral_cmtrt___5,levels=c("0","1"))
data$antiviral_cmtrt___6 = factor(data$antiviral_cmtrt___6,levels=c("0","1"))
data$il6_cmtrt = factor(data$il6_cmtrt,levels=c("1","2","3","10"))
data$othantiviral2_cmyn = factor(data$othantiviral2_cmyn,levels=c("1","0"))
data$othantiviral3_cmyn = factor(data$othantiviral3_cmyn,levels=c("1","0"))
data$othantiviral4_cmyn = factor(data$othantiviral4_cmyn,levels=c("1","0"))
data$othantiviral5_cmyn = factor(data$othantiviral5_cmyn,levels=c("1","0"))
data$antibiotic_cmyn = factor(data$antibiotic_cmyn,levels=c("1","2","3"))
data$antibiotic2_cmyn = factor(data$antibiotic2_cmyn,levels=c("1","2","3"))
data$antibiotic3_cmyn = factor(data$antibiotic3_cmyn,levels=c("1","2","3"))
data$antibiotic4_cmyn = factor(data$antibiotic4_cmyn,levels=c("1","2","3"))
data$antibiotic5_cmyn = factor(data$antibiotic5_cmyn,levels=c("1","2","3"))
data$antibiotic6_cmyn = factor(data$antibiotic6_cmyn,levels=c("1","2","3"))
data$antibiotic7_cmyn = factor(data$antibiotic7_cmyn,levels=c("1","2","3"))
data$corticost_cmyn = factor(data$corticost_cmyn,levels=c("1","2","3"))
data$corticost_cmtrt_type = factor(data$corticost_cmtrt_type,levels=c("1","2","88"))
data$corticost_cmroute = factor(data$corticost_cmroute,levels=c("1","2","3"))
data$corticost2_cmyn = factor(data$corticost2_cmyn,levels=c("1","2","3"))
data$corticost2_cmtrt_type = factor(data$corticost2_cmtrt_type,levels=c("1","2","88"))
data$corticost2_cmroute = factor(data$corticost2_cmroute,levels=c("1","2","3"))
data$corticost3_cmyn = factor(data$corticost3_cmyn,levels=c("1","2","3"))
data$corticost3_cmtrt_type = factor(data$corticost3_cmtrt_type,levels=c("1","2","88"))
data$corticost3_cmroute = factor(data$corticost3_cmroute,levels=c("1","2","3"))
data$dexamethasone = factor(data$dexamethasone,levels=c("1","2","3","4","5","6"))
data$dexamethasone_freq = factor(data$dexamethasone_freq,levels=c("1","2","3","4","5","6","7","8","9","10","11","99"))
data$dexamethasone_route = factor(data$dexamethasone_route,levels=c("1","2"))
data$antifung_cmyn = factor(data$antifung_cmyn,levels=c("1","2","3"))
data$offlabel_cmyn = factor(data$offlabel_cmyn,levels=c("1","2","3"))
data$interleukin_cmyn = factor(data$interleukin_cmyn,levels=c("1","2","3"))
data$conv_plasma_cmyn = factor(data$conv_plasma_cmyn,levels=c("1","2","3"))
data$icu_hoterm = factor(data$icu_hoterm,levels=c("1","2","3"))
data$icu_no = factor(data$icu_no,levels=c("1","2"))
data$icu_hostdatnk = factor(data$icu_hostdatnk,levels=c("1"))
data$icu_hoendatnk = factor(data$icu_hoendatnk,levels=c("1"))
data$icu_hostdat2_nk = factor(data$icu_hostdat2_nk,levels=c("1"))
data$icu_hoendat2_nk = factor(data$icu_hoendat2_nk,levels=c("1"))
data$icu_hostdat3_nk = factor(data$icu_hostdat3_nk,levels=c("1"))
data$icu_hoendat3_nk = factor(data$icu_hoendat3_nk,levels=c("1"))
data$icu_hostillin = factor(data$icu_hostillin,levels=c("1"))
data$oxygen_cmoccur = factor(data$oxygen_cmoccur,levels=c("1","2","3"))
data$oxygenhf_cmoccur = factor(data$oxygenhf_cmoccur,levels=c("1","2","3"))
data$noninvasive_proccur = factor(data$noninvasive_proccur,levels=c("1","2","3"))
data$invasive_proccur = factor(data$invasive_proccur,levels=c("1","2","3"))
data$pronevent_prtrt = factor(data$pronevent_prtrt,levels=c("1","2","3"))
data$inhalednit_cmtrt = factor(data$inhalednit_cmtrt,levels=c("1","2","3"))
data$tracheo_prtrt = factor(data$tracheo_prtrt,levels=c("1","2","3"))
data$extracorp_prtrt = factor(data$extracorp_prtrt,levels=c("1","2","3"))
data$rrt_prtrt = factor(data$rrt_prtrt,levels=c("1","2","3"))
data$inotrop_cmtrt = factor(data$inotrop_cmtrt,levels=c("1","2","3"))
data$invasive_still_on = factor(data$invasive_still_on,levels=c("1"))
data$excorp_still_on = factor(data$excorp_still_on,levels=c("1"))
data$rrt_still_on = factor(data$rrt_still_on,levels=c("1"))
data$inotrope_still_on = factor(data$inotrope_still_on,levels=c("1"))
data$other_cmyn = factor(data$other_cmyn,levels=c("1","2","3"))
data$bloodgroup = factor(data$bloodgroup,levels=c("1","2","3","4","9"))
data$treatment_complete = factor(data$treatment_complete,levels=c("0","1","2"))
data$vrialpneu_ceoccur = factor(data$vrialpneu_ceoccur,levels=c("1","2","3"))
data$bactpneu_ceoccur = factor(data$bactpneu_ceoccur,levels=c("1","2","3"))
data$ards_ceoccur = factor(data$ards_ceoccur,levels=c("1","2","3"))
data$cryptogenic_ceterm = factor(data$cryptogenic_ceterm,levels=c("1","2","3"))
data$pneumothorax_ceterm = factor(data$pneumothorax_ceterm,levels=c("1","2","3"))
data$pleuraleff_ceterm = factor(data$pleuraleff_ceterm,levels=c("1","2","3"))
data$bronchio_ceterm = factor(data$bronchio_ceterm,levels=c("1","2","3"))
data$meningitis_ceterm = factor(data$meningitis_ceterm,levels=c("1","2","3"))
data$seizure_ceterm = factor(data$seizure_ceterm,levels=c("1","2","3"))
data$stroke_ceterm = factor(data$stroke_ceterm,levels=c("1","2","3"))
data$neuro_comp = factor(data$neuro_comp,levels=c("1","2","3"))
data$heartfailure_ceterm = factor(data$heartfailure_ceterm,levels=c("1","2","3"))
data$endocarditis_aeterm = factor(data$endocarditis_aeterm,levels=c("1","2","3"))
data$myocarditis_ceterm = factor(data$myocarditis_ceterm,levels=c("1","2","3"))
data$cardiomyopathy_ceterm = factor(data$cardiomyopathy_ceterm,levels=c("1","2","3"))
data$arrhythmia_ceterm = factor(data$arrhythmia_ceterm,levels=c("1","2","3"))
data$ischaemia_ceterm = factor(data$ischaemia_ceterm,levels=c("1","2","3"))
data$cardiacarrest_ceterm = factor(data$cardiacarrest_ceterm,levels=c("1","2","3"))
data$bacteraemia_ceterm = factor(data$bacteraemia_ceterm,levels=c("1","2","3"))
data$coagulo_ceterm = factor(data$coagulo_ceterm,levels=c("1","2","3"))
data$dvt_ceterm = factor(data$dvt_ceterm,levels=c("1","2","3"))
data$pulmthromb_ceterm = factor(data$pulmthromb_ceterm,levels=c("1","2","3"))
data$aneamia_ceterm = factor(data$aneamia_ceterm,levels=c("1","2","3"))
data$rhabdomyolsis_ceterm = factor(data$rhabdomyolsis_ceterm,levels=c("1","2","3"))
data$renalinjury_ceterm = factor(data$renalinjury_ceterm,levels=c("1","2","3"))
data$gastro_ceterm = factor(data$gastro_ceterm,levels=c("1","2","3"))
data$pancreat_ceterm = factor(data$pancreat_ceterm,levels=c("1","2","3"))
data$liverdysfunction_ceterm = factor(data$liverdysfunction_ceterm,levels=c("1","2","3"))
data$hyperglycemia_aeterm = factor(data$hyperglycemia_aeterm,levels=c("1","2","3"))
data$hypoglycemia_ceterm = factor(data$hypoglycemia_ceterm,levels=c("1","2","3"))
data$other_ceoccur = factor(data$other_ceoccur,levels=c("1","2","3"))
data$complications_complete = factor(data$complications_complete,levels=c("0","1","2"))
data$recruitment = factor(data$recruitment,levels=c("1","0"))
data$study_2 = factor(data$study_2,levels=c("1","0"))
data$study_3 = factor(data$study_3,levels=c("1","0"))
data$study_participation_complete = factor(data$study_participation_complete,levels=c("0","1","2"))
data$dsterm = factor(data$dsterm,levels=c("1","2","3","4","5","6"))
data$dshosp = factor(data$dshosp,levels=c("1","3","2"))
data$dsstdtcyn = factor(data$dsstdtcyn,levels=c("1","2","3"))
data$suppds_qval = factor(data$suppds_qval,levels=c("1","2","3","4"))
data$oxygen_proccur = factor(data$oxygen_proccur,levels=c("1","2","3"))
data$renal_proccur = factor(data$renal_proccur,levels=c("1","2","3"))
data$other_cmoccur = factor(data$other_cmoccur,levels=c("1","2","3"))
data$siteidnk = factor(data$siteidnk,levels=c("1"))
data$siteyn = factor(data$siteyn,levels=c("1","2","3"))
data$subjidcat = factor(data$subjidcat,levels=c("1","2","3"))
data$outcome_complete = factor(data$outcome_complete,levels=c("0","1","2"))
data$dsterm_v2 = factor(data$dsterm_v2,levels=c("1","5","4","3","6"))
data$dsstdtc_v2_nk = factor(data$dsstdtc_v2_nk,levels=c("1"))
data$suppds_qval_v2 = factor(data$suppds_qval_v2,levels=c("1","2","3","4"))
data$oxygen_proccur_v2 = factor(data$oxygen_proccur_v2,levels=c("1","2","3"))
data$siteid_v2_nk = factor(data$siteid_v2_nk,levels=c("1"))
data$siteyn_v2 = factor(data$siteyn_v2,levels=c("1","2","3"))
data$siteyn_v3 = factor(data$siteyn_v3,levels=c("1","2","3"))
data$final_outcome_complete = factor(data$final_outcome_complete,levels=c("0","1","2"))
data$core_additional_information_complete = factor(data$core_additional_information_complete,levels=c("0","1","2"))
data$withdtype = factor(data$withdtype,levels=c("1","10"))
data$withdrawal_form_complete = factor(data$withdrawal_form_complete,levels=c("0","1","2"))
data$consent_given = factor(data$consent_given,levels=c("1","0"))
data$consent_mode___1 = factor(data$consent_mode___1,levels=c("0","1"))
data$consent_mode___2 = factor(data$consent_mode___2,levels=c("0","1"))
data$consent_mode___3 = factor(data$consent_mode___3,levels=c("0","1"))
data$consent_mode___4 = factor(data$consent_mode___4,levels=c("0","1"))
data$consent_mode___5 = factor(data$consent_mode___5,levels=c("0","1"))
data$consent_mode___6 = factor(data$consent_mode___6,levels=c("0","1"))
data$consent_mode___7 = factor(data$consent_mode___7,levels=c("0","1"))
data$consent_mode___8 = factor(data$consent_mode___8,levels=c("0","1"))
data$consent_mode___9 = factor(data$consent_mode___9,levels=c("0","1"))
data$consent_mode___10 = factor(data$consent_mode___10,levels=c("0","1"))
data$consent_mode___11 = factor(data$consent_mode___11,levels=c("0","1"))
data$consent_optcondit___1 = factor(data$consent_optcondit___1,levels=c("0","1"))
data$consent_optcondit___2 = factor(data$consent_optcondit___2,levels=c("0","1"))
data$consent_optcondit___3 = factor(data$consent_optcondit___3,levels=c("0","1"))
data$consent_optcondit___4 = factor(data$consent_optcondit___4,levels=c("0","1"))
data$consent_ctu_dms_complete = factor(data$consent_ctu_dms_complete,levels=c("0","1","2"))
data$confirmed_negative_pcr = factor(data$confirmed_negative_pcr,levels=c("1"))
data$confirmed_negative_pcr_complete = factor(data$confirmed_negative_pcr_complete,levels=c("0","1","2"))
data$flw_consent_init = factor(data$flw_consent_init,levels=c("1","0"))
data$flw_consent_3_6m = factor(data$flw_consent_3_6m,levels=c("1","0"))
data$flw_consent_phone = factor(data$flw_consent_phone,levels=c("1","0"))
data$flw_consent_signed = factor(data$flw_consent_signed,levels=c("1","0"))
data$follow_up_consent_complete = factor(data$follow_up_consent_complete,levels=c("0","1","2"))
data$flw_survey_completed_by = factor(data$flw_survey_completed_by,levels=c("1","2","3"))
data$flw_desceased_lost = factor(data$flw_desceased_lost,levels=c("1","2"))
data$flw_date_deathnk = factor(data$flw_date_deathnk,levels=c("1"))
data$flw_date_lost_flwnk = factor(data$flw_date_lost_flwnk,levels=c("1"))
data$flw_covid19_adm = factor(data$flw_covid19_adm,levels=c("1","0"))
data$flw_covid19_readm = factor(data$flw_covid19_readm,levels=c("1","0"))
data$flw_icu = factor(data$flw_icu,levels=c("1","0","2"))
data$flw_recovered = factor(data$flw_recovered,levels=c("1","0","2"))
data$flw_fever = factor(data$flw_fever,levels=c("1","0","2"))
data$flw_last_fever = factor(data$flw_last_fever,levels=c("1","2","3","4","5"))
data$flw_illness_cause___1 = factor(data$flw_illness_cause___1,levels=c("0","1"))
data$flw_illness_cause___2 = factor(data$flw_illness_cause___2,levels=c("0","1"))
data$flw_illness_cause___3 = factor(data$flw_illness_cause___3,levels=c("0","1"))
data$flw_illness_cause___4 = factor(data$flw_illness_cause___4,levels=c("0","1"))
data$flw_illness_cause___5 = factor(data$flw_illness_cause___5,levels=c("0","1"))
data$flw_illness_cause___6 = factor(data$flw_illness_cause___6,levels=c("0","1"))
data$flw_illness_cause___7 = factor(data$flw_illness_cause___7,levels=c("0","1"))
data$flw_diag_dvt = factor(data$flw_diag_dvt,levels=c("1","0","99"))
data$flw_diag_stroke = factor(data$flw_diag_stroke,levels=c("1","0","99"))
data$flw_diag_pe = factor(data$flw_diag_pe,levels=c("1","0","99"))
data$flw_diag_heart_attack = factor(data$flw_diag_heart_attack,levels=c("1","0","99"))
data$flw_diag_kidney = factor(data$flw_diag_kidney,levels=c("1","0","99"))
data$flw_headache = factor(data$flw_headache,levels=c("1","0","99"))
data$flw_balance = factor(data$flw_balance,levels=c("1","0","99"))
data$flw_cough = factor(data$flw_cough,levels=c("1","0","99"))
data$flw_limb_weakness = factor(data$flw_limb_weakness,levels=c("1","0","99"))
data$flw_loss_smell = factor(data$flw_loss_smell,levels=c("1","0","99"))
data$flw_pain_breathing = factor(data$flw_pain_breathing,levels=c("1","0","99"))
data$flw_loss_taste = factor(data$flw_loss_taste,levels=c("1","0","99"))
data$flw_chest_pains = factor(data$flw_chest_pains,levels=c("1","0","99"))
data$flw_breathless = factor(data$flw_breathless,levels=c("1","0","99"))
data$flw_palpitations = factor(data$flw_palpitations,levels=c("1","0","99"))
data$flw_muscle_pain = factor(data$flw_muscle_pain,levels=c("1","0","99"))
data$flw_weight_loss = factor(data$flw_weight_loss,levels=c("1","0","99"))
data$flw_joint_pain = factor(data$flw_joint_pain,levels=c("1","0","99"))
data$flw_appetite = factor(data$flw_appetite,levels=c("1","0","99"))
data$flw_swollen_ankle = factor(data$flw_swollen_ankle,levels=c("1","0","99"))
data$flw_stomach_pain = factor(data$flw_stomach_pain,levels=c("1","0","99"))
data$flw_nausea = factor(data$flw_nausea,levels=c("1","0","99"))
data$flw_sleeping = factor(data$flw_sleeping,levels=c("1","0","99"))
data$flw_constipation = factor(data$flw_constipation,levels=c("1","0","99"))
data$flw_diarrhoea = factor(data$flw_diarrhoea,levels=c("1","0","99"))
data$flw_lesions_toes = factor(data$flw_lesions_toes,levels=c("1","0","99"))
data$flw_urine = factor(data$flw_urine,levels=c("1","0","99"))
data$flw_skin_rash = factor(data$flw_skin_rash,levels=c("1","0","99"))
data$flw_one_side = factor(data$flw_one_side,levels=c("1","0","99"))
data$flw_dizziness = factor(data$flw_dizziness,levels=c("1","0","99"))
data$flw_swallow = factor(data$flw_swallow,levels=c("1","0","99"))
data$flw_seeing = factor(data$flw_seeing,levels=c("1","0","99"))
data$flw_other_symp = factor(data$flw_other_symp,levels=c("1","0","99"))
data$flw_fainting = factor(data$flw_fainting,levels=c("1","0","99"))
data$flw_ed = factor(data$flw_ed,levels=c("1","0","2"))
data$flw_cough_type = factor(data$flw_cough_type,levels=c("1","2"))
data$flw_rash_area___1 = factor(data$flw_rash_area___1,levels=c("0","1"))
data$flw_rash_area___2 = factor(data$flw_rash_area___2,levels=c("0","1"))
data$flw_rash_area___3 = factor(data$flw_rash_area___3,levels=c("0","1"))
data$flw_rash_area___4 = factor(data$flw_rash_area___4,levels=c("0","1"))
data$flw_rash_area___5 = factor(data$flw_rash_area___5,levels=c("0","1"))
data$flw_rash_area___6 = factor(data$flw_rash_area___6,levels=c("0","1"))
data$flw_rash_area___7 = factor(data$flw_rash_area___7,levels=c("0","1"))
data$flw_eq5d_mb_p = factor(data$flw_eq5d_mb_p,levels=c("1","2","3","4","5"))
data$flw_eq5d_sc_p = factor(data$flw_eq5d_sc_p,levels=c("1","2","3","4","5"))
data$flw_eq5d_ua_p = factor(data$flw_eq5d_ua_p,levels=c("1","2","3","4","5"))
data$flw_eq5d_pd_p = factor(data$flw_eq5d_pd_p,levels=c("1","2","3","4","5"))
data$flw_eq5d_ad_p = factor(data$flw_eq5d_ad_p,levels=c("1","2","3","4","5"))
data$flw_eq5d_mb = factor(data$flw_eq5d_mb,levels=c("1","2","3","4","5"))
data$flw_eq5d_sc = factor(data$flw_eq5d_sc,levels=c("1","2","3","4","5"))
data$flw_eq5d_ua = factor(data$flw_eq5d_ua,levels=c("1","2","3","4","5"))
data$flw_eq5d_pd = factor(data$flw_eq5d_pd,levels=c("1","2","3","4","5"))
data$flw_eq5d_ad = factor(data$flw_eq5d_ad,levels=c("1","2","3","4","5"))
data$flw_breathless_now___1 = factor(data$flw_breathless_now___1,levels=c("0","1"))
data$flw_breathless_now___2 = factor(data$flw_breathless_now___2,levels=c("0","1"))
data$flw_breathless_now___3 = factor(data$flw_breathless_now___3,levels=c("0","1"))
data$flw_breathless_now___4 = factor(data$flw_breathless_now___4,levels=c("0","1"))
data$flw_breathless_now___5 = factor(data$flw_breathless_now___5,levels=c("0","1"))
data$flw_breathless_pre_c19___1 = factor(data$flw_breathless_pre_c19___1,levels=c("0","1"))
data$flw_breathless_pre_c19___2 = factor(data$flw_breathless_pre_c19___2,levels=c("0","1"))
data$flw_breathless_pre_c19___3 = factor(data$flw_breathless_pre_c19___3,levels=c("0","1"))
data$flw_breathless_pre_c19___4 = factor(data$flw_breathless_pre_c19___4,levels=c("0","1"))
data$flw_breathless_pre_c19___5 = factor(data$flw_breathless_pre_c19___5,levels=c("0","1"))
data$flw_seeing_today = factor(data$flw_seeing_today,levels=c("1","2","3","4"))
data$flw_seeing_pre_c19 = factor(data$flw_seeing_pre_c19,levels=c("1","2","3","4"))
data$flw_hearing_today = factor(data$flw_hearing_today,levels=c("1","2","3","4"))
data$flw_hearing_pre_c19 = factor(data$flw_hearing_pre_c19,levels=c("1","2","3","4"))
data$flw_walking_today = factor(data$flw_walking_today,levels=c("1","2","3","4"))
data$flw_walking_pre_c19 = factor(data$flw_walking_pre_c19,levels=c("1","2","3","4"))
data$flw_remember_today = factor(data$flw_remember_today,levels=c("1","2","3","4"))
data$flw_remember_pre_c19 = factor(data$flw_remember_pre_c19,levels=c("1","2","3","4"))
data$flw_washing_today = factor(data$flw_washing_today,levels=c("1","2","3","4"))
data$flw_washing_pre_c19 = factor(data$flw_washing_pre_c19,levels=c("1","2","3","4"))
data$flw_comm_today = factor(data$flw_comm_today,levels=c("1","2","3","4"))
data$flw_comm_pre_c19 = factor(data$flw_comm_pre_c19,levels=c("1","2","3","4"))
data$flw_smoking = factor(data$flw_smoking,levels=c("1","2","3","4"))
data$flw_alcohol = factor(data$flw_alcohol,levels=c("1","2","3","4"))
data$flw_healthy_eating = factor(data$flw_healthy_eating,levels=c("1","2","3","4"))
data$flw_phys_activ = factor(data$flw_phys_activ,levels=c("1","2","3","4"))
data$flw_walking_cycling = factor(data$flw_walking_cycling,levels=c("1","2","3","4"))
data$flw_employ_pre_c19___1 = factor(data$flw_employ_pre_c19___1,levels=c("0","1"))
data$flw_employ_pre_c19___2 = factor(data$flw_employ_pre_c19___2,levels=c("0","1"))
data$flw_employ_pre_c19___3 = factor(data$flw_employ_pre_c19___3,levels=c("0","1"))
data$flw_employ_pre_c19___4 = factor(data$flw_employ_pre_c19___4,levels=c("0","1"))
data$flw_employ_pre_c19___5 = factor(data$flw_employ_pre_c19___5,levels=c("0","1"))
data$flw_employ_pre_c19___6 = factor(data$flw_employ_pre_c19___6,levels=c("0","1"))
data$flw_employ_pre_c19___7 = factor(data$flw_employ_pre_c19___7,levels=c("0","1"))
data$flw_employ_pre_c19___8 = factor(data$flw_employ_pre_c19___8,levels=c("0","1"))
data$flw_employ_pre_c19___9 = factor(data$flw_employ_pre_c19___9,levels=c("0","1"))
data$flw_employ_pre_c19___10 = factor(data$flw_employ_pre_c19___10,levels=c("0","1"))
data$flw_employ_chg = factor(data$flw_employ_chg,levels=c("1","2","3"))
data$flw_employ_today___1 = factor(data$flw_employ_today___1,levels=c("0","1"))
data$flw_employ_today___2 = factor(data$flw_employ_today___2,levels=c("0","1"))
data$flw_employ_today___3 = factor(data$flw_employ_today___3,levels=c("0","1"))
data$flw_employ_today___4 = factor(data$flw_employ_today___4,levels=c("0","1"))
data$flw_employ_today___5 = factor(data$flw_employ_today___5,levels=c("0","1"))
data$flw_employ_today___6 = factor(data$flw_employ_today___6,levels=c("0","1"))
data$flw_employ_today___7 = factor(data$flw_employ_today___7,levels=c("0","1"))
data$flw_employ_today___8 = factor(data$flw_employ_today___8,levels=c("0","1"))
data$flw_employ_today___9 = factor(data$flw_employ_today___9,levels=c("0","1"))
data$flw_employ_today___10 = factor(data$flw_employ_today___10,levels=c("0","1"))
data$flw_employ_chg_reason___1 = factor(data$flw_employ_chg_reason___1,levels=c("0","1"))
data$flw_employ_chg_reason___2 = factor(data$flw_employ_chg_reason___2,levels=c("0","1"))
data$flw_employ_chg_reason___3 = factor(data$flw_employ_chg_reason___3,levels=c("0","1"))
data$flw_employ_chg_reason___4 = factor(data$flw_employ_chg_reason___4,levels=c("0","1"))
data$flw_employ_chg_reason___5 = factor(data$flw_employ_chg_reason___5,levels=c("0","1"))
data$flw_employ_chg_reason___6 = factor(data$flw_employ_chg_reason___6,levels=c("0","1"))
data$flw_sex_at_birth = factor(data$flw_sex_at_birth,levels=c("1","2","3","4"))
data$flw_ethinicity___1 = factor(data$flw_ethinicity___1,levels=c("0","1"))
data$flw_ethinicity___2 = factor(data$flw_ethinicity___2,levels=c("0","1"))
data$flw_ethinicity___3 = factor(data$flw_ethinicity___3,levels=c("0","1"))
data$flw_ethinicity___4 = factor(data$flw_ethinicity___4,levels=c("0","1"))
data$flw_ethinicity___5 = factor(data$flw_ethinicity___5,levels=c("0","1"))
data$flw_ethinicity___6 = factor(data$flw_ethinicity___6,levels=c("0","1"))
data$flw_ethinicity___7 = factor(data$flw_ethinicity___7,levels=c("0","1"))
data$flw_ethinicity___8 = factor(data$flw_ethinicity___8,levels=c("0","1"))
data$flw_ethinicity___9 = factor(data$flw_ethinicity___9,levels=c("0","1"))
data$flw_height_unit = factor(data$flw_height_unit,levels=c("1","2","3","4"))
data$flw_height_na = factor(data$flw_height_na,levels=c("1"))
data$flw_weight_unit = factor(data$flw_weight_unit,levels=c("1","2","3"))
data$flw_weight_na = factor(data$flw_weight_na,levels=c("1"))
data$follow_up_self_assessment_survey_complete = factor(data$follow_up_self_assessment_survey_complete,levels=c("0","1","2"))

levels(data$redcap_event_name)=c("Day 1 Hospital Admission (Arm 1: TIER 0)","Day 3 (Arm 1: TIER 0)","Day 6 (Arm 1: TIER 0)","Day 9 (Arm 1: TIER 0)","Additional days (Arm 1: TIER 0)","Discharge/Death (Arm 1: TIER 0)","Day 1 Hospital&ICU Admission (Arm 2: TIER 1)","Day 3 (Arm 2: TIER 1)","Day 6 (Arm 2: TIER 1)","Day 9 (Arm 2: TIER 1)","Additional days (Arm 2: TIER 1)","Discharge/Death (Arm 2: TIER 1)","Initial follow up (Arm 2: TIER 1)","Day 1 (Arm 3: TIER 2)","Day 2 (Arm 3: TIER 2)","Day 3 (Arm 3: TIER 2)","Day 4 (Arm 3: TIER 2)","Day 5 (Arm 3: TIER 2)","Day 6 (Arm 3: TIER 2)","Day 7 (Arm 3: TIER 2)","Day 8 (Arm 3: TIER 2)","Day 9 (Arm 3: TIER 2)","Day 10 (Arm 3: TIER 2)","Day 11 (Arm 3: TIER 2)","Day 12 (Arm 3: TIER 2)","Day 13 (Arm 3: TIER 2)","Day 14 (Arm 3: TIER 2)","Additional days (Arm 3: TIER 2)","Discharge/Death (Arm 3: TIER 2)","Initial follow up (Arm 3: TIER 2)")
levels(data$redcap_repeat_instrument)=c("Pre-admission medication","Infectious Respiratory Disease Pathogen Testing","Daily Form")
levels(data$participant_identification_number_pin_complete)=c("Incomplete","Unverified","Complete")
levels(data$tiers_faorres___1)=c("Unchecked","Checked")
levels(data$tiers_faorres___2)=c("Unchecked","Checked")
levels(data$tiers_faorres___3)=c("Unchecked","Checked")
levels(data$tiers_consent_complete)=c("Incomplete","Unverified","Complete")
levels(data$covid19_new)=c("Data in new COVID-19 short CRF")
levels(data$version_9_7)=c("Yes")
levels(data$ni_site)=c("Yes")
levels(data$corona_ieorres)=c("Yes","No")
levels(data$coriona_ieorres2)=c("Yes","No")
levels(data$coriona_ieorres3)=c("Yes","No")
levels(data$fever)=c("Yes","No")
levels(data$cough)=c("Yes","No")
levels(data$dyspnoe)=c("Yes","No")
levels(data$ari)=c("Yes","No")
levels(data$inflammatory_mss)=c("Yes","No")
levels(data$symptoms_epi_travel)=c("YES","NO","Unknown")
levels(data$symptoms_epi_physical)=c("YES","NO","Unknown")
levels(data$symptoms_epi_healthfac)=c("YES","NO","Unknown")
levels(data$symptoms_epi_lab)=c("YES","NO","Unknown")
levels(data$symptoms_epi_pathogen)=c("YES","NO","Unknown")
levels(data$symptoms_epi_animal)=c("YES","NO","Unknown")
levels(data$inclusion_criteria_complete)=c("Incomplete","Unverified","Complete")
levels(data$sex)=c("Male","Female","Not specified")
levels(data$agedatyn)=c("Yes","No")
levels(data$age_estimateyearsu)=c("Months","Years")
levels(data$ethnic___1)=c("Unchecked","Checked")
levels(data$ethnic___2)=c("Unchecked","Checked")
levels(data$ethnic___3)=c("Unchecked","Checked")
levels(data$ethnic___4)=c("Unchecked","Checked")
levels(data$ethnic___5)=c("Unchecked","Checked")
levels(data$ethnic___6)=c("Unchecked","Checked")
levels(data$ethnic___7)=c("Unchecked","Checked")
levels(data$ethnic___8)=c("Unchecked","Checked")
levels(data$ethnic___9)=c("Unchecked","Checked")
levels(data$ethnic___10)=c("Unchecked","Checked")
levels(data$healthwork_erterm)=c("YES","NO","N/A")
levels(data$labwork_erterm)=c("YES","NO","N/A")
levels(data$pregyn_rptestcd)=c("YES","NO","Unknown","N/A")
levels(data$postpart_rptestcd)=c("Yes","No","N/K")
levels(data$pregout_rptestcd)=c("Live birth","Still birth")
levels(data$aplb_lbperf)=c("Yes","No","N/A")
levels(data$aplb_lborres)=c("Positive","Negative")
levels(data$aplb_lbmethod)=c("PCR","Other")
levels(data$apdm_age)=c("Yes","No")
levels(data$apvs_weightu)=c("kg","lbs")
levels(data$apvs_weightnk)=c("N/K")
levels(data$apsc_gestout)=c("Term birth ( >= 37wk GA)","Preterm birth (< 37wk GA)","N/A")
levels(data$apsc_brfedind)=c("Yes","No","N/A")
levels(data$apsc_brfedindy)=c("Currently breastfed","Breastfeeding discontinued","N/A")
levels(data$apsc_dvageind)=c("Yes","No","N/A")
levels(data$apsc_vcageind)=c("Yes","No","Unknown","N/A")
levels(data$covid19_vaccine)=c("Yes","No","N/K")
levels(data$vaccine_covid_trial)=c("Yes","No","N/K")
levels(data$influenza_2021_vaccine)=c("Yes","No","N/K")
levels(data$demographics_complete)=c("Incomplete","Unverified","Complete")
levels(data$asymptomatic)=c("Asymptomatic")
levels(data$readm_cov19)=c("Yes","No","N/K")
levels(data$prev_subjid_nk)=c("N/K")
levels(data$readminreasnk)=c("N/K")
levels(data$susp_reinf)=c("Yes","No","N/K")
levels(data$surgefacil)=c("Yes","No","N/K")
levels(data$hooccur)=c("Yes-other facility is a study site","Yes-other facility is not a study site","No","N/A")
levels(data$siteid_transfernk)=c("N/K")
levels(data$hostdat_transfernk)=c("N/K")
levels(data$subjidcat_transfer)=c("Same as above","Different","N/A")
levels(data$travel_erterm)=c("Yes","No","N/A")
levels(data$supper_trcntry)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas (The)","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo (Republic of the)","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia (The)","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (South)","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$travel_erterm_2)=c("Yes","No","N/A")
levels(data$supper_trcntry_2)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas (The)","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo (Republic of the)","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia (The)","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (South)","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$animal_eryn)=c("Yes","No","Unknown","N/A")
levels(data$animal_eryn_2)=c("Yes","No","Unknown","N/A")
levels(data$onset_and_admission_complete)=c("Incomplete","Unverified","Complete")
levels(data$temp_vsyn)=c("Yes","No")
levels(data$temp_vsorresu)=c("°C","°F")
levels(data$hr_vsyn)=c("Yes","No")
levels(data$rr_vsyn)=c("Yes","No")
levels(data$sysbp_vsyn)=c("Yes","No")
levels(data$diabp_vsyn)=c("Yes","No")
levels(data$dehydration_vsorres)=c("Yes","No","Unknown")
levels(data$stercap_vsyn)=c("Yes","No")
levels(data$stercap_vsorres)=c("Yes","No","Unknown")
levels(data$oxy_vsyn)=c("Yes","No")
levels(data$oxy_vsorresu)=c("Room air","Oxygen therapy","N/A")
levels(data$fever_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$cough_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$coughsput_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$coughhb_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$sorethroat_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$runnynose_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$earpain_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$wheeze_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$chestpain_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$myalgia_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$jointpain_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$fatigue_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$shortbreath_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$ageusia_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$lowerchest_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$headache_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$confusion_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$seizures_cecoccur_v2)=c("YES","NO","Unknown")
levels(data$abdopain_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$vomit_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$diarrhoea_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$conjunct_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$rash_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$skinulcers_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$lymp_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$bleed_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$bleed_ceterm_v2)=c("YES","NO","Unknown")
levels(data$anosmia_ceoccur_v2)=c("YES","NO","Unknown")
levels(data$no_symptoms)=c("YES","NO","Unknown")
levels(data$admission_signs_and_symptoms_complete)=c("Incomplete","Unverified","Complete")
levels(data$chrincard)=c("YES","NO","Unknown")
levels(data$hypertension_mhyn)=c("YES","NO","Unknown")
levels(data$chronicpul_mhyn)=c("YES","NO","Unknown")
levels(data$asthma_mhyn)=c("YES","NO","Unknown")
levels(data$renal_mhyn)=c("YES","NO","Unknown")
levels(data$modliv)=c("YES","NO","Unknown")
levels(data$mildliver)=c("YES","NO","Unknown")
levels(data$chronicneu_mhyn)=c("YES","NO","Unknown")
levels(data$malignantneo_mhyn)=c("YES","NO","Unknown")
levels(data$chronichaemo_mhyn)=c("YES","NO","Unknown")
levels(data$aidshiv_mhyn)=c("YES","NO","Unknown")
levels(data$obesity_mhyn)=c("YES","NO","Unknown")
levels(data$diabetes_type_mhyn)=c("NO","1","2","N/K")
levels(data$diabetescom_mhyn)=c("YES","NO","Unknown")
levels(data$diabetes_mhyn)=c("YES","NO","Unknown")
levels(data$rheumatologic_mhyn)=c("YES","NO","Unknown")
levels(data$dementia_mhyn)=c("YES","NO","Unknown")
levels(data$malnutrition_mhyn)=c("YES","NO","Unknown")
levels(data$smoking_mhyn)=c("Yes","Never Smoked","Former Smoker","N/K")
levels(data$other_mhyn)=c("Yes","No","Unknown")
levels(data$vulnerable_transplant)=c("Yes","No","N/K")
levels(data$vulnerable_cancers)=c("Yes","No","N/K")
levels(data$vulnerable_copd)=c("Yes","No","N/K")
levels(data$vulnerable_scid)=c("Yes","No","N/K")
levels(data$vulnerable_immuno)=c("Yes","No","N/K")
levels(data$vulnerable_preg)=c("Yes","No","N/K")
levels(data$comorbidities_complete)=c("Incomplete","Unverified","Complete")
levels(data$immno_cmtrt)=c("Yes","No","N/A")
levels(data$infect_cmtrt)=c("Yes","No","N/A")
levels(data$chronic_ace_cmoccur)=c("Yes","No","N/K")
levels(data$chronic_arb_cmoccur)=c("Yes","No","N/K")
levels(data$chronic_nsaid_cmoccur)=c("Yes","No","N/K")
levels(data$clinical_frailty)=c("1","2","3","4","5","6","7","8","9","N/K")
levels(data$preadmission_treatment_complete)=c("Incomplete","Unverified","Complete")
levels(data$no_medication)=c("No medication currently or within the last 14 days")
levels(data$cmdose_unit)=c("microgram","milligram","gram","int. unit","other","Unknown")
levels(data$cmdosfrq)=c("q.d - once a day","b.i.d - twice a day","t.i.d - three times a day","q.i.d - four times a day","q.h.s - before bed","5X a day - five times a day","q.4h - every four hours","q.6h - every six hours","q.o.d - every other day","prn - as needed","Other frequency","Unknown")
levels(data$cmroute)=c("IV","oral","Inhaled","Unknown","Other")
levels(data$preadmission_medication_complete)=c("Incomplete","Unverified","Complete")
levels(data$reinf_pcr)=c("Yes","No","N/K")
levels(data$reinf_antigen)=c("Yes","No","N/K")
levels(data$reinf_serology)=c("Yes","No","N/K")
levels(data$reinf_asymptomatic)=c("Asymptomatic")
levels(data$fever_ceoccur_v3)=c("YES","NO","N/K")
levels(data$cough_ceoccur_v3)=c("YES","NO","N/K")
levels(data$coughsput_ceoccur_v3)=c("YES","NO","N/K")
levels(data$coughhb_ceoccur_v3)=c("YES","NO","N/K")
levels(data$sorethroat_ceoccur_v3)=c("YES","NO","N/K")
levels(data$runnynose_ceoccur_v3)=c("YES","NO","N/K")
levels(data$earpain_ceoccur_v3)=c("YES","NO","N/K")
levels(data$wheeze_ceoccur_v3)=c("YES","NO","N/K")
levels(data$chestpain_ceoccur_v3)=c("YES","NO","N/K")
levels(data$myalgia_ceoccur_v3)=c("YES","NO","N/K")
levels(data$jointpain_ceoccur_v3)=c("YES","NO","N/K")
levels(data$fatigue_ceoccur_v3)=c("YES","NO","N/K")
levels(data$shortbreath_ceoccur_v3)=c("YES","NO","N/K")
levels(data$ageusia_ceoccur_v3)=c("YES","NO","N/K")
levels(data$lowerchest_ceoccur_v3)=c("YES","NO","N/K")
levels(data$headache_ceoccur_v3)=c("YES","NO","N/K")
levels(data$confusion_ceoccur_v3)=c("YES","NO","N/K")
levels(data$seizures_cecoccur_v3)=c("YES","NO","N/K")
levels(data$abdopain_ceoccur_v3)=c("YES","NO","N/K")
levels(data$vomit_ceoccur_v3)=c("YES","NO","N/K")
levels(data$diarrhoea_ceoccur_v3)=c("YES","NO","N/K")
levels(data$conjunct_ceoccur_v3)=c("YES","NO","N/K")
levels(data$rash_ceoccur_v3)=c("YES","NO","N/K")
levels(data$skinulcers_ceoccur_v3)=c("YES","NO","N/K")
levels(data$lymp_ceoccur_v3)=c("YES","NO","N/K")
levels(data$bleed_ceoccur_v3)=c("YES","NO","N/K")
levels(data$anosmia_ceoccur_v3)=c("YES","NO","N/K")
levels(data$no_symptoms_v3)=c("YES","NO","N/K")
levels(data$reinf_pre_adm_hosp)=c("YES","NO","N/K")
levels(data$reinf_pre_oxygen)=c("YES","NO","N/K")
levels(data$reinf_pre_hdu_icu)=c("YES","NO","N/K")
levels(data$reinf_pre_inv_vent)=c("YES","NO","N/K")
levels(data$reinf_pre_ecmo)=c("YES","NO","N/K")
levels(data$reinf_pre_dexameth)=c("YES","NO","N/K")
levels(data$reinf_pre_steroid)=c("YES","NO","N/K")
levels(data$reinf_pre_tociliz)=c("YES","NO","N/K")
levels(data$reinf_pre_remdesivir)=c("YES","NO","N/K")
levels(data$reinf_pre_conv_plasma)=c("YES","NO","N/K")
levels(data$reinf_pre_lopin_riton)=c("YES","NO","N/K")
levels(data$reinf_pre_interferon)=c("YES","NO","N/K")
levels(data$reinf_pre_chloro_hchlo)=c("YES","NO","N/K")
levels(data$reinfection_form_complete)=c("Incomplete","Unverified","Complete")
levels(data$daily_hoterm)=c("Yes","No","N/A")
levels(data$daily_temp_vsorresu)=c("°C","°F")
levels(data$daily_temp_vsorresnk)=c("N/K")
levels(data$daily_fi02_lbyn)=c("Yes","No","N/K")
levels(data$daily_sa02_lbyn)=c("Yes","No","N/K")
levels(data$daily_pao2_lbyn)=c("Yes","No")
levels(data$daily_pao2_lborresu)=c("kPa","mmHg")
levels(data$daily_pao2_lbspec)=c("Arterial","Venous","Capillary","N/A")
levels(data$daily_pco2_lbyn)=c("Yes","No")
levels(data$daily_pco2_lborresu)=c("kPa","mmHg")
levels(data$daily_ph_lbyn)=c("Yes","No")
levels(data$daily_hco3_lbyn)=c("Yes","No")
levels(data$daily_hco3_lborresu)=c("mEq/L","mmol/L")
levels(data$daily_baseex_lbyn)=c("Yes","No")
levels(data$avpu_vsorres)=c("Alert","Verbal","Pain","Unresponsive","N/K")
levels(data$daily_gcs_lbyn)=c("Yes","No","N/K")
levels(data$systolic_vsyn)=c("Yes","No")
levels(data$diastolic_vsyn)=c("Yes","No")
levels(data$daily_meanart_lbyn)=c("Yes","No")
levels(data$daily_urine_lbyn)=c("Yes","Estimated","No")
levels(data$daily_noninvasive_prtrt)=c("YES","NO","N/A")
levels(data$daily_invasive_prtrt)=c("YES","NO","N/A")
levels(data$daily_nasaloxy_cmtrt)=c("YES","NO","N/A")
levels(data$daily_ecmo_prtrt)=c("YES","NO","N/A")
levels(data$daily_rrt_cmtrt)=c("YES","NO","N/A")
levels(data$daily_inotrope_cmyn)=c("YES","NO","N/A")
levels(data$daily_dopless5_cmtrt)=c("YES","NO","N/A")
levels(data$daily_dop5to15_cmtrt)=c("YES","NO","N/A")
levels(data$daily_dopgr15_cmtrt)=c("YES","NO","N/A")
levels(data$daily_neuro_cmtrt)=c("YES","NO","N/A")
levels(data$daily_nitritc_cmtrt)=c("YES","NO","N/A")
levels(data$daily_prone_cmtrt)=c("YES","NO","N/A")
levels(data$daily_trach_prperf)=c("YES","NO","N/A")
levels(data$daily_prperf)=c("YES","NO","N/A")
levels(data$remdesivir)=c("YES","NO","N/K")
levels(data$remdesivir_last_dose)=c("YES","NO","N/K")
levels(data$daily_lbperf)=c("Yes","No")
levels(data$daily_hb_lbyn)=c("Yes","No","N/K")
levels(data$daily_hbop_lborres)=c("")
levels(data$daily_hb_lborresu)=c("g/L","g/dL")
levels(data$daily_wbc_lbyn)=c("Yes","No","N/K")
levels(data$daily_wbcop_lborres)=c("")
levels(data$daily_wbc_lborresu)=c("x 10^9 / L","x 103/µL")
levels(data$daily_lymp_lbyn)=c("Yes","No","N/K")
levels(data$daily_lympop_lbyn)=c("")
levels(data$daily_lymp_lborresu)=c("cells/ μL","x 10^9 / L","x 10³/μL")
levels(data$daily_neutro_lbyn)=c("Yes","No","N/K")
levels(data$daily_neutroop_lbyn)=c("")
levels(data$daily_neutro_lborresu)=c("cells/ μL","x 10^9 / L","x 10³/μL")
levels(data$daily_haematocrit_lbyn)=c("Yes","No")
levels(data$daily_haematocrit_lborresu)=c("%","L/L")
levels(data$daily_plt_lbyn)=c("Yes","No","N/K")
levels(data$daily_pltop_lborres)=c("")
levels(data$daily_plt_lborresu)=c("x 10^9 / L","x 103/μL")
levels(data$daily_aptt_lbyn)=c("Yes","No","N/K")
levels(data$daily_apttop_lborres)=c("")
levels(data$daily_pt_inr_lbyn)=c("PT done","INR done","PT or INR not done","N/K")
levels(data$daily_ptop_lborres)=c("")
levels(data$daily_inrop_lborres)=c("")
levels(data$daily_esr_lbyn)=c("Yes","No","N/K")
levels(data$daily_esrop_lbyn)=c("")
levels(data$daily_ferr_lbyn)=c("Yes","No","N/K")
levels(data$daily_ferrop_lbyn)=c("")
levels(data$daily_ferr_lborresu)=c("μg/L","ng/mL")
levels(data$daily_alt_lbyn)=c("Yes","No","N/K")
levels(data$daily_altop_lbyn)=c("")
levels(data$daily_bil_lbyn)=c("Yes","No","N/K")
levels(data$daily_bilop_lborres)=c("")
levels(data$daily_bil_lborresu)=c("µmol/L","mg/dL")
levels(data$daily_ast_lbyn)=c("Yes","No","N/K")
levels(data$daily_astop_lborres)=c("")
levels(data$daily_glucose_lbyn)=c("Yes","No","N/K")
levels(data$daily_glucoseop_lborres)=c("")
levels(data$daily_glucose_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_bun_lbyn)=c("Yes","No","N/K")
levels(data$daily_bunop_lborres)=c("")
levels(data$daily_bun_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_lactate_lbyn)=c("Yes","No","N/K")
levels(data$daily_lactateop_lbyn)=c("")
levels(data$daily_lactate_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_ldh_lbyn)=c("Yes","No","N/K")
levels(data$daily_ldhop_lborres)=c("")
levels(data$daily_cpk_lby)=c("Yes","No","N/K")
levels(data$daily_cpkop_lbyn_2)=c("")
levels(data$daily_creat_lbyn)=c("Yes","No","N/K")
levels(data$daily_creatop_lborres)=c("")
levels(data$daily_creat_lborresu)=c("μmol/L","mg/dL","umol/L")
levels(data$daily_sodium_lbyn)=c("Yes","No","N/K")
levels(data$daily_sodiumop_lborres)=c("")
levels(data$daily_sodium_lborresu)=c("mmol/L","mEq/L")
levels(data$daily_potassium_lbyn)=c("Yes","No","N/K")
levels(data$daily_potassiumop_lborres)=c("")
levels(data$daily_potassium_lborresu)=c("mmol/L","mEq/L")
levels(data$daily_procal_lbyn)=c("Yes","No","N/K")
levels(data$daily_procalop_lborres)=c("")
levels(data$daily_crp_lbyn)=c("Yes","No","N/K")
levels(data$daily_crpop_lborres)=c("")
levels(data$daily_crp_lborresu)=c("mg/L","mg/dL","ug/ml")
levels(data$daily_egfr_lbyn)=c("Yes","No","N/K")
levels(data$daily_egfrop_lborres)=c("")
levels(data$daily_egfr_equation___1)=c("Unchecked","Checked")
levels(data$daily_egfr_equation___2)=c("Unchecked","Checked")
levels(data$daily_egfr_equation___3)=c("Unchecked","Checked")
levels(data$daily_egfr_equation___4)=c("Unchecked","Checked")
levels(data$daily_hba1cop_lborres)=c("")
levels(data$daily_hba1c_lborresu)=c("%","mmol/mol")
levels(data$daily_hba1c_lborresnk)=c("N/K")
levels(data$xray_prperf)=c("YES","NO","N/A")
levels(data$infiltrates_faorres)=c("YES","NO","N/A")
levels(data$daily_samples)=c("Yes","No")
levels(data$daily_form_complete)=c("Incomplete","Unverified","Complete")
levels(data$mbperf)=c("YES","NO","N/A")
levels(data$cov19sars_mbyn_v2)=c("Tested and POSITIVE","Tested and NEGATIVE","NOT TESTED")
levels(data$influ_mbyn)=c("YES - Confirmed","YES - Probable","NO")
levels(data$influ_mbyn_v2)=c("Tested and POSITIVE","Tested and NEGATIVE","NOT TESTED")
levels(data$influ_mbcat)=c("A/H3N2","A/H1N1pdm09","A/H7N9","A/H5N1","A - not typed","Other A","B - not typed","Other")
levels(data$corna_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$corna_mbcaty)=c("MERS-CoV","2019nCoV","COVID-19/SARS-CoV-2 2019","Other CoV")
levels(data$rsv_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$rsv_mbcat_v2)=c("Tested and POSITIVE","Tested and NEGATIVE","NOT TESTED")
levels(data$adeno_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$adeno_mbcat_v2)=c("Tested and POSITIVE","Tested and NEGATIVE","NOT TESTED")
levels(data$bact_mborres)=c("YES-Confirmed","NO")
levels(data$clinicalpneu_mborres)=c("YES","NO","Unknown")
levels(data$infectuk_mborres)=c("Yes","N/A")
levels(data$pcr_path_diag___0)=c("Unchecked","Checked")
levels(data$pcr_path_diag___1)=c("Unchecked","Checked")
levels(data$pcr_path_diag___2)=c("Unchecked","Checked")
levels(data$pcr_path_diag___3)=c("Unchecked","Checked")
levels(data$pcr_path_diag___4)=c("Unchecked","Checked")
levels(data$pcr_path_diag___5)=c("Unchecked","Checked")
levels(data$pcr_path_diag___6)=c("Unchecked","Checked")
levels(data$pcr_path_diag___10)=c("Unchecked","Checked")
levels(data$other_mbyn)=c("YES - Confirmed","YES - Probable","NO")
levels(data$infectious_respiratory_disease_pathogen_diagnosis_complete)=c("Incomplete","Unverified","Complete")
levels(data$daily_mbperf)=c("Yes","No")
levels(data$mbspec)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","ETA","CSF","SAM","Urine","Faeces / rectal swab","Blood serum","Blood EDTA","Blood RNA","Blood","Other")
levels(data$mbmethod)=c("PCR","Culture","Other")
levels(data$mborres)=c("Positive","Negative","N/A")
levels(data$mbspec_v2)=c("Nasal / and or throat swab","Blood culture","Sputum","Deep respiratory sample (BAL/ETA)","Urine","Cerebrospinal fluid (CSF)","Faeces (stool)")
levels(data$mborres_v2)=c("Obtained: positive","Obtained: negative","Not obtained")
levels(data$mbtestcd_nsth)=c("SARS-CoV-2 (COVID-19)","Influenza - A/H3N2","Influenza- A/H1N1pdm09","Influenza- A/H7N9","Influenza- type B","Influenza- type C","Influenza-untyped","Respiratory Syncytial virus (RSV)","Adenovirus","Bocavirus","Bordetella parapertussis","Bordetella pertussis","Chlamydophila pneumoniae","Coronavirus 229E","Coronavirus HKU1","Coronavirus OC43","Coronavirus NL63","CoronaVirus (Mers-CoV)","Human Metapneumovirus","Human Rhinovirus/Enterovirus","Metapneumovirus","Middle East Respiratory Syndrome","Mycoplasma pneumoniae (L. pneumophila or L. longbeachae)","Parainfluenza 1 Parainfluenza2","Parainfluenza3","Parainfluenza 4","Severe Acute Respiratory Syndrome","Other - specify")
levels(data$mbtestcd_bc)=c("Staphylococcus aureus","Staphylococcus species (NOT aureus or lugdunensis)","Escherichia coli","Klebsiella pneumoniae","Klebsiella aerogenes","Klebsiella oxytoca","Enterococcus faecium","Enterococcus faecalis","Candida species (NOT yeasts)","Pseudomonas aeruginosa","Streptococcus pneumoniae","Enterobacter cloacae","Proteus mirabilis","Streptococcus pyogenes (Group A Streptococcus)","Streptococcus agalactiae (Group B Streptococcus)","Streptococcus anginosus or constellatus or intermedius","Streptococcus bovis or gallolyticus","Streptococcus dysgalactiae","Streptococcus viridans or gordonii or mitis or oralis or parasanguinis or salivarius or sanguinis","Citrobacter koseri","Serratia marcescens","Acinetobacter baumannii","Morganella morganii","Stenotrophomonas maltophilia","Staphylococcus lugdunensis","Other (do not record microscopy/gram stain only results)")
levels(data$mbtestcd_sp)=c("Staphylococcus aureus","Escherichia coli","Pseudomonas aeruginosa","Klebsiella pneumoniae","Klebsiella aerogenes","Klebsiella oxytoca","Haemophilus influenzae","Moraxella catarrhalis","Serratia marcescens","Enterobacter cloacae","Citrobacter koseri","Stenotrophomonas maltophilia","Streptococcus pneumoniae","Proteus mirabilis","Acinetobacter baumannii","Morganella morganii","Aspergillus fumigatus","Aspergillus sp (NOT fumigatus)","Enterococcus faecium","Enterococcus faecalis","Candida species (NOT yeasts)","Streptococcus pyogenes (Group A Streptococcus)","Streptococcus agalactiae (Group B Streptococcus)","Streptococcus anginosus or constellatus or intermedius","Staphylococcus lugdunensis","Staphylococcus species (NOT aureus or lugdunensis)","Mycobacterium tuberculosis","Other Mycobacteria (NOT tuberculosis)","Other (do not record microscopy/gram stain only results)")
levels(data$mbtestcd_drs)=c("Staphylococcus aureus","Escherichia coli","Pseudomonas aeruginosa","Klebsiella pneumoniae","Klebsiella aerogenes","Klebsiella oxytoca","Haemophilus influenzae","Moraxella catarrhalis","Serratia marcescens","Enterobacter cloacae","Citrobacter koseri","Stenotrophomonas maltophilia","Streptococcus pneumoniae","Proteus mirabilis","Acinetobacter baumannii","Morganella morganii","Aspergillus fumigatus","Aspergillus sp (NOT fumigatus)","Enterococcus faecium","Enterococcus faecalis","Candida species (NOT yeasts)","Streptococcus pyogenes (Group A Streptococcus)","Streptococcus agalactiae (Group B Streptococcus)","Streptococcus anginosus or constellatus or intermedius","Staphylococcus lugdunensis","Staphylococcus species (NOT aureus or lugdunensis)","Mycobacterium tuberculosis","Other Mycobacteria (NOT tuberculosis)","Other (do not record microscopy/gram stain only results)")
levels(data$mbtestcd_ur)=c("Escherichia coli","Escherichia coli","Klebsiella pneumoniae","Klebsiella aerogenes","Klebsiella oxytoca","Pseudomonas aeruginosa","Serratia marcescens","Enterobacter cloacae","Enterococcus faecium","Enterococcus faecalis","Staphylococcus aureus","Staphylococcus saprophyticus","Staphylococcus species (NOT aureus or saprophyticus)","Candida species (NOT yeasts)","Other (do not record microscopy/gram stain only results)")
levels(data$mbtestcd_csf)=c("Neisseria meningitidis","Streptococcus pneumoniae","Listeria monocytogenes","Haemophilus influenzae","Herpes simplex virus","Enterovirus","Varicella zoster virus","Other")
levels(data$mbtestcd_fst)=c("Clostridium difficile (ONLY if toxin positive)","Strongyloides stercoralis","Salmonella species","Shigella species","Campylobacter species","Other")
levels(data$mbspec_v3)=c("Abdominopelvic","Vascular access tip","Catheter urine","Abscess aspirate","Other")
levels(data$infectious_respiratory_disease_pathogen_testing_complete)=c("Incomplete","Unverified","Complete")
levels(data$antiviral_cmyn)=c("Yes","No","N/A")
levels(data$antiviral_cmtrt___1)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___2)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___3)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___4)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___7)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___10)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___11)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___8)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___9)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___5)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___6)=c("Unchecked","Checked")
levels(data$il6_cmtrt)=c("Tocilizumab","Anakinra","drug X","Other IL6 inhibitor")
levels(data$othantiviral2_cmyn)=c("Yes","No")
levels(data$othantiviral3_cmyn)=c("Yes","No")
levels(data$othantiviral4_cmyn)=c("Yes","No")
levels(data$othantiviral5_cmyn)=c("Yes","No")
levels(data$antibiotic_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic2_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic3_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic4_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic5_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic6_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic7_cmyn)=c("Yes","No","N/A")
levels(data$corticost_cmyn)=c("Yes","No","N/A")
levels(data$corticost_cmtrt_type)=c("Methylprednisolone","Prednisolone","Other")
levels(data$corticost_cmroute)=c("Oral","Intravenous","Inhaled")
levels(data$corticost2_cmyn)=c("Yes","No","N/A")
levels(data$corticost2_cmtrt_type)=c("Methylprednisolone","Prednisolone","Other")
levels(data$corticost2_cmroute)=c("Oral","Intravenous","Inhaled")
levels(data$corticost3_cmyn)=c("Yes","No","N/A")
levels(data$corticost3_cmtrt_type)=c("Methylprednisolone","Prednisolone","Other")
levels(data$corticost3_cmroute)=c("Oral","Intravenous","Inhaled")
levels(data$dexamethasone)=c("Yes","No","N/K","Yes to Dexamethasone but other dose","Yes to Dexamethasone but other frequency","Yes to Dexamethasone but other dose AND other frequency")
levels(data$dexamethasone_freq)=c("q.d - once a day","b.i.d - twice a day","t.i.d - three times a day","q.i.d - four times a day","q.h.s - before bed","5X a day - five times a day","q.4h - every four hours","q.6h - every six hours","q.o.d - every other day","prn - as needed","Other frequency","Unknown")
levels(data$dexamethasone_route)=c("Oral","Intravenous")
levels(data$antifung_cmyn)=c("Yes","No","N/A")
levels(data$offlabel_cmyn)=c("Yes","No","N/K")
levels(data$interleukin_cmyn)=c("Yes","No","N/K")
levels(data$conv_plasma_cmyn)=c("Yes","No","N/K")
levels(data$icu_hoterm)=c("Yes","No","N/A")
levels(data$icu_no)=c("Not indicated","Not appropriate")
levels(data$icu_hostdatnk)=c("N/K")
levels(data$icu_hoendatnk)=c("N/K")
levels(data$icu_hostdat2_nk)=c("N/K")
levels(data$icu_hoendat2_nk)=c("N/K")
levels(data$icu_hostdat3_nk)=c("N/K")
levels(data$icu_hoendat3_nk)=c("N/K")
levels(data$icu_hostillin)=c("Yes")
levels(data$oxygen_cmoccur)=c("YES","NO","N/A")
levels(data$oxygenhf_cmoccur)=c("YES","NO","N/A")
levels(data$noninvasive_proccur)=c("YES","NO","N/A")
levels(data$invasive_proccur)=c("YES","NO","N/A")
levels(data$pronevent_prtrt)=c("YES","NO","N/A")
levels(data$inhalednit_cmtrt)=c("YES","NO","N/A")
levels(data$tracheo_prtrt)=c("YES","NO","N/A")
levels(data$extracorp_prtrt)=c("YES","NO","N/A")
levels(data$rrt_prtrt)=c("YES","NO","N/A")
levels(data$inotrop_cmtrt)=c("YES","NO","N/A")
levels(data$invasive_still_on)=c("still on")
levels(data$excorp_still_on)=c("still on")
levels(data$rrt_still_on)=c("still on")
levels(data$inotrope_still_on)=c("still on")
levels(data$other_cmyn)=c("YES","NO","N/A")
levels(data$bloodgroup)=c("A","B","AB","O","N/K")
levels(data$treatment_complete)=c("Incomplete","Unverified","Complete")
levels(data$vrialpneu_ceoccur)=c("YES","NO","N/A")
levels(data$bactpneu_ceoccur)=c("YES","NO","N/A")
levels(data$ards_ceoccur)=c("YES","NO","N/A")
levels(data$cryptogenic_ceterm)=c("YES","NO","N/A")
levels(data$pneumothorax_ceterm)=c("YES","NO","N/A")
levels(data$pleuraleff_ceterm)=c("YES","NO","N/A")
levels(data$bronchio_ceterm)=c("YES","NO","N/A")
levels(data$meningitis_ceterm)=c("YES","NO","N/A")
levels(data$seizure_ceterm)=c("YES","NO","N/A")
levels(data$stroke_ceterm)=c("YES","NO","N/A")
levels(data$neuro_comp)=c("YES","NO","N/A")
levels(data$heartfailure_ceterm)=c("YES","NO","N/A")
levels(data$endocarditis_aeterm)=c("YES","NO","N/A")
levels(data$myocarditis_ceterm)=c("YES","NO","N/A")
levels(data$cardiomyopathy_ceterm)=c("YES","NO","N/A")
levels(data$arrhythmia_ceterm)=c("YES","NO","N/A")
levels(data$ischaemia_ceterm)=c("YES","NO","N/A")
levels(data$cardiacarrest_ceterm)=c("YES","NO","N/A")
levels(data$bacteraemia_ceterm)=c("YES","NO","N/A")
levels(data$coagulo_ceterm)=c("YES","NO","N/A")
levels(data$dvt_ceterm)=c("YES","NO","N/A")
levels(data$pulmthromb_ceterm)=c("YES","NO","N/A")
levels(data$aneamia_ceterm)=c("YES","NO","N/A")
levels(data$rhabdomyolsis_ceterm)=c("YES","NO","N/A")
levels(data$renalinjury_ceterm)=c("YES","NO","N/A")
levels(data$gastro_ceterm)=c("YES","NO","N/A")
levels(data$pancreat_ceterm)=c("YES","NO","N/A")
levels(data$liverdysfunction_ceterm)=c("YES","NO","N/A")
levels(data$hyperglycemia_aeterm)=c("YES","NO","N/A")
levels(data$hypoglycemia_ceterm)=c("YES","NO","N/A")
levels(data$other_ceoccur)=c("YES","NO","N/A")
levels(data$complications_complete)=c("Incomplete","Unverified","Complete")
levels(data$recruitment)=c("Yes","No")
levels(data$study_2)=c("Yes","No")
levels(data$study_3)=c("Yes","No")
levels(data$study_participation_complete)=c("Incomplete","Unverified","Complete")
levels(data$dsterm)=c("Discharged alive","Hospitalisation (Remains in Hospital &geq; Day 28 after symptom onset)","Transfer to other facility","Death","Palliative discharge","Unknown")
levels(data$dshosp)=c("Ongoing health care needs relating to this admission for COVID-19","Ongoing health care needs NOT related to COVID episode","Medically fit for discharge (COVID-19 resolved) but remains in hospital for other reason (e.g. awaiting suitable care in community, resident in long term health care or mental health facility)")
levels(data$dsstdtcyn)=c("Yes","No","N/A")
levels(data$suppds_qval)=c("Same as before illness","Worse","Better","N/A")
levels(data$oxygen_proccur)=c("YES","NO","N/A")
levels(data$renal_proccur)=c("YES","NO","N/A")
levels(data$other_cmoccur)=c("YES","NO","N/A")
levels(data$siteidnk)=c("N/K")
levels(data$siteyn)=c("Yes","No","N/A")
levels(data$subjidcat)=c("Same as the above","Different","N/K")
levels(data$outcome_complete)=c("Incomplete","Unverified","Complete")
levels(data$dsterm_v2)=c("Discharged alive expected to survive","Palliative discharge","Death,","Transfer to other facility","N/K")
levels(data$dsstdtc_v2_nk)=c("N/K")
levels(data$suppds_qval_v2)=c("Same as before illness","Worse","Better","N/K")
levels(data$oxygen_proccur_v2)=c("Yes","No","N/K")
levels(data$siteid_v2_nk)=c("N/K")
levels(data$siteyn_v2)=c("Yes","No","N/K")
levels(data$siteyn_v3)=c("Same as the above","Different","N/K")
levels(data$final_outcome_complete)=c("Incomplete","Unverified","Complete")
levels(data$core_additional_information_complete)=c("Incomplete","Unverified","Complete")
levels(data$withdtype)=c("Withdrawal from samples only","Other  Please specify:")
levels(data$withdrawal_form_complete)=c("Incomplete","Unverified","Complete")
levels(data$consent_given)=c("Yes","No")
levels(data$consent_mode___1)=c("Unchecked","Checked")
levels(data$consent_mode___2)=c("Unchecked","Checked")
levels(data$consent_mode___3)=c("Unchecked","Checked")
levels(data$consent_mode___4)=c("Unchecked","Checked")
levels(data$consent_mode___5)=c("Unchecked","Checked")
levels(data$consent_mode___6)=c("Unchecked","Checked")
levels(data$consent_mode___7)=c("Unchecked","Checked")
levels(data$consent_mode___8)=c("Unchecked","Checked")
levels(data$consent_mode___9)=c("Unchecked","Checked")
levels(data$consent_mode___10)=c("Unchecked","Checked")
levels(data$consent_mode___11)=c("Unchecked","Checked")
levels(data$consent_optcondit___1)=c("Unchecked","Checked")
levels(data$consent_optcondit___2)=c("Unchecked","Checked")
levels(data$consent_optcondit___3)=c("Unchecked","Checked")
levels(data$consent_optcondit___4)=c("Unchecked","Checked")
levels(data$consent_ctu_dms_complete)=c("Incomplete","Unverified","Complete")
levels(data$confirmed_negative_pcr)=c("Yes")
levels(data$confirmed_negative_pcr_complete)=c("Incomplete","Unverified","Complete")
levels(data$flw_consent_init)=c("Yes","No")
levels(data$flw_consent_3_6m)=c("Yes","No")
levels(data$flw_consent_phone)=c("Yes","No")
levels(data$flw_consent_signed)=c("Yes","No")
levels(data$follow_up_consent_complete)=c("Incomplete","Unverified","Complete")
levels(data$flw_survey_completed_by)=c("Patient self-assessment","Telephone-led follow-up","In-clinic nurse/clinican or research-led follow-up")
levels(data$flw_desceased_lost)=c("Deceased","Lost to follow-up")
levels(data$flw_date_deathnk)=c("Date of death unknown")
levels(data$flw_date_lost_flwnk)=c("Date lost to follow-up unknown")
levels(data$flw_covid19_adm)=c("Yes","No")
levels(data$flw_covid19_readm)=c("Yes","No")
levels(data$flw_icu)=c("Yes","No","Not applicable")
levels(data$flw_recovered)=c("Yes","No","Not sure")
levels(data$flw_fever)=c("Yes","No","Not sure")
levels(data$flw_last_fever)=c("within last 7 days","between 1 to  2 weeks ago","between 2 to 4  weeks ago","between 1 to 2 months ago","between 2 to 3 months ago")
levels(data$flw_illness_cause___1)=c("Unchecked","Checked")
levels(data$flw_illness_cause___2)=c("Unchecked","Checked")
levels(data$flw_illness_cause___3)=c("Unchecked","Checked")
levels(data$flw_illness_cause___4)=c("Unchecked","Checked")
levels(data$flw_illness_cause___5)=c("Unchecked","Checked")
levels(data$flw_illness_cause___6)=c("Unchecked","Checked")
levels(data$flw_illness_cause___7)=c("Unchecked","Checked")
levels(data$flw_diag_dvt)=c("Yes","No","Not answered")
levels(data$flw_diag_stroke)=c("Yes","No","Not answered")
levels(data$flw_diag_pe)=c("Yes","No","Not answered")
levels(data$flw_diag_heart_attack)=c("Yes","No","Not answered")
levels(data$flw_diag_kidney)=c("Yes","No","Not answered")
levels(data$flw_headache)=c("Yes","No","Not answered")
levels(data$flw_balance)=c("Yes","No","Not answered")
levels(data$flw_cough)=c("Yes","No","Not answered")
levels(data$flw_limb_weakness)=c("Yes","No","Not answered")
levels(data$flw_loss_smell)=c("Yes","No","Not answered")
levels(data$flw_pain_breathing)=c("Yes","No","Not answered")
levels(data$flw_loss_taste)=c("Yes","No","Not answered")
levels(data$flw_chest_pains)=c("Yes","No","Not answered")
levels(data$flw_breathless)=c("Yes","No","Not answered")
levels(data$flw_palpitations)=c("Yes","No","Not answered")
levels(data$flw_muscle_pain)=c("Yes","No","Not answered")
levels(data$flw_weight_loss)=c("Yes","No","Not answered")
levels(data$flw_joint_pain)=c("Yes","No","Not answered")
levels(data$flw_appetite)=c("Yes","No","Not answered")
levels(data$flw_swollen_ankle)=c("Yes","No","Not answered")
levels(data$flw_stomach_pain)=c("Yes","No","Not answered")
levels(data$flw_nausea)=c("Yes","No","Not answered")
levels(data$flw_sleeping)=c("Yes","No","Not answered")
levels(data$flw_constipation)=c("Yes","No","Not answered")
levels(data$flw_diarrhoea)=c("Yes","No","Not answered")
levels(data$flw_lesions_toes)=c("Yes","No","Not answered")
levels(data$flw_urine)=c("Yes","No","Not answered")
levels(data$flw_skin_rash)=c("Yes","No","Not answered")
levels(data$flw_one_side)=c("Yes","No","Not answered")
levels(data$flw_dizziness)=c("Yes","No","Not answered")
levels(data$flw_swallow)=c("Yes","No","Not answered")
levels(data$flw_seeing)=c("Yes","No","Not answered")
levels(data$flw_other_symp)=c("Yes","No","Not answered")
levels(data$flw_fainting)=c("Yes","No","Not answered")
levels(data$flw_ed)=c("Yes","No","N/A")
levels(data$flw_cough_type)=c("dry cough","with phlegm")
levels(data$flw_rash_area___1)=c("Unchecked","Checked")
levels(data$flw_rash_area___2)=c("Unchecked","Checked")
levels(data$flw_rash_area___3)=c("Unchecked","Checked")
levels(data$flw_rash_area___4)=c("Unchecked","Checked")
levels(data$flw_rash_area___5)=c("Unchecked","Checked")
levels(data$flw_rash_area___6)=c("Unchecked","Checked")
levels(data$flw_rash_area___7)=c("Unchecked","Checked")
levels(data$flw_eq5d_mb_p)=c("I had no problems in walking about","I had slight problems in walking about","I had moderate problems in walking about","I had severe problems in walking about","I was unable to walk about")
levels(data$flw_eq5d_sc_p)=c("I had no problems washing or dressing myself","I had slight problems washing or dressing myself","I had moderate problems washing or dressing myself","I had severe problems washing or dressing myself","I was unable to wash or dress myself")
levels(data$flw_eq5d_ua_p)=c("I had no problems doing my usual activities","I had slight problems doing my usual activities","I had moderate problems doing my usual activities","I had severe problems doing my usually activities","I was unable to do my usual activities")
levels(data$flw_eq5d_pd_p)=c("I had no pain or discomfort","I had slight pain or discomfort","I had moderate pain or discomfort","I had severe pain or discomfort","I had extreme pain or discomfort")
levels(data$flw_eq5d_ad_p)=c("I was not anxious or depressed","I was slightly anxious or depressed","I was moderately anxious or depressed","I was severely anxious or depressed","I was extremely anxious or depressed")
levels(data$flw_eq5d_mb)=c("I have no problems in walking about","I have slight problems in walking about","I have moderate problems in walking about","I have severe problems in walking about","I am unable to walk about")
levels(data$flw_eq5d_sc)=c("I have no problems washing or dressing myself","I have slight problems washing or dressing myself","I have moderate problems washing or dressing myself","I have severe problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$flw_eq5d_ua)=c("I have no problems doing my usual activities","I have slight problems doing my usual activities","I have moderate problems doing my usual activities","I have severe problems doing my usually activities","I am unable to do my usual activities")
levels(data$flw_eq5d_pd)=c("I have no pain or discomfort","I have slight pain or discomfort","I have moderate pain or discomfort","I have severe pain or discomfort","I have extreme pain or discomfort")
levels(data$flw_eq5d_ad)=c("I am not anxious or depressed","I am slightly anxious or depressed","I am moderately anxious or depressed","I am severely anxious or depressed","I am extremely anxious or depressed")
levels(data$flw_breathless_now___1)=c("Unchecked","Checked")
levels(data$flw_breathless_now___2)=c("Unchecked","Checked")
levels(data$flw_breathless_now___3)=c("Unchecked","Checked")
levels(data$flw_breathless_now___4)=c("Unchecked","Checked")
levels(data$flw_breathless_now___5)=c("Unchecked","Checked")
levels(data$flw_breathless_pre_c19___1)=c("Unchecked","Checked")
levels(data$flw_breathless_pre_c19___2)=c("Unchecked","Checked")
levels(data$flw_breathless_pre_c19___3)=c("Unchecked","Checked")
levels(data$flw_breathless_pre_c19___4)=c("Unchecked","Checked")
levels(data$flw_breathless_pre_c19___5)=c("Unchecked","Checked")
levels(data$flw_seeing_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_seeing_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_hearing_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_hearing_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_walking_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_walking_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_remember_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_remember_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_washing_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_washing_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_comm_today)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_comm_pre_c19)=c("No - no difficulty","Yes - some difficulty","Yes - a lot of difficulty","Cannot do at all")
levels(data$flw_smoking)=c("I do this more often","I do this less often","No difference","N/A")
levels(data$flw_alcohol)=c("I do this more often","I do this less often","No difference","N/A")
levels(data$flw_healthy_eating)=c("I do this more often","I do this less often","No difference","N/A")
levels(data$flw_phys_activ)=c("I do this more often","I do this less often","No difference","N/A")
levels(data$flw_walking_cycling)=c("I do this more often","I do this less often","No difference","N/A")
levels(data$flw_employ_pre_c19___1)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___2)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___3)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___4)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___5)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___6)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___7)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___8)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___9)=c("Unchecked","Checked")
levels(data$flw_employ_pre_c19___10)=c("Unchecked","Checked")
levels(data$flw_employ_chg)=c("Same as before","Different from before","Prefer not to say")
levels(data$flw_employ_today___1)=c("Unchecked","Checked")
levels(data$flw_employ_today___2)=c("Unchecked","Checked")
levels(data$flw_employ_today___3)=c("Unchecked","Checked")
levels(data$flw_employ_today___4)=c("Unchecked","Checked")
levels(data$flw_employ_today___5)=c("Unchecked","Checked")
levels(data$flw_employ_today___6)=c("Unchecked","Checked")
levels(data$flw_employ_today___7)=c("Unchecked","Checked")
levels(data$flw_employ_today___8)=c("Unchecked","Checked")
levels(data$flw_employ_today___9)=c("Unchecked","Checked")
levels(data$flw_employ_today___10)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___1)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___2)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___3)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___4)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___5)=c("Unchecked","Checked")
levels(data$flw_employ_chg_reason___6)=c("Unchecked","Checked")
levels(data$flw_sex_at_birth)=c("Male","Female","Non-binary","Prefer not to say")
levels(data$flw_ethinicity___1)=c("Unchecked","Checked")
levels(data$flw_ethinicity___2)=c("Unchecked","Checked")
levels(data$flw_ethinicity___3)=c("Unchecked","Checked")
levels(data$flw_ethinicity___4)=c("Unchecked","Checked")
levels(data$flw_ethinicity___5)=c("Unchecked","Checked")
levels(data$flw_ethinicity___6)=c("Unchecked","Checked")
levels(data$flw_ethinicity___7)=c("Unchecked","Checked")
levels(data$flw_ethinicity___8)=c("Unchecked","Checked")
levels(data$flw_ethinicity___9)=c("Unchecked","Checked")
levels(data$flw_height_unit)=c("cm","feet","feet and inches","metres")
levels(data$flw_height_na)=c("Prefer not to say")
levels(data$flw_weight_unit)=c("kg","lbs","stones and pounds")
levels(data$flw_weight_na)=c("Prefer not to say")
levels(data$follow_up_self_assessment_survey_complete)=c("Incomplete","Unverified","Complete")

#Setting Labels

label(data$subjid)="Participant Identification Number (PIN) specify CPMS Site code (hypen) four digit number patient number e.g Y0401-0001."
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$participant_identification_number_pin_complete)="Complete?"
label(data$arm_participant)="Arm participant is in"
label(data$tiers_faorres___1)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 0 (data collection only); no consent required.)"
label(data$tiers_faorres___2)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 1 (single point sample collection); consent required.)"
label(data$tiers_faorres___3)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 2 (multiple point sample collection); consent required.)"
label(data$tiers_consent_complete)="Complete?"
label(data$covid19_new)="SELECT THIS FIELD if you are entering data for a COVID-19 participant where data has been collected via the new short CRF first issued April 2020. If you select this field for a participant with data entered on the older/long CRF, some fields could be cleared. If you do not select this fields for a participant with data entered on the new shorter CRF, the fields shown will not match it."
label(data$version_9_7)="Are you completing details for CRF v9.7 or later? "
label(data$ni_site)="Northern Ireland? If entering data for Northern Ireland, PLEASE SELECT:"
label(data$dsstdat)="Date of Enrolment"
label(data$sitename)="Site name"
label(data$corona_ieorres)="Suspected or proven infection with pathogen of Public Health Interest"
label(data$coriona_ieorres2)="Proven or high likelihood of infection with pathogen of Public Health Interest  "
label(data$coriona_ieorres3)="Proven infection with pathogen of Public Health Interest N.B. For acute covid-19, please only collect data from proven (laboratory test-positive) people."
label(data$fever)="A history of self reported feverishness or measured fever of ≥ 38°C"
label(data$cough)="Cough "
label(data$dyspnoe)="Dyspnoea (shortness of breath) OR Tachypnoea*"
label(data$ari)="Clinical suspicion of ARI despite not meeting criteria above"
label(data$inflammatory_mss)="Adult or child who meets Case Definition for Inflammatory Multi-system Syndrome (MIS-C/MIS-A)"
label(data$symptoms_epi_travel)="2.A history of travel to an area with documented cases of novel coronavirus infection"
label(data$symptoms_epi_physical)="3.Close contact* with a confirmed or probable case of nCoV infection, while that patient was symptomatic"
label(data$symptoms_epi_healthfac)="4.Presence in a healthcare facility where nCoV infections have been managed"
label(data$symptoms_epi_lab)="5. Presence in a laboratory handling samples suspected or confirmed of having the respiratory pathogen of public health interest present"
label(data$symptoms_epi_pathogen)="6.An otherwise unexplained respiratory illness in the context of an outbreak, suspected outbreak or incident of a respiratory pathogen of public health interest"
label(data$symptoms_epi_animal)="7.Direct contact with animals in countries where the nCoV is known to be circulating in animal populations or where human infections have occurred as a result of presumed zoonotic transmission"
label(data$inclusion_criteria_complete)="Complete?"
label(data$sex)="Sex at Birth:"
label(data$agedatyn)="Is birth date known"
label(data$agedat)="Birth date (has approval for entry)"
label(data$calc_age)="Calculated Age (comparing Date of birth with Date of enrolment)  May be inaccurate if a date of February 29 is used"
label(data$age_estimateyears)="Age/Estimated age"
label(data$age_estimateyearsu)="Age/Estimated age Unit"
label(data$postcode)="Postcode (has approval for entry)"
label(data$nhs_chi)="England & Wales NHS number, Scotland CHI number (has approval for entry) NB Northern Ireland Health & Care Number is not being collected at this time"
label(data$ethnic___1)="Ethnic group (check all that apply) (choice=Arab)"
label(data$ethnic___2)="Ethnic group (check all that apply) (choice=Black)"
label(data$ethnic___3)="Ethnic group (check all that apply) (choice=East Asian)"
label(data$ethnic___4)="Ethnic group (check all that apply) (choice=South Asian)"
label(data$ethnic___5)="Ethnic group (check all that apply) (choice=West Asian)"
label(data$ethnic___6)="Ethnic group (check all that apply) (choice=Latin American)"
label(data$ethnic___7)="Ethnic group (check all that apply) (choice=White)"
label(data$ethnic___8)="Ethnic group (check all that apply) (choice=Aboriginal/First Nations)"
label(data$ethnic___9)="Ethnic group (check all that apply) (choice=Other)"
label(data$ethnic___10)="Ethnic group (check all that apply) (choice=N/A)"
label(data$other_ethnic)="If Other: Specify"
label(data$healthwork_erterm)="Employed as a healthcare worker?"
label(data$labwork_erterm)="Employed in a microbiology laboratory?"
label(data$pregyn_rptestcd)="Pregnant ?"
label(data$egestage_rptestcd)="If YES: Gestational weeks assessment:"
label(data$postpart_rptestcd)="Post Partum (within six weeks of delivery)"
label(data$pregout_rptestcd)="Pregnancy Outcome"
label(data$dlvrdtc_rptestcd)="Delivery date"
label(data$aplb_lbperf)="Baby tested for mothers ARI infection"
label(data$aplb_lborres)=" If YES"
label(data$aplb_lbmethod)="Method"
label(data$aplb_lbmethodoth)="If OTHER method; Specify"
label(data$apdm_age)="INFANT - Less than 1 year old?"
label(data$apvs_weight)="Birth weight"
label(data$apvs_weightu)="Birth weight unit"
label(data$apvs_weightnk)="Birth weight N/K"
label(data$apsc_gestout)="Gestational outcome"
label(data$estgest)="If < 37wk  confirm estimated gestation   "
label(data$apsc_brfedind)="Breastfed"
label(data$apsc_brfedindy)="If  YES"
label(data$apsc_brdisdat)="Discontinued breastfeeding at "
label(data$apsc_dvageind)="Appropriate development for age?"
label(data$apsc_vcageind)="Vaccinations appropriate for age/country?"
label(data$covid19_vaccine)="Has the patient received a Covid-19 vaccine (open label licenced product)"
label(data$covid19_vaccined)="Covid-19 vaccine date if known"
label(data$vaccine_covid_trial)="Has the patient been involved in a vaccine COVID trial?"
label(data$vaccine_covid_triald)="Date if known (first trial vaccination): (please complete study participation CRF Page 3 of outcome CRF)"
label(data$influenza_2021_vaccine)="Has patient received a 2020/21 seasonal influenza vaccine"
label(data$influenza_2021_vaccined)="2020/21 seasonal influenza vaccine date if known"
label(data$demographics_complete)="Complete?"
label(data$asymptomatic)="Asymptomatic"
label(data$cestdat)="Onset date of first/earliest symptom"
label(data$hostdat)="Admission date at this facility"
label(data$hosttim)="Admission time at this facility"
label(data$readm_cov19)="Is the patient being readmitted with Covid-19? (Please only add re-admission episodes for COVID patients remaining or new positive COVID test- Please assign new subject ID) "
label(data$prev_subjid)="Previous participant ID "
label(data$prev_subjid_nk)="Previous participant ID NK"
label(data$readminreas)="Please provide reason for readmission: "
label(data$readminreasnk)="Reason for readmission N/K"
label(data$susp_reinf)="Is this a suspected re-infection with COVID-19? Defined as proven (PCR or antibody test) or highly probable (clinical case definition met) more than 21 days prior to this new laboratory proven covid-19 infection"
label(data$surgefacil)="Is this a NIGHTINGALE or other SURGE FACILITY?"
label(data$hooccur)="Transfer from other facility?"
label(data$siteid_transfer)="If YES: Name of transfer facility:"
label(data$siteid_transfernk)="If YES: Name of transfer facility N/K"
label(data$hostdat_transfer)="If YES: Admission date at previous facility "
label(data$hostdat_transfernk)="If YES: Admission date at previous facility N/K"
label(data$subjidcat_transfer)="If YES - Study Site: Participant ID # at transfer facility"
label(data$subjid_transfer)="If DIFFERENT; Participant number Specify CPMS Site code (hypen) four digit number patient number e.g Y0401-0001."
label(data$travel_erterm)="Travel in the 14 days prior to first symptom onset?"
label(data$supper_trcntry)="If YES, state location: Country"
label(data$supper_trcity)="2.6.2 If YES, state location: City/Geographic Area:"
label(data$erendat)="If YES, return date:"
label(data$travel_erterm_2)="Travelled to another country in the 14 days prior to first symptom onset?"
label(data$supper_trcntry_2)="If YES, state location: Country"
label(data$supper_trcity_2)="If YES, state location: City/Geographic Area:"
label(data$erendat_2)="If YES, return date:"
label(data$animal_eryn)="Contact with animals, raw meat or insect bites in the 14 days prior to symptom onset?"
label(data$animal_erterm)="If YES, specify the animal/insect"
label(data$animal_erdat)="If YES, specify the animal/insect date of exposure "
label(data$animal_eryn_2)="Contact with another animals, raw meat or insect bites in the 14 days prior to symptom onset?"
label(data$animal_erterm_2)="If YES, specify the animal/insect"
label(data$animal_erdat_2)="If YES, specify the animal/insect date of exposure "
label(data$onset_and_admission_complete)="Complete?"
label(data$temp_vsyn)="Temperature on admission available?"
label(data$temp_vsorres)="Temperature"
label(data$temp_vsorresu)="Temperature Units"
label(data$hr_vsyn)="Heart rate on admission available?"
label(data$hr_vsorres)="Heart Rate"
label(data$rr_vsyn)="Respiratory rate on admission available?"
label(data$rr_vsorres)="Respiratory Rate"
label(data$sysbp_vsyn)="Systolic blood pressure on admission available? "
label(data$sysbp_vsorres)="Systolic blood pressure"
label(data$diabp_vsyn)="Diastolic blood pressure on admission available?"
label(data$admission_diabp_vsorres)="Diastolic blood pressure"
label(data$dehydration_vsorres)="Severe dehydration: "
label(data$stercap_vsyn)="Sternal capillary refill time  on admission available?"
label(data$stercap_vsorres)="Sternal capillary refill time >2 seconds ?"
label(data$oxy_vsyn)="Oxygen saturation on admission available: "
label(data$oxy_vsorres)="Oxygen saturation"
label(data$oxy_vsorresu)="Oxygen saturation on:"
label(data$fever_ceoccur_v2)="History of fever"
label(data$cough_ceoccur_v2)="Cough"
label(data$coughsput_ceoccur_v2)="Cough: with sputum production"
label(data$coughhb_ceoccur_v2)="Cough: bloody sputum / haemoptysis"
label(data$sorethroat_ceoccur_v2)="Sore throat"
label(data$runnynose_ceoccur_v2)="Runny nose (Rhinorrhoea)"
label(data$earpain_ceoccur_v2)="Ear pain"
label(data$wheeze_ceoccur_v2)="Wheezing"
label(data$chestpain_ceoccur_v2)="Chest pain"
label(data$myalgia_ceoccur_v2)="Muscle aches (Myalgia)"
label(data$jointpain_ceoccur_v2)="Joint pain (Arthralgia)"
label(data$fatigue_ceoccur_v2)="Fatigue / Malaise"
label(data$shortbreath_ceoccur_v2)="Shortness of breath (Dyspnea)"
label(data$ageusia_ceoccur_v2)="Disturbance or loss of taste (Ageusia )"
label(data$lowerchest_ceoccur_v2)="Lower chest wall indrawing"
label(data$headache_ceoccur_v2)="Headache"
label(data$confusion_ceoccur_v2)="Altered consciousness / confusion"
label(data$seizures_cecoccur_v2)="Seizures"
label(data$abdopain_ceoccur_v2)="Abdominal pain"
label(data$vomit_ceoccur_v2)="Vomiting / Nausea"
label(data$diarrhoea_ceoccur_v2)="Diarrhoea"
label(data$conjunct_ceoccur_v2)="Conjunctivitis"
label(data$rash_ceoccur_v2)="Skin rash"
label(data$skinulcers_ceoccur_v2)="Skin ulcers"
label(data$lymp_ceoccur_v2)="Lymphadenopathy"
label(data$bleed_ceoccur_v2)="Bleeding (Haemorrhage)"
label(data$bleed_ceterm_v2)="If Bleeding (others)"
label(data$anosmia_ceoccur_v2)="Disturbance or loss of smell (Anosmia)"
label(data$no_symptoms)="None"
label(data$bleed_cetermy_v2)="If Yes to Bleeding, specify site(s)"
label(data$admission_signs_and_symptoms_complete)="Complete?"
label(data$chrincard)="Chronic cardiac disease, including congenital heart disease (not hypertension)"
label(data$hypertension_mhyn)="Hypertension (physician diagnosed)"
label(data$chronicpul_mhyn)="Chronic pulmonary disease (not asthma)"
label(data$asthma_mhyn)="Asthma (physician diagnosed) "
label(data$renal_mhyn)="Chronic kidney disease"
label(data$modliv)="Moderate or severe liver disease"
label(data$mildliver)="Mild Liver disease "
label(data$chronicneu_mhyn)="Chronic neurological disorder "
label(data$malignantneo_mhyn)="Malignant neoplasm "
label(data$chronichaemo_mhyn)="Chronic hematologic disease "
label(data$aidshiv_mhyn)="AIDS/HIV "
label(data$obesity_mhyn)="Obesity (as defined by clinical staff)"
label(data$diabetes_type_mhyn)="Diabetes and Type"
label(data$diabetescom_mhyn)="Diabetes with complications"
label(data$diabetes_mhyn)="Diabetes without complications "
label(data$rheumatologic_mhyn)="Rheumatologic disorder "
label(data$dementia_mhyn)="Dementia"
label(data$malnutrition_mhyn)="Malnutrition"
label(data$smoking_mhyn)="Smoking"
label(data$other_mhyn)="Other relevant risk factors?"
label(data$otherrisktext)="Other  relevant risk factor; Specify"
label(data$vulnerable_transplant)="Solid organ transplant recipients:   "
label(data$vulnerable_cancers)="People with specific cancers: • people with cancer who are undergoing active chemotherapy • people with lung cancer who are undergoing radical radiotherapy • people with cancers of the blood or bone marrow such as leukaemia, lymphoma or myeloma who are at any stage of treatment • people having immunotherapy or other continuing antibody treatments for cancer • people having other targeted cancer treatments which can affect the immune system, such as protein kinase inhibitors or PARP inhibitors • people who have had bone marrow or stem cell transplants in the last 6 months, or who are still taking immunosuppression drugs "
label(data$vulnerable_copd)="People with severe respiratory conditions including all cystic fibrosis, severe asthma requiring daily oral steroid or injectable maintenance therapy and severe chronic obstructive pulmonary requiring oxygen (COPD):"
label(data$vulnerable_scid)="People with rare diseases and inborn errors of metabolism that significantly increase the risk of infections (such as Severe combined immunodeficiency (SCID), homozygous sickle cell):   "
label(data$vulnerable_immuno)="People on immunosuppression therapies sufficient to significantly increase risk of infection: "
label(data$vulnerable_preg)="Women who are pregnant with significant heart disease, congenital or acquired:"
label(data$comorbidities_complete)="Complete?"
label(data$immno_cmtrt)="Treated with immunosuppressants, including oral (not inhaled) corticosteroids prior to admission / Immunosuppressant e.g. oral (not inhaled) corticosteroids (not low dose hydrocortisone)                             "
label(data$infect_cmtrt)="Treated with anti-infectives  for illness episode prior to admission?"
label(data$infect)="If yes,  please specify anti infectives"
label(data$chronic_ace_cmoccur)="Angiotensin converting enzyme inhibitors (ACEI)?"
label(data$chronic_arb_cmoccur)="Angiotensin II receptor blockers (ARBs)?"
label(data$chronic_nsaid_cmoccur)="Non-steroidal anti-inflammatory (NSAID)?"
label(data$clinical_frailty)="Clinical frailty score"
label(data$preadmission_treatment_complete)="Complete?"
label(data$no_medication)="No medication currently or within the last 14 days"
label(data$cmtrt)="Medication name (generic name preferred)  "
label(data$cmdose)="Dose"
label(data$cmdose_unit)="Dose unit"
label(data$cmdose_unitoth)="Specify other Dose unit"
label(data$cmdosfrq)="Dose Frequency"
label(data$cmdosfrqoth)="Specify other dose frequency"
label(data$cmroute)="Route"
label(data$cmrouteoth)="Specify other route"
label(data$preadmission_medication_complete)="Complete?"
label(data$reinf_pcr)="Did the patient have a positive PCR (virus) test for SARS-CoV-2?  "
label(data$reinf_pcrd)="If yes (to positive PCR (virus) test for SARS-CoV-2), enter date of positive test: "
label(data$reinf_antigen)="Did the patient have a positive antigen (virus) test for SARS-CoV-2?   "
label(data$reinf_antigend)="If yes (to positive antigen (virus) test for SARS-CoV-2), enter date of positive test: "
label(data$reinf_serology)="Did the patient have a positive serology (antibody) test for SARS-CoV-2?  "
label(data$reinf_serologyd)="If yes (to positive serology (antibody) test for SARS-CoV-2), enter date of positive test: "
label(data$reinf_cestdat)="Symptom onset date of first/earliest symptom for previous infection: "
label(data$reinf_asymptomatic)="Asymptomatic"
label(data$fever_ceoccur_v3)="History of fever"
label(data$cough_ceoccur_v3)="Cough"
label(data$coughsput_ceoccur_v3)="Cough: with sputum production"
label(data$coughhb_ceoccur_v3)="Cough: bloody sputum / haemoptysis"
label(data$sorethroat_ceoccur_v3)="Sore throat"
label(data$runnynose_ceoccur_v3)="Runny nose (Rhinorrhoea)"
label(data$earpain_ceoccur_v3)="Ear pain"
label(data$wheeze_ceoccur_v3)="Wheezing"
label(data$chestpain_ceoccur_v3)="Chest pain"
label(data$myalgia_ceoccur_v3)="Muscle aches (Myalgia)"
label(data$jointpain_ceoccur_v3)="Joint pain (Arthralgia)"
label(data$fatigue_ceoccur_v3)="Fatigue / Malaise"
label(data$shortbreath_ceoccur_v3)="Shortness of breath (Dyspnoea)"
label(data$ageusia_ceoccur_v3)="Disturbance or loss of taste (Ageusia )"
label(data$lowerchest_ceoccur_v3)="Lower chest wall indrawing"
label(data$headache_ceoccur_v3)="Headache"
label(data$confusion_ceoccur_v3)="Altered consciousness / confusion"
label(data$seizures_cecoccur_v3)="Seizures"
label(data$abdopain_ceoccur_v3)="Abdominal pain"
label(data$vomit_ceoccur_v3)="Vomiting / Nausea"
label(data$diarrhoea_ceoccur_v3)="Diarrhoea"
label(data$conjunct_ceoccur_v3)="Conjunctivitis"
label(data$rash_ceoccur_v3)="Skin rash"
label(data$skinulcers_ceoccur_v3)="Skin ulcers"
label(data$lymp_ceoccur_v3)="Lymphadenopathy"
label(data$bleed_ceoccur_v3)="Bleeding (Haemorrhage)"
label(data$anosmia_ceoccur_v3)="Disturbance or loss of smell (Anosmia)"
label(data$no_symptoms_v3)="None"
label(data$bleed_cetermy_v3)="If Yes to Bleeding, specify site(s)"
label(data$reinf_pre_adm_hosp)="Admitted to hospital"
label(data$reinf_pre_oxygen)="Treated with oxygen"
label(data$reinf_pre_hdu_icu)="Admitted to HDU/ICU"
label(data$reinf_pre_inv_vent)="Receive invasive ventilation"
label(data$reinf_pre_ecmo)="Receive extracorporeal membrane oxygenation (ECMO)"
label(data$reinf_pre_dexameth)="Treated with: Dexamethasone"
label(data$reinf_pre_steroid)="Any other steroid"
label(data$reinf_pre_tociliz)="Tocilizumab"
label(data$reinf_pre_remdesivir)="Remdesivir"
label(data$reinf_pre_conv_plasma)="Convalescent plasma"
label(data$reinf_pre_lopin_riton)="Lopinavir/Ritonavir"
label(data$reinf_pre_interferon)="Interferon"
label(data$reinf_pre_chloro_hchlo)="Chloroquine/Hydroxychloroquine"
label(data$reinfection_form_complete)="Complete?"
label(data$daily_dsstdat)="DATE OF ASSESSMENT "
label(data$daily_hoterm)="Current admission to ICU/ITU/IMC/HDU"
label(data$daily_temp_vsorres)="Highest Temperature"
label(data$daily_temp_vsorresu)="Highest Temperature Unit"
label(data$daily_temp_vsorresnk)="Highest Temperature N/K"
label(data$daily_fi02_lbyn)="FiO2  available / Any supplemental oxygen?"
label(data$daily_fio2_lborres)="FiO2 (0.21-1.0)"
label(data$daily_fio2b_lborres)="FiO2 %"
label(data$daily_fio2c_lborres)="FiO2 L/min (highest)"
label(data$daily_sa02_lbyn)="SaO2 (Oxygen saturation in newer CRF) available?"
label(data$daily_sao2_lborres)="SaO2 (SpO2 on the newer CRF)"
label(data$daily_pao2_lbyn)="PaO2 available?"
label(data$daily_pao2_lborres)="PaO2:"
label(data$daily_pao2_lborresu)="PaO2 unit:"
label(data$daily_pao2_lbspec)="PaO2 sample type"
label(data$daily_pco2_lbyn)="PCO2 available?"
label(data$daily_pco2_lborres)="PCO2 "
label(data$daily_pco2_lborresu)="PCO2 Unit"
label(data$daily_ph_lbyn)="pH available"
label(data$daily_ph_lborres)="pH"
label(data$daily_hco3_lbyn)="HCO3-  available"
label(data$daily_hco3_lborres)="HCO3- "
label(data$daily_hco3_lborresu)="HCO3- Unit"
label(data$daily_baseex_lbyn)="Base excess available"
label(data$daily_baseex_lborres)="Base excess"
label(data$daily_rr)="RR breaths per minute (highest)"
label(data$avpu_vsorres)="AVPU"
label(data$daily_gcs_lbyn)="Glasgow Coma Score available?"
label(data$daily_gcs_vsorres)="Glasgow Coma Score:"
label(data$systolic_vsyn)="Systolic Blood Pressure available?"
label(data$systolic_vsorres)="Systolic Pressure"
label(data$diastolic_vsyn)="Diastolic Blood Pressure available?"
label(data$diastolic_vsorres)="Diastolic Pressure"
label(data$daily_meanart_lbyn)="Mean Arterial Pressure available?"
label(data$daily_meanart_vsorres)="Mean Arterial Pressure:"
label(data$daily_urine_lbyn)="Urine flow rate available?"
label(data$daily_urine_lborres)="Urine flow rate:"
label(data$daily_noninvasive_prtrt)="Non-invasive ventilation (e.g. NIV (if shorter CRF), BIPAP, CPAP)?"
label(data$daily_invasive_prtrt)="Invasive ventilation?"
label(data$daily_nasaloxy_cmtrt)="High-flow nasal canula?"
label(data$daily_ecmo_prtrt)="ECLS/ECMO"
label(data$daily_rrt_cmtrt)="Dialysis / Hemofiltration?"
label(data$daily_inotrope_cmyn)="Any vasopressor / inotropic support?"
label(data$daily_dopless5_cmtrt)="Dopamine <  5 µg/min OR Dobutamine OR Milrinone OR Levosimendan:"
label(data$daily_dop5to15_cmtrt)="Dopamine 5-15 µg/min OR Epinephrine/Norepinephrine <  0.1 µg/kg/min OR Vasopressin OR Phenylephrine:"
label(data$daily_dopgr15_cmtrt)="Dopamine > 15 µg/min OR Epinephrine/Norepinephrine > 0.1 µg/kg/min:"
label(data$daily_neuro_cmtrt)="Neuromuscular blocking agents?"
label(data$daily_nitritc_cmtrt)="Inhaled Nitric Oxide ?"
label(data$daily_prone_cmtrt)="Prone Positioning"
label(data$daily_trach_prperf)="Tracheostomy inserted?"
label(data$daily_prperf)="Other intervention or procedure?"
label(data$daily_other_prtrt)="If YES other intervention, Specify,"
label(data$remdesivir)="Is patient receiving Remdesivir through EAMS (Early Access to Medicine Scheme) criteria?     "
label(data$remdesivir_day)="Which day of Remdesivir therapy is this: (number)         "
label(data$remdesivir_last_dose)="Is this the intended last dose?"
label(data$daily_lbperf)="Results available for sample taken on the date in section 1 above ?"
label(data$daily_lbdat)="Date of  assessment"
label(data$daily_hb_lbyn)="Haemoglobin available"
label(data$daily_hbop_lborres)="Haemoglobin < or > (optional)"
label(data$daily_hb_lborres)="Haemoglobin"
label(data$daily_hb_lborresu)="Haemoglobin Unit"
label(data$daily_wbc_lbyn)="WBC count available"
label(data$daily_wbcop_lborres)="WBC count < or > (optional)"
label(data$daily_wbc_lborres)="WBC count"
label(data$daily_wbc_lborresu)="WBC Unit"
label(data$daily_lymp_lbyn)="Lymphocyte count available"
label(data$daily_lympop_lbyn)="Lymphocyte count < or > (optional)"
label(data$daily_lymp_lborres)="Lymphocyte count"
label(data$daily_lymp_lborresu)="Lymphocyte count Unit"
label(data$daily_neutro_lbyn)="Neutrophil count available"
label(data$daily_neutroop_lbyn)="Neutrophil count < or > (optional)"
label(data$daily_neutro_lborres)="Neutrophil count"
label(data$daily_neutro_lborresu)="Neutrophil count Unit"
label(data$daily_haematocrit_lbyn)="Haematocrit available"
label(data$daily_haematocrit_lborres)="Haematocrit"
label(data$daily_haematocrit_lborresu)="Haematocrit Unit"
label(data$daily_plt_lbyn)="Platelets available"
label(data$daily_pltop_lborres)="Platelet count < or > (optional)"
label(data$daily_plt_lborres)="Platelet Count"
label(data$daily_plt_lborresu)="Platelets Unit"
label(data$daily_aptt_lbyn)="APTT/APTR available"
label(data$daily_apttop_lborres)="APTT/APTR < or > (optional)"
label(data$daily_aptt_lborres)="APTT/APTR"
label(data$daily_pt_inr_lbyn)="PT or INR available"
label(data$daily_ptop_lborres)="PT < or > (optional)"
label(data$daily_pt_lborres)="PT "
label(data$daily_inrop_lborres)="INR < or > (optional)"
label(data$daily_inr_lborres)="INR"
label(data$daily_esr_lbyn)="ESR available"
label(data$daily_esrop_lbyn)="ESR < or > (optional)"
label(data$daily_esr_lborres)="ESR"
label(data$daily_ferr_lbyn)="Ferritin available"
label(data$daily_ferrop_lbyn)="Ferritin < or > (optional)"
label(data$daily_ferr_lborres)="Ferritin"
label(data$daily_ferr_lborresu)="Ferritin Unit"
label(data$daily_alt_lbyn)="ALT / SGPT available"
label(data$daily_altop_lbyn)="ALT / SGPT < or > (optional)"
label(data$daily_alt_lborres)="ALT / SGPT"
label(data$daily_bil_lbyn)="Total Bilirubin available"
label(data$daily_bilop_lborres)="Total Bilirubin < or > (optional)"
label(data$daily_bil_lborres)="Total Bilirubin"
label(data$daily_bil_lborresu)="Total Bilirubin Unit"
label(data$daily_ast_lbyn)="AST/SGOT available"
label(data$daily_astop_lborres)="AST/SGOT < or > (optional)"
label(data$daily_ast_lborres)="AST/SGOT"
label(data$daily_glucose_lbyn)="Glucose available"
label(data$daily_glucoseop_lborres)="Glucose < or > (optional)"
label(data$daily_glucose_lborres)="Glucose"
label(data$daily_glucose_lborresu)="Glucose Unit "
label(data$daily_bun_lbyn)="Blood Urea Nitrogen (urea) available"
label(data$daily_bunop_lborres)="Blood Urea Nitrogen (urea) < or > (optional)"
label(data$daily_bun_lborres)="Blood Urea Nitrogen (urea)"
label(data$daily_bun_lborresu)="Blood Urea Nitrogen (urea) Unit"
label(data$daily_lactate_lbyn)="Lactate available"
label(data$daily_lactateop_lbyn)="Lactate < or > (optional)"
label(data$daily_lactate_lborres)="Lactate"
label(data$daily_lactate_lborresu)="Lactate Unit"
label(data$daily_ldh_lbyn)="Lactate dehydrogenase (LDH) available?"
label(data$daily_ldhop_lborres)="LDH < or > (optional)"
label(data$daily_ldh_lborres)="Lactate dehydrogenase (LDH) "
label(data$daily_cpk_lby)="Creatine Phosphokinase (CPK) available?"
label(data$daily_cpkop_lbyn_2)="Creatine Phosphokinase (CPK)  < or > (optional)"
label(data$daily_cpk_lbyn_2)="Creatine Phosphokinase (CPK) "
label(data$daily_creat_lbyn)="Creatinine available"
label(data$daily_creatop_lborres)="Creatinine  < or > (optional)"
label(data$daily_creat_lborres)="Creatinine"
label(data$daily_creat_lborresu)="Creatinine Unit"
label(data$daily_sodium_lbyn)="Sodium  available "
label(data$daily_sodiumop_lborres)="Sodium < or > (optional)"
label(data$daily_sodium_lborres)="Sodium"
label(data$daily_sodium_lborresu)="Sodium Unit"
label(data$daily_potassium_lbyn)="Potassium available "
label(data$daily_potassiumop_lborres)="Potassium < or > (optional)"
label(data$daily_potassium_lborres)="Potassium"
label(data$daily_potassium_lborresu)="Potassium Unit"
label(data$daily_procal_lbyn)="Procalcitonin available"
label(data$daily_procalop_lborres)="Procalcitonin < or > (optional)"
label(data$daily_procal_lborres)="Procalcitonin"
label(data$daily_crp_lbyn)="C-reactive protein (CRP) available"
label(data$daily_crpop_lborres)="C-reactive protein (CRP) < or > (optional)"
label(data$daily_crp_lborres)="C-reactive protein (CRP)"
label(data$daily_crp_lborresu)="C-reactive protein (CRP) Unit"
label(data$daily_egfr_lbyn)="eGFR available"
label(data$daily_egfrop_lborres)="eGFR < or > (optional)"
label(data$daily_egfr_lborres)="eGFR"
label(data$daily_egfr_equation___1)="eGFR equation/formula (choice=CKD-EPI)"
label(data$daily_egfr_equation___2)="eGFR equation/formula (choice=MDRD)"
label(data$daily_egfr_equation___3)="eGFR equation/formula (choice=CG)"
label(data$daily_egfr_equation___4)="eGFR equation/formula (choice=N/K)"
label(data$daily_hba1cop_lborres)="Most recent HbA1c < or > (optional)"
label(data$daily_hba1c_lborres)="Most recent HbA1c"
label(data$daily_hba1c_lborresu)="Most recent HbA1c Unit"
label(data$daily_hba1c_lborresnk)="Most recent HbA1c N/K"
label(data$daily_hba1c_lborresd)="Date of HbA1c"
label(data$xray_prperf)="X-Ray/CT performed (this is chest X-ray if shorter CRF)?"
label(data$infiltrates_faorres)="If yes, were infiltrates present?"
label(data$daily_samples)="Was a biological sample taken for research on this day?"
label(data$daily_samples_kitno)="If yes, please record the KIT number"
label(data$daily_form_complete)="Complete?"
label(data$mbperf)="Was pathogen testing done during this illness episode?"
label(data$cov19sars_mbyn_v2)="COVID-19 / SARS-CoV-2"
label(data$influ_mbyn)="Influenza: "
label(data$influ_mbyn_v2)="Influenza"
label(data$influ_mbcat)="If Yes to Influenza"
label(data$influothera_mborres)="Other influenza A, specify:"
label(data$influother_mborres)="Other influenza, specify:"
label(data$corna_mbcat)="Coronavirus: "
label(data$corna_mbcaty)="If Yes to Coronavirus:"
label(data$coronaother_mborres)="IF Other coronavirus; Specify:"
label(data$rsv_mbcat)="RSV"
label(data$rsv_mbcat_v2)="Respiratory syncytial virus (RSV)"
label(data$adeno_mbcat)="Adenovirus"
label(data$adeno_mbcat_v2)="Adenovirus"
label(data$bact_mborres)="Bacteria"
label(data$bacteria_mborres)="If yes, specify bacteria (list all below)"
label(data$clinicalpneu_mborres)="Clinical pneumonia: "
label(data$infectuk_mborres)="IF NONE OF THE ABOVE: Suspected Non-infective:"
label(data$pcr_path_diag___0)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=None positive)"
label(data$pcr_path_diag___1)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Mycoplasma pneumoniae positive)"
label(data$pcr_path_diag___2)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Legionella species (L. pneumophila or L. longbeachae) positive)"
label(data$pcr_path_diag___3)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Metapneumovirus positive)"
label(data$pcr_path_diag___4)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Parainfluenza virus positive)"
label(data$pcr_path_diag___5)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Coronavirus HKU1/OC43/229E/NL63 (**NOT COVID-19**) positive)"
label(data$pcr_path_diag___6)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Bocavirus positive)"
label(data$pcr_path_diag___10)="Other respiratory PCR-diagnosed pathogens Tick all that apply (choice=Other - please specify)"
label(data$pcr_path_diago)="If selected Yes for Other respiratory PCR-diagnosed pathogen, specify"
label(data$other_mbyn)="Other Infectious Respiratory Diagnosis:  (complete for PRE_v9.7 CRF only)"
label(data$other_mborres)=" If YES: Other infectious respiratory diagnosis, specify:"
label(data$infectious_respiratory_disease_pathogen_diagnosis_complete)="Complete?"
label(data$daily_mbperf)="Pathogen testing done"
label(data$llimsno_bnum)="LIMS number"
label(data$mbdat)="Collection Date"
label(data$mbspec)="Bio specimen type"
label(data$other_mbspec)="If  OTHER; Specify"
label(data$mbmethod)="Laboratory Test Method"
label(data$other_mbmethod)="If Other Laboratory test method; Specify"
label(data$mborres)="Result"
label(data$mbtestcd)="Pathogen Detected (full name without abbreviations)"
label(data$mbspec_v2)="Type of test (for V9.9 CRF onwards there is no need to record Urine, CSF or Faeces (stool))"
label(data$mborres_v2)="Test result, select one:"
label(data$mbtestcd_nsth)="Organism - Nasal and / or throat swab"
label(data$mbtestcd_nstho)="Other Nasal and / or throat swab organism - specify"
label(data$mbtestcd_bc)="Organism - Blood culture"
label(data$mbtestcd_bco)="Other Blood Culture organism"
label(data$mbtestcd_sp)="Organism - Sputum"
label(data$mbtestcd_spo)="Other Sputum organism"
label(data$mbtestcd_drs)="Organism - Deep respiratory sample"
label(data$mbtestcd_drso)="Other Deep respiratory sample organism"
label(data$mbtestcd_ur)="Organism - Urine"
label(data$mbtestcd_uro)="Other Urine organism"
label(data$mbtestcd_csf)="Organism - Cerebrospinal fluid (CSF)"
label(data$mbtestcd_csfo)="Other Cerebrospinal fluid (CSF) organism"
label(data$mbtestcd_fst)="Organism - Faeces (stool)"
label(data$mbtestcd_fsto)="Other Faeces (stool) organism"
label(data$mbdat_v2)="Date sample obtained"
label(data$mbspec_v3)="Other sample type with Positive results: Sample type This does not need to be recorded for V9.9 of the CRF onwards"
label(data$mbtestcd_v3)="Other sample type with Positive results: Organism"
label(data$mbdat_v3)="Other sample type with Positive results : Date sample obtained"
label(data$infectious_respiratory_disease_pathogen_testing_complete)="Complete?"
label(data$antiviral_cmyn)="Antiviral agent?"
label(data$antiviral_cmtrt___1)="IF YES to antiviral agent (choice=Ribavirin)"
label(data$antiviral_cmtrt___2)="IF YES to antiviral agent (choice=Lopinavir/Ritonvir)"
label(data$antiviral_cmtrt___3)="IF YES to antiviral agent (choice=Interferon alpha)"
label(data$antiviral_cmtrt___4)="IF YES to antiviral agent (choice=Interferon beta)"
label(data$antiviral_cmtrt___7)="IF YES to antiviral agent (choice=Chloroquine / Hydroxychloroquine)"
label(data$antiviral_cmtrt___10)="IF YES to antiviral agent (choice=Oseltamivir (Tamiflu))"
label(data$antiviral_cmtrt___11)="IF YES to antiviral agent (choice=Zanamivir)"
label(data$antiviral_cmtrt___8)="IF YES to antiviral agent (choice=Remdesivir)"
label(data$antiviral_cmtrt___9)="IF YES to antiviral agent (choice=IL6 inhibitor)"
label(data$antiviral_cmtrt___5)="IF YES to antiviral agent (choice=Neuraminidase inhibitors)"
label(data$antiviral_cmtrt___6)="IF YES to antiviral agent (choice=Other)"
label(data$remdes_cmtrt_first)="If  YES to Remdesivir: first dose"
label(data$remdes_cmtrt_last)="If  YES to Remdesivir: last dose"
label(data$il6_cmtrt)="If  YES to IL6 inhibitor: which"
label(data$il6_cmtrt_other)="Specify other IL6 inhibitor:"
label(data$il6_cmtrt_first)="If  YES to  IL6 inhibitor: first dose"
label(data$il6_cmtrt_last)="If  YES to IL6 inhibitor: last dose"
label(data$neuro_cmtrt)="If  Neuraminidase inhibitors; Specify which"
label(data$othantiviral_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral2_cmyn)="Would you like to add another antiviral?"
label(data$othhantiviral2_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral3_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral3_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral4_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral4_cmtrt)="If  Other antiviral agent; Specify type"
label(data$othantiviral5_cmyn)="Would you like to add another antiviral?"
label(data$othantiviral5_cmtrt)="If  Other antiviral agent; Specify type"
label(data$antibiotic_cmyn)="Antibiotic agent?"
label(data$antibiotic_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic2_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic2_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic3_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic3_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic4_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic4_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic5_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic5_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic6_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic6_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$antibiotic7_cmyn)="Would you like to add another antibiotic?"
label(data$antibiotic7_cmtrt)="IF YES to antibiotic agent; Specify type"
label(data$corticost_cmyn)="Corticosteroid agent?"
label(data$corticost_cmtrt_type)="If YES to Corticosteroid, please confirm type: "
label(data$corticost_cmtrt)="If YES to Corticosteroid, specify type/name or details of Other corticosteroid:"
label(data$corticost_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost_cmdose)="If YES to Corticosteroid, specify dose"
label(data$corticost2_cmyn)="Would you like to add another Corticosteroid agent?"
label(data$corticost2_cmtrt_type)="If YES to Corticosteroid, please confirm type: "
label(data$corticost2_cmtrt)="If YES to Corticosteroid, specify type/name or details of Other corticosteroid:"
label(data$corticost2_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost2_cmdose)="If YES to Corticosteroid, specify dose"
label(data$corticost3_cmyn)="Would you like to add another Corticosteroid agent?"
label(data$corticost3_cmtrt_type)="If YES to Corticosteroid, please confirm type: "
label(data$corticost3_cmtrt)="If YES to Corticosteroid, specify type/name or details of Other corticosteroid:"
label(data$corticost3_cmroute)="If YES to Corticosteroid, specify Route"
label(data$corticost3_cmdose)="If YES to Corticosteroid, specify dose"
label(data$dexamethasone)="Dexamethasone 6mg once per day?"
label(data$dexamethasone_dose)="Dexamethasone Dose in milligrams (mg)"
label(data$dexamethasone_freq)="Dexamethasone Frequency "
label(data$dexamethasone_other_freq)="Dexamethasone, specify Other frequency "
label(data$dexamethasone_route)="If Yes to Dexamethasone, specify Route:"
label(data$antifung_cmyn)="Antifungal agent?"
label(data$antifungal_cmtrt)="IF YES to antifungal agent; Specify which"
label(data$offlabel_cmyn)="Off-label / Compassionate Use medications?  "
label(data$offlabel_cmtrt)="IF YES to Off-label / Compassionate Use medications; Specify which"
label(data$interleukin_cmyn)="Interleukin inhibitors"
label(data$interleukin_cmtrt)="IF YES to Interleukin inhibitors; Specify which"
label(data$conv_plasma_cmyn)="Convalescent plasma"
label(data$icu_hoterm)="ICU or High Dependency admission"
label(data$icu_no)="If No to ICU or High Dependency Unit admission:"
label(data$icu_hostdat)="Date of ICU/HDU admission:"
label(data$icu_hostdatnk)="Date of ICU/HDU admission N/K"
label(data$icu_hoendat)="Date of ICU/HDU discharge:"
label(data$icu_hoendatnk)="Date of discharge N/K"
label(data$icu_hostdat2)="Date of ICU/HDU admission 2:"
label(data$icu_hostdat2_nk)="Date of ICU/HDU admission 2 N/K"
label(data$icu_hoendat2)="Date of ICU/HDU discharge 2:"
label(data$icu_hoendat2_nk)="Date of ICU/HDU discharge 2 N/K"
label(data$icu_hostdat3)="Date of ICU/HDU admission 3:"
label(data$icu_hostdat3_nk)="Date of ICU/HDU admission 3 N/K"
label(data$icu_hoendat3)="Date of ICU/HDU discharge 3:"
label(data$icu_hoendat3_nk)="Date of ICU/HDU discharge 3 N/K"
label(data$icu_hostillin)="Still in ICU/HDU"
label(data$hodur)="If YES, total duration (days)"
label(data$oxygen_cmoccur)="Oxygen therapy"
label(data$oxygenhf_cmoccur)="High-flow nasal canula?"
label(data$noninvasive_proccur)="Non-invasive ventilation ? (e.g. BIPAP, CPAP)"
label(data$invasive_proccur)="Invasive ventilation (Any intubation) ?"
label(data$pronevent_prtrt)="Prone ventilation"
label(data$inhalednit_cmtrt)="Inhaled Nitric Oxide"
label(data$tracheo_prtrt)="Tracheostomy inserted"
label(data$extracorp_prtrt)="Extracorporeal (ECMO) support"
label(data$rrt_prtrt)="Renal replacement therapy (RRT) or dialysis"
label(data$inotrop_cmtrt)="Inotropes / vasopressors"
label(data$invasive_prdur)="If yes to Invasive ventilation; confirm duration "
label(data$invasive_still_on)="If yes to Invasive ventilation - still on it"
label(data$excorp_prdur)="If YES to Extracorporeal (ECMO) support; confirm duration"
label(data$excorp_still_on)="If yes to Extracorporeal (ECMO) support - still on it"
label(data$rrt_totdur)="If YES to RRT or dialysis, total duration"
label(data$rrt_still_on)="If YES to RRT or dialysis - still on it"
label(data$inotrope_cmdur)="If YES to Inotropes/vasopressors; confirm duration"
label(data$inotrope_still_on)="If YES to Inotropes/vasopressors - still on them"
label(data$other_cmyn)="OTHER intervention or procedure"
label(data$other_cm)="IF  YES OTHER intervention or procedure; Specify"
label(data$bloodgroup)="Blood Group (please check past as well as current medical record)"
label(data$treatment_complete)="Complete?"
label(data$vrialpneu_ceoccur)="Viral Pneumonia"
label(data$bactpneu_ceoccur)="Bacterial pneumonia"
label(data$ards_ceoccur)="Acute Respiratory Syndrome"
label(data$cryptogenic_ceterm)="Cryptogenic organizing pneumonia (COP)"
label(data$pneumothorax_ceterm)="Pneumothorax"
label(data$pleuraleff_ceterm)="Pleural effusion"
label(data$bronchio_ceterm)="Bronchiolitis"
label(data$meningitis_ceterm)="Meningitis / Encephalitis"
label(data$seizure_ceterm)="Seizure"
label(data$stroke_ceterm)="Stroke / Cerebrovascular accident"
label(data$neuro_comp)="Other neurological complication"
label(data$heartfailure_ceterm)="Congestive heart failure"
label(data$endocarditis_aeterm)="Endocarditis / Myocarditis Pericarditis (for newer CRF this option covers Endocarditis only)"
label(data$myocarditis_ceterm)="Myocarditis / Pericarditis"
label(data$cardiomyopathy_ceterm)="Cardiomyopathy"
label(data$arrhythmia_ceterm)="Cardiac arrhythmia"
label(data$ischaemia_ceterm)="Cardiac ischemia"
label(data$cardiacarrest_ceterm)="Cardiac arrest"
label(data$bacteraemia_ceterm)="Bacteraemia"
label(data$coagulo_ceterm)="Coagulation disorder / Disseminated intravascular coagulation"
label(data$dvt_ceterm)="Deep vein thrombosis"
label(data$pulmthromb_ceterm)="Pulmonary thromboembolism"
label(data$aneamia_ceterm)="Anaemia"
label(data$rhabdomyolsis_ceterm)="Rhabdomyolysis / Myositis"
label(data$renalinjury_ceterm)="Acute renal injury / Acute renal failure"
label(data$gastro_ceterm)="Gastrointestinal hemorrhage"
label(data$pancreat_ceterm)="Pancreatitis"
label(data$liverdysfunction_ceterm)="Liver dysfunction"
label(data$hyperglycemia_aeterm)="Hyperglycaemia"
label(data$hypoglycemia_ceterm)="Hypoglycaemia"
label(data$other_ceoccur)="Other"
label(data$other_ceterm)="If  Other; Specify"
label(data$complications_complete)="Complete?"
label(data$recruitment)="Is/Has the participant being recruited to a trial or multi-centre study during the period of their current illness (including initiation in the community and hospital)?"
label(data$study_1_name)="If YES, specify name of study:   "
label(data$study_1_id)="Study Participant ID:   "
label(data$study_2)="Add another study?"
label(data$study_2_name)="If YES, specify name of study: "
label(data$study_2_id)="Study Participant ID: "
label(data$study_3)="Add another study? "
label(data$study_3_name)="If YES, specify name of study: "
label(data$study_3_id)="Study Participant ID: "
label(data$study_participation_complete)="Complete?"
label(data$dsterm)="Outcome:"
label(data$dshosp)="If hospitalised:"
label(data$dsstdtcyn)="Is the Outcome date known"
label(data$dsstdtc)="Outcome date"
label(data$suppds_qval)="If Discharged alive: Ability to self-care at discharge versus before illness"
label(data$oxygen_proccur)="Oxygen therapy"
label(data$renal_proccur)="Dialysis / renal treatment?"
label(data$other_cmoccur)="Other intervention or procedure?"
label(data$other_cmtrt)="If YES: Specify (multiple permitted)"
label(data$siteid)="If Transferred: Facility name"
label(data$siteidnk)="If Transferred: Facility name N/K"
label(data$siteyn)="If Transferred: Is the transfer facility a study site?"
label(data$subjidcat)="If a Study Site: Participant number at new facility"
label(data$transfer_subjid)="If Different, Participant number at the new facility (CPMS Site code (hypen) four digit number patient number e.g Y0401-0001)."
label(data$outcome_complete)="Complete?"
label(data$dsterm_v2)="Outcome"
label(data$dsstdtc_v2)="Outcome date"
label(data$dsstdtc_v2_nk)="Outcome date N/K"
label(data$suppds_qval_v2)="Ability to self-care at discharge versus before illness:  "
label(data$oxygen_proccur_v2)="Post-discharge treatment: Oxygen therapy"
label(data$siteid_v2)="If Transferred: Facility name"
label(data$siteid_v2_nk)="If Transferred: Facility name N/K"
label(data$siteyn_v2)="If transferred, is the transfer facility a study site? "
label(data$siteyn_v3)=" If a Study Site: Participant number at new facility "
label(data$subjidcat_v2)=" If a Study Site: Participant # at new facility "
label(data$final_outcome_complete)="Complete?"
label(data$core_addinfo)="Additional Information"
label(data$core_additional_information_complete)="Complete?"
label(data$withddat)="Date of withdrawal:"
label(data$withdtype)="Type of withdrawal:"
label(data$withdreas)="Other type of withdrawal:"
label(data$reason_for_withdrawal)="Reason for withdrawal:"
label(data$withdrawal_form_complete)="Complete?"
label(data$consent_given)="Any mode of Consent or Assent Given : "
label(data$consent_daterec)="Date received:"
label(data$consent_mode___1)="Mode of consent (check all that apply):  (choice=Adult)"
label(data$consent_mode___2)="Mode of consent (check all that apply):  (choice=Adult Extra Convalescent Sampling)"
label(data$consent_mode___3)="Mode of consent (check all that apply):  (choice=Adult BioAID)"
label(data$consent_mode___4)="Mode of consent (check all that apply):  (choice=Consultee)"
label(data$consent_mode___5)="Mode of consent (check all that apply):  (choice=Witnessed)"
label(data$consent_mode___6)="Mode of consent (check all that apply):  (choice=Telephone)"
label(data$consent_mode___7)="Mode of consent (check all that apply):  (choice=Next of Kin (Scotland only))"
label(data$consent_mode___8)="Mode of consent (check all that apply):  (choice=Adult Regained Capacity  (Scotland only))"
label(data$consent_mode___9)="Mode of consent (check all that apply):  (choice=Young Person 12-18y)"
label(data$consent_mode___10)="Mode of consent (check all that apply):  (choice=Child under 12y)"
label(data$consent_mode___11)="Mode of consent (check all that apply):  (choice=Parent/Guardian)"
label(data$consent_optcondit___1)="Agreement to optional conditions of consent (check all that apply):  (choice=Other unrelated use)"
label(data$consent_optcondit___2)="Agreement to optional conditions of consent (check all that apply):  (choice=Manufacture and Commercial lack)"
label(data$consent_optcondit___3)="Agreement to optional conditions of consent (check all that apply):  (choice=DNA RNA sequence sharing)"
label(data$consent_optcondit___4)="Agreement to optional conditions of consent (check all that apply):  (choice=Future contact by mobile phone text message (SMS))"
label(data$consent_phone)="If yes to future contact by mobile phone, enter UK mobile phone number: "
label(data$consent_ctu_dms_complete)="Complete?"
label(data$confirmed_negative_pcr)="Confirmed negative PCR on direct DM enquiry"
label(data$confirmed_negative_pcr_complete)="Complete?"
label(data$flw_consent_init)="I give my consent for the information I provide in this study to be used as advised"
label(data$flw_consent_3_6m)="I give my consent for this survey to be sent to me in 3 to 6 months time, and over the course of the next 3 years. "
label(data$flw_consent_phone)="I would like the possibility to be contacted by a nurse, doctor or researcher to discuss my COVID-19 illness further"
label(data$flw_phone)="If yes, please enter your telephone numbers below: Telephone:"
label(data$flw_mobile)="Mobile phone:"
label(data$flw_consent_signed)="Patient / Adults signature provided?"
label(data$flw_consent_date)="Date consent provided"
label(data$follow_up_consent_complete)="Complete?"
label(data$flw_survey_completed_by)="Survey completed by:"
label(data$flw_desceased_lost)="Participant deceased or lost to follow-up?"
label(data$flw_date_death)="Date of death"
label(data$flw_date_deathnk)="Date of death unknown"
label(data$flw_date_lost_flw)="Date lost to follow-up"
label(data$flw_date_lost_flwnk)="Date lost to follow-up unknown"
label(data$flw_survey_date)="Date you did the survey (DD/MM/YYYY): "
label(data$flw_date_symptoms)="Roughly what day did you first experience symptoms of COVID-19? "
label(data$flw_covid19_adm)="Were you admitted to hospital due to COVID-19? "
label(data$flw_date_adm)="Roughly at what date were you first admitted to hospital? "
label(data$flw_date_disch)="Roughly at what date were you first discharged from hospital?  "
label(data$flw_covid19_readm)="Have you been re-admitted to hospital due to COVID-19? "
label(data$flw_icu)="If admitted to hospital, were you ever admitted to intensive care (ICU/ITU)?  "
label(data$flw_hospitals)="Name of hospital/s"
label(data$flw_recovered)="Do you feel fully recovered from COVID-19?    "
label(data$flw_fever)="Have you felt feverish recently?  "
label(data$flw_last_fever)="If yes roughly when did you last feel feverish?"
label(data$flw_illness_cause___1)="If yes, what was the cause of your recent feverish illness? (choice=COVID-19)"
label(data$flw_illness_cause___2)="If yes, what was the cause of your recent feverish illness? (choice=Other respiratory infection (cough/cold/sore throat))"
label(data$flw_illness_cause___3)="If yes, what was the cause of your recent feverish illness? (choice=Stomach infection (diarrhoea/vomiting))"
label(data$flw_illness_cause___4)="If yes, what was the cause of your recent feverish illness? (choice=Urinary infection)"
label(data$flw_illness_cause___5)="If yes, what was the cause of your recent feverish illness? (choice=Other:)"
label(data$flw_illness_cause___6)="If yes, what was the cause of your recent feverish illness? (choice=Unknown)"
label(data$flw_illness_cause___7)="If yes, what was the cause of your recent feverish illness? (choice=Prefer not to say)"
label(data$flw_illness_other_cause)="specify (other cause of recent illness):"
label(data$flw_diag_dvt)="Deep vein thrombosis (DVT, Clot in leg)"
label(data$flw_diag_stroke)="Stroke or mini stroke/TIA"
label(data$flw_diag_pe)="Pulmonary embolism (PE, Clot in lung)"
label(data$flw_diag_heart_attack)="Heart attack"
label(data$flw_diag_kidney)="Kidney problems"
label(data$flw_diag_other)="Other condition (please specify)?  "
label(data$flw_headache)="Headache"
label(data$flw_balance)="Problems with balance"
label(data$flw_cough)="Persistent cough"
label(data$flw_limb_weakness)="Weakness in limbs"
label(data$flw_loss_smell)="Loss of smell"
label(data$flw_pain_breathing)="Pain on breathing"
label(data$flw_loss_taste)="Loss of taste"
label(data$flw_chest_pains)="Chest pains"
label(data$flw_breathless)="Shortness of breath/breathlessness"
label(data$flw_palpitations)="Palpitations (heart racing)"
label(data$flw_muscle_pain)="Persistent muscle pain"
label(data$flw_weight_loss)="Weight loss"
label(data$flw_joint_pain)="Joint pain or swelling"
label(data$flw_appetite)="Loss of appetite"
label(data$flw_swollen_ankle)="Swollen ankle(s)"
label(data$flw_stomach_pain)="Stomach pain"
label(data$flw_nausea)="Nausea/vomiting"
label(data$flw_sleeping)="Problems sleeping"
label(data$flw_constipation)="Constipation"
label(data$flw_diarrhoea)="Diarrhoea"
label(data$flw_lesions_toes)="Lumpy lesions (purple/pink/bluish) on toes/COVID-toes?"
label(data$flw_urine)="Problems passing urine"
label(data$flw_skin_rash)="Skin rash"
label(data$flw_one_side)="Cant fully move and / or feel one side of your body or face?"
label(data$flw_dizziness)="Dizziness/light headedness"
label(data$flw_swallow)="Problems swallowing or chewing"
label(data$flw_seeing)="Problems seeing"
label(data$flw_other_symp)="Any other NEW symptoms?"
label(data$flw_fainting)="Fainting/ blackouts"
label(data$flw_new_symptoms)="If yes (to any other NEW symptoms), specify:"
label(data$flw_ed)="Erectile dysfunction"
label(data$flw_cough_type)="If yes to Persistent cough - specify type:"
label(data$flw_rash_area___1)="If yes to Skin rash, please tick all body areas that apply: (choice=Face)"
label(data$flw_rash_area___2)="If yes to Skin rash, please tick all body areas that apply: (choice=Trunk (stomach or back))"
label(data$flw_rash_area___3)="If yes to Skin rash, please tick all body areas that apply: (choice=Arms)"
label(data$flw_rash_area___4)="If yes to Skin rash, please tick all body areas that apply: (choice=Legs)"
label(data$flw_rash_area___5)="If yes to Skin rash, please tick all body areas that apply: (choice=Buttocks)"
label(data$flw_rash_area___6)="If yes to Skin rash, please tick all body areas that apply: (choice=Toes)"
label(data$flw_rash_area___7)="If yes to Skin rash, please tick all body areas that apply: (choice=Fingers)"
label(data$flw_eq5d_mb_p)="MOBILITY"
label(data$flw_eq5d_sc_p)="SELF-CARE"
label(data$flw_eq5d_ua_p)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$flw_eq5d_pd_p)="PAIN/DISCOMFORT "
label(data$flw_eq5d_ad_p)="ANXIETY/DEPRESSION "
label(data$flw_eq5d_mb)="MOBILITY"
label(data$flw_eq5d_sc)="SELF-CARE"
label(data$flw_eq5d_ua)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$flw_eq5d_pd)="PAIN/DISCOMFORT "
label(data$flw_eq5d_ad)="ANXIETY/DEPRESSION "
label(data$flw_eq5d5l_vas)="• We would like to know how good or bad your health is TODAY. • This scale is numbered from 0 to 100. • 100 means the best health you can imagine. 0 means the worst health you can imagine. • Mark an X on the scale to indicate how your health is TODAY. • Now, please write the number you marked on the scale in the box below  YOUR HEALTH TODAY = "
label(data$flw_breathless_now___1)="(Breathless) Within the last 24 hours (choice=Not troubled by breathlessness except on strenuous exercise)"
label(data$flw_breathless_now___2)="(Breathless) Within the last 24 hours (choice=Short of breath when hurrying or when walking up a slight hill)"
label(data$flw_breathless_now___3)="(Breathless) Within the last 24 hours (choice=Walks slower than most people of my age because of breathlessness, or have to stop for breath when walking at own pace)"
label(data$flw_breathless_now___4)="(Breathless) Within the last 24 hours (choice=Stops for breath after walking 100 yards/ 90-100 metres, or after a few minutes on level ground)"
label(data$flw_breathless_now___5)="(Breathless) Within the last 24 hours (choice=Too breathless to leave the house, or breathless when dressing/undressing)"
label(data$flw_breathless_pre_c19___1)="(Breathless) Before your Covid 19 illness (choice=Not troubled by breathlessness except on strenuous exercise)"
label(data$flw_breathless_pre_c19___2)="(Breathless) Before your Covid 19 illness (choice=Short of breath when hurrying or when walking up a slight hill)"
label(data$flw_breathless_pre_c19___3)="(Breathless) Before your Covid 19 illness (choice=Walks slower than most people of my age because of breathlessness, or have to stop for breath when walking at own pace)"
label(data$flw_breathless_pre_c19___4)="(Breathless) Before your Covid 19 illness (choice=Stops for breath after walking 100 yards/ 90-100 metres, or after a few minutes on level ground)"
label(data$flw_breathless_pre_c19___5)="(Breathless) Before your Covid 19 illness (choice=Too breathless to leave the house, or breathless when dressing/undressing)"
label(data$flw_fatigue)="Please rate the intensity of your fatigue on average over the last 24 hours, on a scale from 0 - 10. Where: 0 = No fatigue 10 = Fatigue as bad as you can imagine"
label(data$flw_seeing_today)="Do you have difficulty seeing, even if wearing glasses? Today"
label(data$flw_seeing_pre_c19)="Do you have difficulty seeing, even if wearing glasses? Before your Covid 19 illness"
label(data$flw_hearing_today)="Do you have difficulty hearing, even if using a hearing aid? Today"
label(data$flw_hearing_pre_c19)="Do you have difficulty hearing, even if using a hearing aid? Before your Covid 19 illness"
label(data$flw_walking_today)="Do you have difficulty walking or climbing steps? Today"
label(data$flw_walking_pre_c19)="Do you have difficulty walking or climbing steps? Before your Covid 19 illness"
label(data$flw_remember_today)="Do you have difficulty remembering or concentrating? Today"
label(data$flw_remember_pre_c19)="Do you have difficulty remembering or concentrating? Before your Covid 19 illness"
label(data$flw_washing_today)="Do you have difficulty (with self-care such as) washing all over or dressing? Today"
label(data$flw_washing_pre_c19)="Do you have difficulty (with self-care such as) washing all over or dressing? Before your Covid 19 illness"
label(data$flw_comm_today)="Using your usual (customary) language, do you have difficulty communicating, for example understanding or being understood? Today"
label(data$flw_comm_pre_c19)="Using your usual (customary) language, do you have difficulty communicating, for example understanding or being understood? Before your Covid 19 illness"
label(data$flw_smoking)="Smoking"
label(data$flw_alcohol)="Drinking alcohol"
label(data$flw_healthy_eating)="Eating healthy food"
label(data$flw_phys_activ)="Physical activity (including walking & cycling)"
label(data$flw_walking_cycling)="Walking or cycling to work or school/college"
label(data$flw_employ_pre_c19___1)="Before you got COVID-19 what was your employment status?   (choice=Full-time employment)"
label(data$flw_employ_pre_c19___2)="Before you got COVID-19 what was your employment status?   (choice=Part time employment)"
label(data$flw_employ_pre_c19___3)="Before you got COVID-19 what was your employment status?   (choice=Furloughed)"
label(data$flw_employ_pre_c19___4)="Before you got COVID-19 what was your employment status?   (choice=Full time carer (children or other))"
label(data$flw_employ_pre_c19___5)="Before you got COVID-19 what was your employment status?   (choice=Unemployed)"
label(data$flw_employ_pre_c19___6)="Before you got COVID-19 what was your employment status?   (choice=Unable to work due to chronic illness)"
label(data$flw_employ_pre_c19___7)="Before you got COVID-19 what was your employment status?   (choice=Student)"
label(data$flw_employ_pre_c19___8)="Before you got COVID-19 what was your employment status?   (choice=Retired)"
label(data$flw_employ_pre_c19___9)="Before you got COVID-19 what was your employment status?   (choice=Medically retired)"
label(data$flw_employ_pre_c19___10)="Before you got COVID-19 what was your employment status?   (choice=Prefer not to say)"
label(data$flw_employ_chg)="What is your employment status today?          "
label(data$flw_employ_today___1)="If different, please describe your employment status today?  (choice=Full-time employment)"
label(data$flw_employ_today___2)="If different, please describe your employment status today?  (choice=Part time employment)"
label(data$flw_employ_today___3)="If different, please describe your employment status today?  (choice=Furloughed)"
label(data$flw_employ_today___4)="If different, please describe your employment status today?  (choice=Full time carer (children or other))"
label(data$flw_employ_today___5)="If different, please describe your employment status today?  (choice=Unemployed)"
label(data$flw_employ_today___6)="If different, please describe your employment status today?  (choice=Unable to work due to chronic illness)"
label(data$flw_employ_today___7)="If different, please describe your employment status today?  (choice=Student)"
label(data$flw_employ_today___8)="If different, please describe your employment status today?  (choice=Retired)"
label(data$flw_employ_today___9)="If different, please describe your employment status today?  (choice=Medically retired)"
label(data$flw_employ_today___10)="If different, please describe your employment status today?  (choice=Prefer not to say)"
label(data$flw_employ_chg_reason___1)="If different, why did you employment status change?  (choice=Poor health)"
label(data$flw_employ_chg_reason___2)="If different, why did you employment status change?  (choice=New caring responsibility)"
label(data$flw_employ_chg_reason___3)="If different, why did you employment status change?  (choice=Made redundant)"
label(data$flw_employ_chg_reason___4)="If different, why did you employment status change?  (choice=Working hours reduced by employer)"
label(data$flw_employ_chg_reason___5)="If different, why did you employment status change?  (choice=Other)"
label(data$flw_employ_chg_reason___6)="If different, why did you employment status change?  (choice=Prefer not to say)"
label(data$flw_employ_chg_other)="(If employment status has changed) specify other reason:"
label(data$flw_sex_at_birth)="Sex at Birth: "
label(data$flw_ethinicity___1)="Ethnicity (tick all that apply): (choice=White)"
label(data$flw_ethinicity___2)="Ethnicity (tick all that apply): (choice=Arab)"
label(data$flw_ethinicity___3)="Ethnicity (tick all that apply): (choice=Black)"
label(data$flw_ethinicity___4)="Ethnicity (tick all that apply): (choice=East Asian)"
label(data$flw_ethinicity___5)="Ethnicity (tick all that apply): (choice=South Asian)"
label(data$flw_ethinicity___6)="Ethnicity (tick all that apply): (choice=West Asian)"
label(data$flw_ethinicity___7)="Ethnicity (tick all that apply): (choice=Latin American)"
label(data$flw_ethinicity___8)="Ethnicity (tick all that apply): (choice=Other)"
label(data$flw_ethinicity___9)="Ethnicity (tick all that apply): (choice=Prefer not to say)"
label(data$flw_ethinicity_oth)="Other ethnicity"
label(data$flw_height)="What is your estimated height:"
label(data$flw_height_unit)="Height: Indicate unit measured in:"
label(data$flw_height_na)="What is your estimated height - prefer not to say"
label(data$flw_weight)="What is your current estimated weight:"
label(data$flw_weight_unit)="Weight: Indicate unit measured in:"
label(data$flw_weight_na)="What is your estimated weight - prefer not to say"
label(data$flw_c19_effects)="Please let us know if you feel COVID-19 has affected your health or wellbeing in a way not described above?"
label(data$follow_up_self_assessment_survey_complete)="Complete?"

