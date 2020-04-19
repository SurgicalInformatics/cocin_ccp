# EMH change 04032020 - overwrite factors with factors. 
#Setting Units
#Setting Factors(will create new variable for factors)

# This needed fixed after update. 
#data$redcap_event_name = factor(data$redcap_event_name,levels=c("day_1_hospital_adm_arm_1","day_3_arm_1","day_6_arm_1","day_9_arm_1","dischargedeath_arm_1","day_1_hospitalicu_arm_2","day_3_arm_2","day_6_arm_2","day_9_arm_2","dischargedeath_arm_2","day_1_arm_3","day_2_arm_3","day_3_arm_3","day_4_arm_3","day_5_arm_3","day_6_arm_3","day_7_arm_3","day_8_arm_3","day_9_arm_3","day_10_arm_3","day_11_arm_3","day_12_arm_3","day_13_arm_3","day_14_arm_3","additional_days_arm_3","dischargedeath_arm_3"))
data$redcap_event_name = factor(data$redcap_event_name,levels=c("day_1_hospital_adm_arm_1","day_3_arm_1","day_6_arm_1","day_9_arm_1","additional_days_arm_1","dischargedeath_arm_1","day_1_hospitalicu_arm_2","day_3_arm_2","day_6_arm_2","day_9_arm_2","additional_days_arm_2","dischargedeath_arm_2","day_1_arm_3","day_2_arm_3","day_3_arm_3","day_4_arm_3","day_5_arm_3","day_6_arm_3","day_7_arm_3","day_8_arm_3","day_9_arm_3","day_10_arm_3","day_11_arm_3","day_12_arm_3","day_13_arm_3","day_14_arm_3","additional_days_arm_3","dischargedeath_arm_3"))
data$redcap_repeat_instrument = factor(data$redcap_repeat_instrument,levels=c("preadmission_medication","infectious_respiratory_disease_pathogen_testing","daily_form"))
# data$redcap_data_access_group = factor(data$redcap_data_access_group,levels=c("aberdeen_royal_inf","airedale_general_h","alder_hey_children","barnsley_hospital","birmingham_childre","brighton_and_susse","buckinghamshire","conquest_hospital","east_kent_hospital","east_surrey_hospit","export_only","frimley_health_nhs","glenfield_hospital","gloucester_royal_h","guys_and_st_thomas","hillingdon_hospita","homerton_universit","huddersfield_royal","ipswich_hospital","james_cook_univers","kettering_general","leicester_general","maidstone_and_tunb","manchester_univers","medway_hospital","milton_keynes_univ","musgrove_park_hosp","new_cross_hospital","ninewells_hospital","north_manchester_g","northwick_park","northern_devon_hea","nuh_nottingham_uni","oxford_university","poole_hospital_nhs","queen_elizabeth_ho","queen_elizabeth_un","royal_free_hospita","royal_hallamshire","royal_liverpool_ho","royal_papworth","royal_preston_hosp","royal_surrey_hospi","salford_royal_nhs","sheffield_teaching","southmead_hospital","the_newcastle_upon","torbay_and_south_d","university_hospita","university_hospitab","western_general_ho","whiston_hospital","who","yeovil_district_ho","york_teaching_hosp"))
data$participant_identification_number_pin_complete = factor(data$participant_identification_number_pin_complete,levels=c("0","1","2"))
data$tiers_faorres___1 = factor(data$tiers_faorres___1,levels=c("0","1"))
data$tiers_faorres___2 = factor(data$tiers_faorres___2,levels=c("0","1"))
data$tiers_faorres___3 = factor(data$tiers_faorres___3,levels=c("0","1"))
data$tiers_consent_complete = factor(data$tiers_consent_complete,levels=c("0","1","2"))
data$corona_ieorres = factor(data$corona_ieorres,levels=c("1","0"))
data$coriona_ieorres2 = factor(data$coriona_ieorres2,levels=c("1","0"))
data$fever = factor(data$fever,levels=c("1","0"))
data$cough = factor(data$cough,levels=c("1","0"))
data$dyspnoe = factor(data$dyspnoe,levels=c("1","0"))
data$ari = factor(data$ari,levels=c("1","0"))
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
data$postpart_rptestcd = factor(data$postpart_rptestcd,levels=c("1","0"))
data$pregout_rptestcd = factor(data$pregout_rptestcd,levels=c("1","2"))
data$aplb_lbperf = factor(data$aplb_lbperf,levels=c("1","2","3"))
data$aplb_lborres = factor(data$aplb_lborres,levels=c("1","2"))
data$aplb_lbmethod = factor(data$aplb_lbmethod,levels=c("1","2"))
data$apdm_age = factor(data$apdm_age,levels=c("1","0"))
data$apvs_weightu = factor(data$apvs_weightu,levels=c("1","2"))
data$apsc_gestout = factor(data$apsc_gestout,levels=c("1","2","3"))
data$apsc_brfedind = factor(data$apsc_brfedind,levels=c("1","2","3"))
data$apsc_brfedindy = factor(data$apsc_brfedindy,levels=c("1","2","3"))
data$apsc_dvageind = factor(data$apsc_dvageind,levels=c("1","2","3"))
data$apsc_vcageind = factor(data$apsc_vcageind,levels=c("1","2","3","4"))
data$demographics_complete = factor(data$demographics_complete,levels=c("0","1","2"))
data$hooccur = factor(data$hooccur,levels=c("1","2","3","4"))
data$subjidcat_transfer = factor(data$subjidcat_transfer,levels=c("1","2","3"))
data$travel_erterm = factor(data$travel_erterm,levels=c("1","2","3"))
data$supper_trcntry = factor(data$supper_trcntry,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","Bahamas","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","Congo","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","Gambia","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","Korea","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200"))
data$travel_erterm_2 = factor(data$travel_erterm_2,levels=c("1","2","3"))
data$supper_trcntry_2 = factor(data$supper_trcntry_2,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","Bahamas","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","Congo","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","Gambia","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","Korea","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200"))
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
data$admission_signs_and_symptoms_complete = factor(data$admission_signs_and_symptoms_complete,levels=c("0","1","2"))
data$chrincard = factor(data$chrincard,levels=c("1","2","3"))
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
data$diabetescom_mhyn = factor(data$diabetescom_mhyn,levels=c("1","2","3"))
data$diabetes_mhyn = factor(data$diabetes_mhyn,levels=c("1","2","3"))
data$rheumatologic_mhyn = factor(data$rheumatologic_mhyn,levels=c("1","2","3"))
data$dementia_mhyn = factor(data$dementia_mhyn,levels=c("1","2","3"))
data$malnutrition_mhyn = factor(data$malnutrition_mhyn,levels=c("1","2","3"))
data$smoking_mhyn = factor(data$smoking_mhyn,levels=c("1","2","3"))
data$other_mhyn = factor(data$other_mhyn,levels=c("1","2","3"))
data$comorbidities_complete = factor(data$comorbidities_complete,levels=c("0","1","2"))
data$immno_cmtrt = factor(data$immno_cmtrt,levels=c("1","2","3"))
data$infect_cmtrt = factor(data$infect_cmtrt,levels=c("1","2","3"))
data$preadmission_treatment_complete = factor(data$preadmission_treatment_complete,levels=c("0","1","2"))
data$cmdosfrq = factor(data$cmdosfrq,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$cmroute = factor(data$cmroute,levels=c("1","2","3","4","5"))
data$preadmission_medication_complete = factor(data$preadmission_medication_complete,levels=c("0","1","2"))
data$daily_hoterm = factor(data$daily_hoterm,levels=c("1","2","3"))
data$daily_fi02_lbyn = factor(data$daily_fi02_lbyn,levels=c("1","2"))
data$daily_sa02_lbyn = factor(data$daily_sa02_lbyn,levels=c("1","2"))
data$daily_pao2_lbyn = factor(data$daily_pao2_lbyn,levels=c("1","0"))
data$daily_pao2_lborresu = factor(data$daily_pao2_lborresu,levels=c("1","2"))
data$daily_pao2_lbspec = factor(data$daily_pao2_lbspec,levels=c("1","2","3","4"))
data$daily_pco2_lbyn = factor(data$daily_pco2_lbyn,levels=c("1","2"))
data$daily_pco2_lborresu = factor(data$daily_pco2_lborresu,levels=c("1","2"))
data$daily_ph_lbyn = factor(data$daily_ph_lbyn,levels=c("1","0"))
data$daily_hco3_lbyn = factor(data$daily_hco3_lbyn,levels=c("1","0"))
data$daily_baseex_lbyn = factor(data$daily_baseex_lbyn,levels=c("1","0"))
data$avpu_vsorres = factor(data$avpu_vsorres,levels=c("1","2","3","4"))
data$daily_gcs_lbyn = factor(data$daily_gcs_lbyn,levels=c("1","0"))
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
data$daily_lbperf = factor(data$daily_lbperf,levels=c("1","0"))
data$daily_hb_lbyn = factor(data$daily_hb_lbyn,levels=c("1","0"))
data$daily_hb_lborresu = factor(data$daily_hb_lborresu,levels=c("1","2"))
data$daily_wbc_lbyn = factor(data$daily_wbc_lbyn,levels=c("1","0"))
data$daily_wbc_lborresu = factor(data$daily_wbc_lborresu,levels=c("1","2"))
data$daily_lymp_lbyn = factor(data$daily_lymp_lbyn,levels=c("1","0"))
data$daily_neutro_lbyn = factor(data$daily_neutro_lbyn,levels=c("1","0"))
data$daily_haematocrit_lbyn = factor(data$daily_haematocrit_lbyn,levels=c("1","0"))
data$daily_plt_lbyn = factor(data$daily_plt_lbyn,levels=c("1","0"))
data$daily_plt_lborresu = factor(data$daily_plt_lborresu,levels=c("1","2"))
data$daily_aptt_lbyn = factor(data$daily_aptt_lbyn,levels=c("1","0"))
data$daily_pt_inr_lbyn = factor(data$daily_pt_inr_lbyn,levels=c("1","2","3"))
data$daily_alt_lbyn = factor(data$daily_alt_lbyn,levels=c("1","0"))
data$daily_bil_lbyn = factor(data$daily_bil_lbyn,levels=c("1","0"))
data$daily_bil_lborresu = factor(data$daily_bil_lborresu,levels=c("1","2"))
data$daily_ast_lbyn = factor(data$daily_ast_lbyn,levels=c("1","0"))
data$daily_glucose_lbyn = factor(data$daily_glucose_lbyn,levels=c("1","0"))
data$daily_glucose_lborresu = factor(data$daily_glucose_lborresu,levels=c("1","2"))
data$daily_bun_lbyn = factor(data$daily_bun_lbyn,levels=c("1","0"))
data$daily_bun_lborresu = factor(data$daily_bun_lborresu,levels=c("1","2"))
data$daily_lactate_lbyn = factor(data$daily_lactate_lbyn,levels=c("1","0"))
data$daily_lactate_lborresu = factor(data$daily_lactate_lborresu,levels=c("1","2"))
data$daily_ldh_lbyn = factor(data$daily_ldh_lbyn,levels=c("1","0"))
data$daily_cpk_lby = factor(data$daily_cpk_lby,levels=c("1","0"))
data$daily_creat_lbyn = factor(data$daily_creat_lbyn,levels=c("1","0"))
data$daily_creat_lborresu = factor(data$daily_creat_lborresu,levels=c("1","2","3"))
data$daily_sodium_lbyn = factor(data$daily_sodium_lbyn,levels=c("1","0"))
data$daily_potassium_lbyn = factor(data$daily_potassium_lbyn,levels=c("1","0"))
data$daily_procal_lbyn = factor(data$daily_procal_lbyn,levels=c("1","0"))
data$daily_crp_lbyn = factor(data$daily_crp_lbyn,levels=c("1","0"))
data$xray_prperf = factor(data$xray_prperf,levels=c("1","2","3"))
data$infiltrates_faorres = factor(data$infiltrates_faorres,levels=c("1","2","3"))
data$daily_form_complete = factor(data$daily_form_complete,levels=c("0","1","2"))
data$mbperf = factor(data$mbperf,levels=c("1","2","3"))
data$influ_mbyn = factor(data$influ_mbyn,levels=c("2","1","0"))
data$influ_mbcat = factor(data$influ_mbcat,levels=c("1","2","3","4","5","6","888"))
data$corna_mbcat = factor(data$corna_mbcat,levels=c("2","1","0"))
data$corna_mbcaty = factor(data$corna_mbcaty,levels=c("1","2","888"))
data$rsv_mbcat = factor(data$rsv_mbcat,levels=c("2","1","0"))
data$adeno_mbcat = factor(data$adeno_mbcat,levels=c("2","1","0"))
data$bact_mborres = factor(data$bact_mborres,levels=c("1","2"))
data$other_mbyn = factor(data$other_mbyn,levels=c("2","1","0"))
data$clinicalpneu_mborres = factor(data$clinicalpneu_mborres,levels=c("1","0","2"))
data$infectuk_mborres = factor(data$infectuk_mborres,levels=c("1","2"))
data$infectious_respiratory_disease_pathogen_diagnosis_complete = factor(data$infectious_respiratory_disease_pathogen_diagnosis_complete,levels=c("0","1","2"))
data$daily_mbperf = factor(data$daily_mbperf,levels=c("1","0"))
data$mbspec = factor(data$mbspec,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14"))
data$mbmethod = factor(data$mbmethod,levels=c("1","2","3"))
data$mborres = factor(data$mborres,levels=c("1","2","3"))
data$infectious_respiratory_disease_pathogen_testing_complete = factor(data$infectious_respiratory_disease_pathogen_testing_complete,levels=c("0","1","2"))
data$antiviral_cmyn = factor(data$antiviral_cmyn,levels=c("1","2","3"))
data$antiviral_cmtrt___1 = factor(data$antiviral_cmtrt___1,levels=c("0","1"))
data$antiviral_cmtrt___2 = factor(data$antiviral_cmtrt___2,levels=c("0","1"))
data$antiviral_cmtrt___3 = factor(data$antiviral_cmtrt___3,levels=c("0","1"))
data$antiviral_cmtrt___4 = factor(data$antiviral_cmtrt___4,levels=c("0","1"))
data$antiviral_cmtrt___5 = factor(data$antiviral_cmtrt___5,levels=c("0","1"))
data$antiviral_cmtrt___6 = factor(data$antiviral_cmtrt___6,levels=c("0","1"))
data$othantiviral2_cmyn = factor(data$othantiviral2_cmyn,levels=c("1","0"))
data$othantiviral3_cmyn = factor(data$othantiviral3_cmyn,levels=c("1","0"))
data$othantiviral4_cmyn = factor(data$othantiviral4_cmyn,levels=c("1","0"))
data$othantiviral5_cmyn = factor(data$othantiviral5_cmyn,levels=c("1","0"))
data$antibiotic_cmyn = factor(data$antibiotic_cmyn,levels=c("1","2","3"))
data$antibiotic2_cmyn = factor(data$antibiotic2_cmyn,levels=c("1","2","3"))
data$antibiotic3_cmyn = factor(data$antibiotic3_cmyn,levels=c("1","2","3"))
data$antibiotic4_cmyn = factor(data$antibiotic4_cmyn,levels=c("1","2","3"))
data$antibiotic5_cmyn = factor(data$antibiotic5_cmyn,levels=c("1","2","3"))
data$corticost_cmyn = factor(data$corticost_cmyn,levels=c("1","2","3"))
data$corticost_cmroute = factor(data$corticost_cmroute,levels=c("1","2","3"))
data$antifung_cmyn = factor(data$antifung_cmyn,levels=c("1","2","3"))
data$icu_hoterm = factor(data$icu_hoterm,levels=c("1","2","3"))
data$oxygen_cmoccur = factor(data$oxygen_cmoccur,levels=c("1","2","3"))
data$noninvasive_proccur = factor(data$noninvasive_proccur,levels=c("1","2","3"))
data$invasive_proccur = factor(data$invasive_proccur,levels=c("1","2","3"))
data$pronevent_prtrt = factor(data$pronevent_prtrt,levels=c("1","2","3"))
data$inhalednit_cmtrt = factor(data$inhalednit_cmtrt,levels=c("1","2","3"))
data$tracheo_prtrt = factor(data$tracheo_prtrt,levels=c("1","2","3"))
data$extracorp_prtrt = factor(data$extracorp_prtrt,levels=c("1","2","3"))
data$rrt_prtrt = factor(data$rrt_prtrt,levels=c("1","2","3"))
data$inotrop_cmtrt = factor(data$inotrop_cmtrt,levels=c("1","2","3"))
data$other_cmyn = factor(data$other_cmyn,levels=c("1","2","3"))
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
data$heartfailure_ceterm = factor(data$heartfailure_ceterm,levels=c("1","2","3"))
data$endocarditis_aeterm = factor(data$endocarditis_aeterm,levels=c("1","2","3"))
data$arrhythmia_ceterm = factor(data$arrhythmia_ceterm,levels=c("1","2","3"))
data$ischaemia_ceterm = factor(data$ischaemia_ceterm,levels=c("1","2","3"))
data$cardiacarrest_ceterm = factor(data$cardiacarrest_ceterm,levels=c("1","2","3"))
data$bacteraemia_ceterm = factor(data$bacteraemia_ceterm,levels=c("1","2","3"))
data$coagulo_ceterm = factor(data$coagulo_ceterm,levels=c("1","2","3"))
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
data$dsstdtcyn = factor(data$dsstdtcyn,levels=c("1","2","3"))
data$suppds_qval = factor(data$suppds_qval,levels=c("1","2","3","4"))
data$oxygen_proccur = factor(data$oxygen_proccur,levels=c("1","2","3"))
data$renal_proccur = factor(data$renal_proccur,levels=c("1","2","3"))
data$other_cmoccur = factor(data$other_cmoccur,levels=c("1","2","3"))
data$siteyn = factor(data$siteyn,levels=c("1","2","3"))
data$subjidcat = factor(data$subjidcat,levels=c("1","2"))
data$outcome_complete = factor(data$outcome_complete,levels=c("0","1","2"))
data$core_additional_information_complete = factor(data$core_additional_information_complete,levels=c("0","1","2"))


levels(data$redcap_event_name)=c("Day 1 Hospital Admission (Arm 1: TIER 0)","Day 3 (Arm 1: TIER 0)","Day 6 (Arm 1: TIER 0)","Day 9 (Arm 1: TIER 0)","Additional days (Arm 1: TIER 0)","Discharge/Death (Arm 1: TIER 0)","Day 1 Hospital&ICU Admission (Arm 2: TIER 1)","Day 3 (Arm 2: TIER 1)","Day 6 (Arm 2: TIER 1)","Day 9 (Arm 2: TIER 1)","Additional days (Arm 2: TIER 1)","Discharge/Death (Arm 2: TIER 1)","Day 1 (Arm 3: TIER 2)","Day 2 (Arm 3: TIER 2)","Day 3 (Arm 3: TIER 2)","Day 4 (Arm 3: TIER 2)","Day 5 (Arm 3: TIER 2)","Day 6 (Arm 3: TIER 2)","Day 7 (Arm 3: TIER 2)","Day 8 (Arm 3: TIER 2)","Day 9 (Arm 3: TIER 2)","Day 10 (Arm 3: TIER 2)","Day 11 (Arm 3: TIER 2)","Day 12 (Arm 3: TIER 2)","Day 13 (Arm 3: TIER 2)","Day 14 (Arm 3: TIER 2)","Additional days (Arm 3: TIER 2)","Discharge/Death (Arm 3: TIER 2)")
#levels(data$redcap_event_name)=c("Day 1 Hospital Admission (Arm 1: TIER 0)","Day 3 (Arm 1: TIER 0)","Day 6 (Arm 1: TIER 0)","Day 9 (Arm 1: TIER 0)","Discharge/Death (Arm 1: TIER 0)","Day 1 Hospital&ICU Admission (Arm 2: TIER 1)","Day 3 (Arm 2: TIER 1)","Day 6 (Arm 2: TIER 1)","Day 9 (Arm 2: TIER 1)","Discharge/Death (Arm 2: TIER 1)","Day 1 (Arm 3: TIER 2)","Day 2 (Arm 3: TIER 2)","Day 3 (Arm 3: TIER 2)","Day 4 (Arm 3: TIER 2)","Day 5 (Arm 3: TIER 2)","Day 6 (Arm 3: TIER 2)","Day 7 (Arm 3: TIER 2)","Day 8 (Arm 3: TIER 2)","Day 9 (Arm 3: TIER 2)","Day 10 (Arm 3: TIER 2)","Day 11 (Arm 3: TIER 2)","Day 12 (Arm 3: TIER 2)","Day 13 (Arm 3: TIER 2)","Day 14 (Arm 3: TIER 2)","Additional days (Arm 3: TIER 2)","Discharge/Death (Arm 3: TIER 2)")
levels(data$redcap_repeat_instrument)=c("Pre-admission medication","Infectious Respiratory Disease Pathogen Testing","Daily Form")
# levels(data$redcap_data_access_group)=c("Aberdeen Royal Infirmary","Airedale General Hospital","Alder Hey Childrens Hospital","Barnsley Hospital","Birmingham Childrens Hospital","Brighton and Sussex University Hospitals NHS Trust","Buckinghamshire","Conquest Hospital","East Kent Hospitals NHS Foundation Trust","East Surrey Hospital","Export only","Frimley Health NHS Foundation Trust","Glenfield Hospital","Gloucester Royal Hospital","Guys and St Thomas","Hillingdon Hospital","Homerton University Hospital","Huddersfield Royal Infirmary","Ipswich Hospital","James Cook University Hospital","Kettering General Hospital NHS Foundation Trust","Leicester General Hospital","Maidstone and Tunbridge Wells","Manchester University Hospital","Medway Hospital","Milton Keynes University Hospital","Musgrove Park Hospital","New Cross Hospital","Ninewells Hospital","North Manchester General Hospital","North-wick Park","Northern Devon Healthcare Trust","NUH Nottingham University Hosptial","Oxford University Hospital","Poole Hospital NHS Trust","Queen Elizabeth Hospital","Queen Elizabeth University Hospital, Glasgow University Hospital Monklands, Airdrie","Royal Free Hospital","Royal Hallamshire, University Hospital Southampton","Royal Liverpool Hospital","Royal Papworth","Royal Preston Hospital","Royal Surrey Hospital","Salford Royal NHS Foundation Trust","Sheffield Teaching Hospital","Southmead Hospital","The Newcastle upon Tyne Hospitals NHS Foundation Trust","Torbay and south Devon Hospital","University Hospital Plymouth","University Hospital Southampton","Western General Hospital","Whiston Hospital","WHO","Yeovil District Hospital","York Teaching Hospital")
levels(data$participant_identification_number_pin_complete)=c("Incomplete","Unverified","Complete")
levels(data$tiers_faorres___1)=c("Unchecked","Checked")
levels(data$tiers_faorres___2)=c("Unchecked","Checked")
levels(data$tiers_faorres___3)=c("Unchecked","Checked")
levels(data$tiers_consent_complete)=c("Incomplete","Unverified","Complete")
levels(data$corona_ieorres)=c("Yes","No")
levels(data$coriona_ieorres2)=c("Yes","No")
levels(data$fever)=c("Yes","No")
levels(data$cough)=c("Yes","No")
levels(data$dyspnoe)=c("Yes","No")
levels(data$ari)=c("Yes","No")
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
levels(data$postpart_rptestcd)=c("Yes","No")
levels(data$pregout_rptestcd)=c("Live birth","Still birth")
levels(data$aplb_lbperf)=c("Yes","No","N/A")
levels(data$aplb_lborres)=c("Positive","Negative")
levels(data$aplb_lbmethod)=c("PCR","Other")
levels(data$apdm_age)=c("Yes","No")
levels(data$apvs_weightu)=c("kg","lbs")
levels(data$apsc_gestout)=c("Term birth ( >= 37wk GA)","Preterm birth (< 37wk GA)","N/A")
levels(data$apsc_brfedind)=c("Yes","No","N/A")
levels(data$apsc_brfedindy)=c("Currently breastfed","Breastfeeding discontinued","N/A")
levels(data$apsc_dvageind)=c("Yes","No","N/A")
levels(data$apsc_vcageind)=c("Yes","No","Unknown","N/A")
levels(data$demographics_complete)=c("Incomplete","Unverified","Complete")
levels(data$hooccur)=c("Yes-facility is a study site","Yes-facility is not a study site","No","N/A")
levels(data$subjidcat_transfer)=c("Same as above","Different","N/A")
levels(data$travel_erterm)=c("Yes","No","N/A")
levels(data$supper_trcntry)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","The","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Republic of the","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","The","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","South","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$travel_erterm_2)=c("Yes","No","N/A")
levels(data$supper_trcntry_2)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","The","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Republic of the","Costa Rica","Cote dIvoire","Croatia","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","The","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","South","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
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
levels(data$admission_signs_and_symptoms_complete)=c("Incomplete","Unverified","Complete")
levels(data$chrincard)=c("YES","NO","Unknown")
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
levels(data$diabetescom_mhyn)=c("YES","NO","Unknown")
levels(data$diabetes_mhyn)=c("YES","NO","Unknown")
levels(data$rheumatologic_mhyn)=c("YES","NO","Unknown")
levels(data$dementia_mhyn)=c("YES","NO","Unknown")
levels(data$malnutrition_mhyn)=c("YES","NO","Unknown")
levels(data$smoking_mhyn)=c("Yes","Never Smoked","Former Smoker")
levels(data$other_mhyn)=c("Yes","No","Unknown")
levels(data$comorbidities_complete)=c("Incomplete","Unverified","Complete")
levels(data$immno_cmtrt)=c("Yes","No","N/A")
levels(data$infect_cmtrt)=c("Yes","No","N/A")
levels(data$preadmission_treatment_complete)=c("Incomplete","Unverified","Complete")
levels(data$cmdosfrq)=c("q.d - once a day","b.i.d - twice a day","t.i.d - three times a day","q.i.d - four times a day","q.h.s - before bed","5X a day - five times a day","q.4h - every four hours","q.6h - every six hours","q.o.d - every other day","prn - as needed","Other frequency")
levels(data$cmroute)=c("IV","oral","Inhaled","Unknown","Other")
levels(data$preadmission_medication_complete)=c("Incomplete","Unverified","Complete")
levels(data$daily_hoterm)=c("Yes","No","N/A")
levels(data$daily_fi02_lbyn)=c("Yes","No")
levels(data$daily_sa02_lbyn)=c("Yes","No")
levels(data$daily_pao2_lbyn)=c("Yes","No")
levels(data$daily_pao2_lborresu)=c("kPa","mmHg")
levels(data$daily_pao2_lbspec)=c("Arterial","Venous","Capillary","N/A")
levels(data$daily_pco2_lbyn)=c("Yes","No")
levels(data$daily_pco2_lborresu)=c("kPa","mmHg")
levels(data$daily_ph_lbyn)=c("Yes","No")
levels(data$daily_hco3_lbyn)=c("Yes","No")
levels(data$daily_baseex_lbyn)=c("Yes","No")
levels(data$avpu_vsorres)=c("Alert","Verbal","Pain","Unresponsive")
levels(data$daily_gcs_lbyn)=c("Yes","No")
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
levels(data$daily_lbperf)=c("Yes","No")
levels(data$daily_hb_lbyn)=c("Yes","No")
levels(data$daily_hb_lborresu)=c("g/L","g/dL")
levels(data$daily_wbc_lbyn)=c("Yes","No")
levels(data$daily_wbc_lborresu)=c("x 10^9 / L","x 103/µL")
levels(data$daily_lymp_lbyn)=c("Yes","No")
levels(data$daily_neutro_lbyn)=c("Yes","No")
levels(data$daily_haematocrit_lbyn)=c("Yes","No")
levels(data$daily_plt_lbyn)=c("Yes","No")
levels(data$daily_plt_lborresu)=c("x 10^9 / L","x 103/μL")
levels(data$daily_aptt_lbyn)=c("Yes","No")
levels(data$daily_pt_inr_lbyn)=c("PT done","INR done","PT or INR not done")
levels(data$daily_alt_lbyn)=c("Yes","No")
levels(data$daily_bil_lbyn)=c("Yes","No")
levels(data$daily_bil_lborresu)=c("µmol/L","mg/dL")
levels(data$daily_ast_lbyn)=c("Yes","No")
levels(data$daily_glucose_lbyn)=c("Yes","No")
levels(data$daily_glucose_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_bun_lbyn)=c("Yes","No")
levels(data$daily_bun_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_lactate_lbyn)=c("Yes","No")
levels(data$daily_lactate_lborresu)=c("mmol/L","mg/dL")
levels(data$daily_ldh_lbyn)=c("Yes","No")
levels(data$daily_cpk_lby)=c("Yes","No")
levels(data$daily_creat_lbyn)=c("Yes","No")
levels(data$daily_creat_lborresu)=c("μmol/L","mg/dL","umol/L")
levels(data$daily_sodium_lbyn)=c("Yes","No")
levels(data$daily_potassium_lbyn)=c("Yes","No")
levels(data$daily_procal_lbyn)=c("Yes","No")
levels(data$daily_crp_lbyn)=c("Yes","No")
levels(data$xray_prperf)=c("YES","NO","N/A")
levels(data$infiltrates_faorres)=c("YES","NO","N/A")
levels(data$daily_form_complete)=c("Incomplete","Unverified","Complete")
levels(data$mbperf)=c("YES","NO","N/A")
levels(data$influ_mbyn)=c("YES - Confirmed","YES - Probable","NO")
levels(data$influ_mbcat)=c("A/H3N2","A/H1N1pdm09","A/H7N9","A/H5N1","A - not typed","B","Other")
levels(data$corna_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$corna_mbcaty)=c("MERS-CoV","2019nCoV","Other CoV")
levels(data$rsv_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$adeno_mbcat)=c("YES - Confirmed","YES - Probable","NO")
levels(data$bact_mborres)=c("YES-Confirmed","NO")
levels(data$other_mbyn)=c("YES - Confirmed","YES - Probable","NO")
levels(data$clinicalpneu_mborres)=c("YES","NO","Unknown")
levels(data$infectuk_mborres)=c("Yes","N/A")
levels(data$infectious_respiratory_disease_pathogen_diagnosis_complete)=c("Incomplete","Unverified","Complete")
levels(data$daily_mbperf)=c("Yes","No")
levels(data$mbspec)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Exotoxin A (ETA)","CSF","SAM","Urine","Feces / rectal swab","Blood serum","Blood EDTA","Blood RNA","Other")
levels(data$mbmethod)=c("PCR","Culture","Other")
levels(data$mborres)=c("Positive","Negative","N/A")
levels(data$infectious_respiratory_disease_pathogen_testing_complete)=c("Incomplete","Unverified","Complete")
levels(data$antiviral_cmyn)=c("Yes","No","N/A")
levels(data$antiviral_cmtrt___1)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___2)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___3)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___4)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___5)=c("Unchecked","Checked")
levels(data$antiviral_cmtrt___6)=c("Unchecked","Checked")
levels(data$othantiviral2_cmyn)=c("Yes","No")
levels(data$othantiviral3_cmyn)=c("Yes","No")
levels(data$othantiviral4_cmyn)=c("Yes","No")
levels(data$othantiviral5_cmyn)=c("Yes","No")
levels(data$antibiotic_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic2_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic3_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic4_cmyn)=c("Yes","No","N/A")
levels(data$antibiotic5_cmyn)=c("Yes","No","N/A")
levels(data$corticost_cmyn)=c("Yes","No","N/A")
levels(data$corticost_cmroute)=c("Oral","Intravenous","Inhaled")
levels(data$antifung_cmyn)=c("Yes","No","N/A")
levels(data$icu_hoterm)=c("Yes","No","N/A")
levels(data$oxygen_cmoccur)=c("YES","NO","N/A")
levels(data$noninvasive_proccur)=c("YES","NO","N/A")
levels(data$invasive_proccur)=c("YES","NO","N/A")
levels(data$pronevent_prtrt)=c("YES","NO","N/A")
levels(data$inhalednit_cmtrt)=c("YES","NO","N/A")
levels(data$tracheo_prtrt)=c("YES","NO","N/A")
levels(data$extracorp_prtrt)=c("YES","NO","N/A")
levels(data$rrt_prtrt)=c("YES","NO","N/A")
levels(data$inotrop_cmtrt)=c("YES","NO","N/A")
levels(data$other_cmyn)=c("YES","NO","N/A")
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
levels(data$heartfailure_ceterm)=c("YES","NO","N/A")
levels(data$endocarditis_aeterm)=c("YES","NO","N/A")
levels(data$arrhythmia_ceterm)=c("YES","NO","N/A")
levels(data$ischaemia_ceterm)=c("YES","NO","N/A")
levels(data$cardiacarrest_ceterm)=c("YES","NO","N/A")
levels(data$bacteraemia_ceterm)=c("YES","NO","N/A")
levels(data$coagulo_ceterm)=c("YES","NO","N/A")
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
levels(data$dsterm)=c("Discharged alive","Hospitalization","Transfer to other facility","Death","Palliative discharge","Unknown")
levels(data$dsstdtcyn)=c("Yes","No","N/A")
levels(data$suppds_qval)=c("Same as before illness","Worse","Better","N/A")
levels(data$oxygen_proccur)=c("YES","NO","N/A")
levels(data$renal_proccur)=c("YES","NO","N/A")
levels(data$other_cmoccur)=c("YES","NO","N/A")
levels(data$siteyn)=c("Yes","No","N/A")
levels(data$subjidcat)=c("Same as the above","Different")
levels(data$outcome_complete)=c("Incomplete","Unverified","Complete")
levels(data$core_additional_information_complete)=c("Incomplete","Unverified","Complete")

#Setting Labels
library(Hmisc)
# EMH: would be better to change this to finalfit::ff_label()
# As in 
# data %>% 
#   mutate(
#     subjid = ff_label(subjid, "Event name")
#   )

library(finalfit)
data = data %>% 
  mutate(
    sex = ff_label(sex, "Sex at Birth"),
    healthwork_erterm = ff_label(healthwork_erterm, "Healthcare worker"),
    labwork_erterm = ff_label(labwork_erterm, "Microbiology lab worker"),
    hooccur = ff_label(hooccur, "Transfer from other facility"),
    siteid_transfer = ff_label(siteid_transfer, "Name of transfer facility"),
    travel_erterm = ff_label(travel_erterm , "Travel in 14 d prior to symptoms"),
    supper_trcntry = ff_label(supper_trcntry, "Country"),
    supper_trcity = ff_label(supper_trcity, "City/Geographic Area"),
    travel_erterm_2 = ff_label(travel_erterm_2, "Travel (2) in 14 d prior to symptoms"),
    supper_trcntry_2 = ff_label(supper_trcntry_2, "Country 2"),
    supper_trcity_2 = ff_label(supper_trcity_2, "City/Geographic Area 2"),
    animal_eryn = ff_label(animal_eryn, "Animal, raw meat, insect bites 14 d prior"),
    animal_erterm = ff_label(animal_erterm, "Animal / insect"),
    animal_eryn_2 = ff_label(animal_eryn_2, "Animal, raw meat, insect bites 14 d prior"),
    animal_erterm_2 = ff_label(animal_erterm_2, "Animal / insect"),
    temp_vsorres = ff_label(temp_vsorres, "Temperature"), 
    hr_vsorres = ff_label(hr_vsorres, "Heart Rate"), 
    rr_vsorres = ff_label(rr_vsorres, "Respiratory Rate"), 
    sysbp_vsorres = ff_label(sysbp_vsorres, "BP (sys)"), 
    admission_diabp_vsorres = ff_label(admission_diabp_vsorres, "BP (dia)"), 
    dehydration_vsorres = ff_label(dehydration_vsorres, "Severe dehydration"), 
    stercap_vsorres = ff_label(stercap_vsorres, "Capillary refill >2s"), 
    oxy_vsorres = ff_label(oxy_vsorres, "SpO2"), 
    fever_ceoccur_v2 = ff_label(fever_ceoccur_v2, "Fever"), 
    cough_ceoccur_v2 = ff_label(cough_ceoccur_v2, "Cough"), 
    coughsput_ceoccur_v2 = ff_label(coughsput_ceoccur_v2, "Cough (sputum)"), 
    coughhb_ceoccur_v2 = ff_label(coughhb_ceoccur_v2, "Cough (blood)"), 
    sorethroat_ceoccur_v2 = ff_label(sorethroat_ceoccur_v2, "Sore throat"), 
    runnynose_ceoccur_v2 = ff_label(runnynose_ceoccur_v2, "Runny nose"), 
    earpain_ceoccur_v2 = ff_label(earpain_ceoccur_v2, "Ear pain"), 
    wheeze_ceoccur_v2 = ff_label(wheeze_ceoccur_v2, "Wheeze"), 
    chestpain_ceoccur_v2 = ff_label(chestpain_ceoccur_v2, "Chest pain"), 
    myalgia_ceoccur_v2 = ff_label(myalgia_ceoccur_v2, "Muscle ache"), 
    jointpain_ceoccur_v2 = ff_label(jointpain_ceoccur_v2 , "Joint pain"), 
    fatigue_ceoccur_v2 = ff_label(fatigue_ceoccur_v2, "Fatigue"), 
    shortbreath_ceoccur_v2 = ff_label(shortbreath_ceoccur_v2, "Shortness of breath"), 
    lowerchest_ceoccur_v2 = ff_label(lowerchest_ceoccur_v2, "Lower chest wall indrawing"), 
    headache_ceoccur_v2 = ff_label(headache_ceoccur_v2, "Headache"), 
    confusion_ceoccur_v2 = ff_label(confusion_ceoccur_v2, "Confusion"), 
    seizures_cecoccur_v2 = ff_label(seizures_cecoccur_v2, "Seizures"), 
    abdopain_ceoccur_v2 = ff_label(abdopain_ceoccur_v2 , "Abdominal pain"), 
    vomit_ceoccur_v2 = ff_label(vomit_ceoccur_v2, "Nausa/vomiting"), 
    diarrhoea_ceoccur_v2 = ff_label(diarrhoea_ceoccur_v2, "Diarrhoea"), 
    conjunct_ceoccur_v2 = ff_label(conjunct_ceoccur_v2, "Conjunctivitis"), 
    rash_ceoccur_v2 = ff_label(rash_ceoccur_v2, "Skin rash"), 
    skinulcers_ceoccur_v2 = ff_label(skinulcers_ceoccur_v2, "Skin ulcers"), 
    lymp_ceoccur_v2 = ff_label(lymp_ceoccur_v2, "Lymphadenopathy"), 
    bleed_ceoccur_v2 = ff_label(bleed_ceoccur_v2, "Bleeding (Haemorrhage)"), 
    bleed_ceterm_v2 = ff_label(bleed_ceterm_v2, "If Bleeding (others)"), 
    
    chrincard = ff_label(chrincard, "Chronic cardiac disease"), 
    chronicpul_mhyn = ff_label(chronicpul_mhyn , "Chronic pulmonary disease"), 
    asthma_mhyn = ff_label(asthma_mhyn, "Asthma"), 
    renal_mhyn = ff_label(renal_mhyn, "Chronic kidney disease"), 
    modliv = ff_label(modliv, "Moderate/severe liver disease"), 
    mildliver = ff_label(mildliver, "Mild Liver disease"), 
    chronicneu_mhyn = ff_label(chronicneu_mhyn, "Chronic neurological disorder"), 
    malignantneo_mhyn = ff_label(malignantneo_mhyn, "Malignancy"), 
    chronichaemo_mhyn = ff_label(chronichaemo_mhyn, "Chronic hematologic disease"), 
    aidshiv_mhyn = ff_label(aidshiv_mhyn, "AIDS/HIV"), 
    obesity_mhyn = ff_label(obesity_mhyn, "Obesity"), 
    diabetescom_mhyn = ff_label(diabetescom_mhyn, "Diabetes with complications"), 
    diabetes_mhyn = ff_label(diabetes_mhyn, "Diabetes without complications"), 
    rheumatologic_mhyn = ff_label(rheumatologic_mhyn , "Rheumatologic disorder"), 
    dementia_mhyn = ff_label(dementia_mhyn, "Dementia"), 
    malnutrition_mhyn = ff_label(malnutrition_mhyn, "Malnutrition"), 
    smoking_mhyn = ff_label(smoking_mhyn, "Smoking")
  )

if(TRUE){
  # label(data$subjid)="PIN"
  label(data$redcap_event_name)="Event Name"
  label(data$redcap_repeat_instrument)="Repeat Instrument"
  label(data$redcap_repeat_instance)="Repeat Instance"
  # label(data$redcap_data_access_group)="Data Access Group"
  label(data$participant_identification_number_pin_complete)="Complete?"
  label(data$tiers_faorres___1)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 0 (data collection only); no consent required.)"
  label(data$tiers_faorres___2)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 1 (single point sample collection); consent required.)"
  label(data$tiers_faorres___3)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 2 (multiple point sample collection); consent required.)"
  label(data$tiers_consent_complete)="Complete?"
  label(data$dsstdat)="Date of Enrolment"
  label(data$sitename)="Site name"
  label(data$corona_ieorres)="Suspected or proven infection with pathogen of Public Health Interest"
  label(data$coriona_ieorres2)="Proven or high likelihood of infection with pathogen of Public Health Interest  "
  label(data$fever)="A history of self reported feverishness or measured fever ? of ≥ 38°C"
  label(data$cough)="Cough "
  label(data$dyspnoe)="Dyspnoea (shortness of breath) OR Tachypnoea*"
  label(data$ari)="Clinical suspicion of ARI despite not meeting criteria above"
  label(data$symptoms_epi_travel)="2.A history of travel to an area with documented cases of novel coronavirus infection"
  label(data$symptoms_epi_physical)="3.Close contact* with a confirmed or probable case of nCoV infection, while that patient was symptomatic"
  label(data$symptoms_epi_healthfac)="4.Presence in a healthcare facility where nCoV infections have been managed"
  label(data$symptoms_epi_lab)="5. Presence in a laboratory handling samples suspected or confirmed of having the respiratory pathogen of public health interest present"
  label(data$symptoms_epi_pathogen)="6.An otherwise unexplained respiratory illness in the context of an outbreak, suspected outbreak or incident of a respiratory pathogen of public health interest"
  label(data$symptoms_epi_animal)="7.Direct contact with animals in countries where the nCoV is known to be circulating in animal populations or where human infections have occurred as a result of presumed zoonotic transmission"
  label(data$inclusion_criteria_complete)="Complete?"
  
  label(data$ethnic___1)="1.4 Ethnic group (check all that apply) (choice=Arab)"
  label(data$ethnic___2)="1.4 Ethnic group (check all that apply) (choice=Black)"
  label(data$ethnic___3)="1.4 Ethnic group (check all that apply) (choice=East Asian)"
  label(data$ethnic___4)="1.4 Ethnic group (check all that apply) (choice=South Asian)"
  label(data$ethnic___5)="1.4 Ethnic group (check all that apply) (choice=West Asian)"
  label(data$ethnic___6)="1.4 Ethnic group (check all that apply) (choice=Latin American)"
  label(data$ethnic___7)="1.4 Ethnic group (check all that apply) (choice=White)"
  label(data$ethnic___8)="1.4 Ethnic group (check all that apply) (choice=Aboriginal/First Nations)"
  label(data$ethnic___9)="1.4 Ethnic group (check all that apply) (choice=Other)"
  label(data$ethnic___10)="1.4 Ethnic group (check all that apply) (choice=N/A)"
  
  label(data$pregyn_rptestcd)="1.7 Pregnant ?"
  label(data$other_ethnic)="If Other: Specify"
  label(data$egestage_rptestcd)="If YES: Gestational weeks assessment:"
  label(data$postpart_rptestcd)="1.8 Post Partum (within six weeks of delivery)"
  label(data$pregout_rptestcd)="1.8.1 Pregnancy Outcome"
  label(data$dlvrdtc_rptestcd)="1.8.2 Delivery date"
  label(data$aplb_lbperf)="1.8.3 Baby tested for mothers ARI infection"
  label(data$aplb_lborres)=" If YES"
  label(data$aplb_lbmethod)="1.8.4 Method"
  label(data$aplb_lbmethodoth)="If OTHER method; Specify"
  label(data$apdm_age)="1.9 INFANT - Less than 1 year old?"
  label(data$apvs_weight)="1.9.1 Birth weight"
  label(data$apvs_weightu)="Birth weight unit"
  label(data$apsc_gestout)="1.9.2 Gestational outcome"
  label(data$estgest)="If < 37wk  confirm estimated gestation   "
  label(data$apsc_brfedind)="1.9.3 Breastfed"
  label(data$apsc_brfedindy)="If  YES"
  label(data$apsc_brdisdat)="Discontinued breastfeeding at "
  label(data$apsc_dvageind)="1.9.4 Appropriate development for age?"
  label(data$apsc_vcageind)="1.9.5 Vaccinations appropriate for age/country?"
  label(data$demographics_complete)="Complete?"
  label(data$cestdat)="2.1 Onset date of first/earliest symptom"
  label(data$hostdat)="2.2 Admission date at this facility"
  label(data$hosttim)="2.3 Admission time at this facility"
  
  label(data$onset_and_admission_complete)="Complete?"
  label(data$comorbidities_complete)="Complete?"
  label(data$immno_cmtrt)="Treated with immunosuppressants, including oral (not inhaled) corticosteroids prior to admission"
  label(data$infect_cmtrt)="Treated with anti-infectives  for illness episode prior to admission?"
  label(data$infect)="If yes,  please specify anti infectives"
  label(data$preadmission_treatment_complete)="Complete?"
  label(data$cmtrt)="Medication name (generic name preferred)  "
  label(data$cmdose)="Dose"
  label(data$cmdosfrq)="Dose Frequency"
  label(data$cmdosfrqoth)="Specify other dose frequency"
  label(data$cmroute)="Route"
  label(data$cmrouteoth)="Specify other route"
  label(data$preadmission_medication_complete)="Complete?"
  label(data$daily_dsstdat)="DATE OF ASSESSMENT "
  label(data$daily_hoterm)="1.1  Current admission to ICU/IMC/HDU"
  label(data$daily_fi02_lbyn)="1.2  FiO2  available?"
  label(data$daily_fio2_lborres)="FiO2 "
  label(data$daily_sa02_lbyn)="1.3  SaO2 available?"
  label(data$daily_sao2_lborres)="SaO2  "
  label(data$daily_pao2_lbyn)="1.4  PaO2 available?"
  label(data$daily_pao2_lborres)="PaO2"
  label(data$daily_pao2_lborresu)="PaO2 unit:"
  label(data$daily_pao2_lbspec)="PaO2 sample type"
  label(data$daily_pco2_lbyn)="1.5  PCO2 available?"
  label(data$daily_pco2_lborres)="PCO2 "
  label(data$daily_pco2_lborresu)="PCO2 Unit"
  label(data$daily_ph_lbyn)="1.6  pH available"
  label(data$daily_ph_lborres)="pH"
  label(data$daily_hco3_lbyn)="1.7  HCO3-  available"
  label(data$daily_hco3_lborres)="HCO3- "
  label(data$daily_baseex_lbyn)="1.8  Base excess available"
  label(data$daily_baseex_lborres)="Base excess"
  label(data$avpu_vsorres)="1.9 AVPU"
  label(data$daily_gcs_lbyn)="1.10 Glasgow Coma Score available?"
  label(data$daily_gcs_vsorres)="Glasgow Coma Score:"
  label(data$systolic_vsyn)="1.11 Systolic Blood Pressure available?"
  label(data$systolic_vsorres)="Systolic Pressure"
  label(data$diastolic_vsyn)="1.12 Diastolic Blood Pressure available?"
  label(data$diastolic_vsorres)="Diastolic Pressure"
  label(data$daily_meanart_lbyn)="1.13 Mean Arterial Pressure available?"
  label(data$daily_meanart_vsorres)="Mean Arterial Pressure:"
  label(data$daily_urine_lbyn)="1.14  Urine flow rate available?"
  label(data$daily_urine_lborres)="Urine flow rate:"
  label(data$daily_noninvasive_prtrt)="1.15  Non-invasive ventilation (e.g. BIPAP, CPAP)?"
  label(data$daily_invasive_prtrt)="1.16  Invasive ventilation?"
  label(data$daily_nasaloxy_cmtrt)="1.17 High-flow nasal canula oxygen therapy?"
  label(data$daily_ecmo_prtrt)="1.18  ECLS/ECMO"
  label(data$daily_rrt_cmtrt)="1.19  Dialysis / Hemofiltration?"
  label(data$daily_inotrope_cmyn)="1.20  Any vasopressor / inotropic support?"
  label(data$daily_dopless5_cmtrt)="1.21a  Dopamine <    5 µg/min OR Dobutamine OR Milrinone OR Levosimendan:"
  label(data$daily_dop5to15_cmtrt)="1.22b  Dopamine 5-15 µg/min OR Epinephrine/Norepinephrine <                       0.1 ?kg/min OR Vasopressin OR Phenylephrine:"
  label(data$daily_dopgr15_cmtrt)="1.22c  Dopamine > 15 µg/min OR Epinephrine/Norepinephrine > 0.1 ?kg/min:"
  label(data$daily_neuro_cmtrt)="1.23  Neuromuscular blocking agents?"
  label(data$daily_nitritc_cmtrt)="1.24 Inhaled Nitric Oxide ?"
  label(data$daily_prone_cmtrt)="1.25  Prone Positioning"
  label(data$daily_trach_prperf)="1.26  Tracheostomy inserted?"
  label(data$daily_prperf)="1.27 Other intervention or procedure?"
  label(data$daily_other_prtrt)="If YES other intervention, Specify,"
  label(data$daily_lbperf)="2.1  Results available for sample taken on the date in section 1 above ?"
  label(data$daily_lbdat)="Date of  assessment"
  label(data$daily_hb_lbyn)="2.2  Haemoglobin available"
  label(data$daily_hb_lborres)="Haemoglobin"
  label(data$daily_hb_lborresu)="Haemoglobin Unit"
  label(data$daily_wbc_lbyn)="2.3  WBC count available"
  label(data$daily_wbc_lborres)="WBC count"
  label(data$daily_wbc_lborresu)="WBC Unit"
  label(data$daily_lymp_lbyn)="2.4  Lymphocyte count available"
  label(data$daily_lymp_lborres)="Lymphocyte count"
  label(data$daily_neutro_lbyn)="2.5 Neutrophil count available"
  label(data$daily_neutro_lborres)="Neutrophil count"
  label(data$daily_haematocrit_lbyn)="2.6 Haematocrit available"
  label(data$daily_haematocrit_lborres)="Haematocrit"
  label(data$daily_plt_lbyn)="2.7  Platelets available"
  label(data$daily_plt_lborres)="Platelet Count"
  label(data$daily_plt_lborresu)="Platelets Unit"
  label(data$daily_aptt_lbyn)="2.8 APTT/APTR available"
  label(data$daily_aptt_lborres)="APTT/APTR"
  label(data$daily_pt_inr_lbyn)="2.9  PT or INR available"
  label(data$daily_pt_lborres)="PT "
  label(data$daily_inr_lborres)="INR"
  label(data$daily_alt_lbyn)="2.10  ALT / SGPT available"
  label(data$daily_alt_lborres)="ALT / SGPT"
  label(data$daily_bil_lbyn)="2.11  Total Bilirubin available"
  label(data$daily_bil_lborres)="Total Bilirubin"
  label(data$daily_bil_lborresu)="Total Bilirubin Unit"
  label(data$daily_ast_lbyn)="2.12  AST/SGOT available"
  label(data$daily_ast_lborres)="AST/SGOT"
  label(data$daily_glucose_lbyn)="2.13  Glucose available"
  label(data$daily_glucose_lborres)="Glucose"
  label(data$daily_glucose_lborresu)="Glucose Unit "
  label(data$daily_bun_lbyn)="2.14  Blood Urea Nitrogen (urea) available"
  label(data$daily_bun_lborres)="Urea"
  label(data$daily_bun_lborresu)="Blood Urea Nitrogen (urea)"
  label(data$daily_lactate_lbyn)="2.15  Lactate available"
  label(data$daily_lactate_lborres)="Lactate"
  label(data$daily_lactate_lborresu)="Lactate Unit"
  label(data$daily_ldh_lbyn)="2.16 Lactate dehydrogenase (LDH) available?"
  label(data$daily_ldh_lborres)="2.16 Lactate dehydrogenase (LDH) "
  label(data$daily_cpk_lby)="2.17 Creatine Phosphokinase (CPK) available?"
  label(data$daily_cpk_lbyn_2)="2.17 Creatine Phosphokinase (CPK) "
  label(data$daily_creat_lbyn)="2.18  Creatinine available"
  label(data$daily_creat_lborres)="Creatinine"
  label(data$daily_creat_lborresu)="Creatinine Unit"
  label(data$daily_sodium_lbyn)="2.19 Sodium  available "
  label(data$daily_sodium_lborres)="Sodium "
  label(data$daily_potassium_lbyn)="2.20 Potassium available "
  label(data$daily_potassium_lborres)="Potassium"
  label(data$daily_procal_lbyn)="2.21  Procalcitonin available"
  label(data$daily_procal_lborres)="Procalcitonin"
  label(data$daily_crp_lbyn)="2.22  C-reactive protein (CRP) available"
  label(data$daily_crp_lborres)="C-reactive protein (CRP)"
  label(data$xray_prperf)="X-Ray/CT performed?"
  label(data$infiltrates_faorres)="If yes, were infiltrates present?"
  label(data$daily_form_complete)="Complete?"
  label(data$mbperf)="5.1 Was pathogen testing done during this illness episode?"
  label(data$influ_mbyn)="5.3  Influenza: "
  label(data$influ_mbcat)="5.3.1 If Yes"
  label(data$influother_mborres)="Other influenza, specify:"
  label(data$corna_mbcat)="5.3 Coronavirus: "
  label(data$corna_mbcaty)="5.3.1 If Yes:"
  label(data$coronaother_mborres)="IF Other coronavirus; Specify:"
  label(data$rsv_mbcat)="5.4 RSV"
  label(data$adeno_mbcat)="5.5 Adenovirus"
  label(data$bact_mborres)="5.6 Bacteria"
  label(data$bacteria_mborres)="If yes, specify bacteria"
  label(data$other_mbyn)="5.7 Other Infectious Respiratory Diagnosis: "
  label(data$other_mborres)=" If YES: Other infectious respiratory diagnosis, specify:"
  label(data$clinicalpneu_mborres)="5.8  Clinical pneumonia: "
  label(data$infectuk_mborres)="5.9 IF NONE OF THE ABOVE: Suspected Non-infective:"
  label(data$infectious_respiratory_disease_pathogen_diagnosis_complete)="Complete?"
  label(data$daily_mbperf)="Pathogen testing done"
  label(data$llimsno_bnum)="LIMS number"
  label(data$mbdat)="Collection Date"
  label(data$mbspec)="Bio specimen type"
  label(data$other_mbspec)="If  OTHER; Specify"
  label(data$mbmethod)="Laboratory Test Method"
  label(data$other_mbmethod)="If Other Laboratory test method; Specify"
  label(data$mborres)="Result"
  label(data$mbtestcd)="Pathogen Tested / Detected"
  label(data$infectious_respiratory_disease_pathogen_testing_complete)="Complete?"
  label(data$antiviral_cmyn)="6.9 Antiviral agent?"
  label(data$antiviral_cmtrt___1)="IF YES to antiviral agent (choice=Ribavirin)"
  label(data$antiviral_cmtrt___2)="IF YES to antiviral agent (choice=Lopinavir/Ritonvir)"
  label(data$antiviral_cmtrt___3)="IF YES to antiviral agent (choice=Interferon alpha)"
  label(data$antiviral_cmtrt___4)="IF YES to antiviral agent (choice=Interferon beta)"
  label(data$antiviral_cmtrt___5)="IF YES to antiviral agent (choice=Neuraminidase inhibitors)"
  label(data$antiviral_cmtrt___6)="IF YES to antiviral agent (choice=Other)"
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
  label(data$antibiotic_cmyn)="6.10 Antibiotic agent?"
  label(data$antibiotic_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic2_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic2_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic3_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic3_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic4_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic4_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic5_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic5_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$corticost_cmyn)="6.11 Corticosteroid agent?"
  label(data$corticost_cmroute)="If YES to Corticosteroid, specify Route"
  label(data$corticost_cmtrt)="If YES to Corticosteroid, specify type"
  label(data$corticost_cmdose)="If YES to Corticosteroid, specify dose"
  label(data$antifung_cmyn)="6.12 Antifungal agent?"
  label(data$antifungal_cmtrt)="IF YES to antifungal agent; Specify which"
  label(data$icu_hoterm)="6.1 ICU or High Dependency admission"
  label(data$icu_hostdat)="Date of ICU admission:"
  label(data$icu_hoendat)="Date of ICU discharge:"
  label(data$hodur)="If YES, total duration (days)"
  label(data$oxygen_cmoccur)="6.2. Oxygen therapy"
  label(data$noninvasive_proccur)="6.3. Non-invasive ventilation ? (e.g. BIPAP, CPAP)"
  label(data$invasive_proccur)="6.4. Invasive ventilation (any) ?"
  label(data$pronevent_prtrt)="6.4.1. Prone ventilation"
  label(data$inhalednit_cmtrt)="6.4.2. Inhaled Nitric Oxide"
  label(data$tracheo_prtrt)="6.4.3. Tracheostomy inserted"
  label(data$extracorp_prtrt)="6.5. Extracorporeal support"
  label(data$rrt_prtrt)="6.6. Renal replacement therapy (RRT) or dialysis"
  label(data$inotrop_cmtrt)="6.7. Inotropes / vasopressors"
  label(data$invasive_prdur)="6.3a If yes invasive ventilation; confirm duration "
  label(data$excorp_prdur)="6.5a If YES extracorporeal (ECMO) support; confirm duration"
  label(data$inotrope_cmdur)="6.7a If YES inotropes/vasopressors; confirm duration"
  label(data$other_cmyn)="6.8 OTHER intervention or procedure"
  label(data$other_cm)="IF  YES OTHER intervention or procedure; Specify"
  label(data$treatment_complete)="Complete?"
  label(data$vrialpneu_ceoccur)="4c. 1.Viral Pneumonia"
  label(data$bactpneu_ceoccur)="4c. 2.Bacterial pneumonia"
  label(data$ards_ceoccur)="4c. 3.Acute Respiratory Syndrome"
  label(data$cryptogenic_ceterm)="4c 4Cryptogenic organizing pneumonia (COP)"
  label(data$pneumothorax_ceterm)="4c.5. Pneumothorax"
  label(data$pleuraleff_ceterm)="4c.6. Pleural effusion"
  label(data$bronchio_ceterm)="4c.7. Bronchiolitis"
  label(data$meningitis_ceterm)="4c.8. Meningitis / Encephalitis"
  label(data$seizure_ceterm)="4c.9. Seizure"
  label(data$stroke_ceterm)="4c.10. Stroke / Cerebrovascular accident"
  label(data$heartfailure_ceterm)="4c.11. Congestive heart failure"
  label(data$endocarditis_aeterm)="4c.12. Endocarditis / Myocarditis / Pericarditis"
  label(data$arrhythmia_ceterm)="4c.13. Cardiac arrhythmia"
  label(data$ischaemia_ceterm)="4c.14. Cardiac ischemia"
  label(data$cardiacarrest_ceterm)="4c.15. Cardiac arrest"
  label(data$bacteraemia_ceterm)="4c.16. Bacteraemia"
  label(data$coagulo_ceterm)="4c.17. Coagulation disorder / Disseminated intravascular coagulation"
  label(data$aneamia_ceterm)="4c.18. Anaemia"
  label(data$rhabdomyolsis_ceterm)="4c.19. Rhabdomyolysis / Myositis"
  label(data$renalinjury_ceterm)="4c.20. Acute renal injury / Acute renal failure"
  label(data$gastro_ceterm)="4c.21. Gastrointestinal hemorrhage"
  label(data$pancreat_ceterm)="4c.22. Pancreatitis"
  label(data$liverdysfunction_ceterm)="4c.23. Liver dysfunction"
  label(data$hyperglycemia_aeterm)="4c.24. Hyperglycaemia"
  label(data$hypoglycemia_ceterm)="4c.25. Hypoglycaemia"
  label(data$other_ceoccur)="4c.26. Other"
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
  label(data$dsterm)="7.1. Outcome:"
  label(data$dsstdtcyn)="Is the Outcome date known"
  label(data$dsstdtc)="7.2. Outcome date"
  label(data$suppds_qval)="7.3.1. If Discharged alive: Ability to self-care at discharge versus before illness"
  label(data$oxygen_proccur)="7.3.2. Oxygen therapy"
  label(data$renal_proccur)="7.3.3. Dialysis / renal treatment?"
  label(data$other_cmoccur)="7.3.4. Other intervention or procedure?"
  label(data$other_cmtrt)="If YES: Specify (multiple permitted)"
  label(data$siteid)="7.4.1. If Transferred: Facility name"
  label(data$siteyn)="7.4.2. If Transferred: Is the transfer facility a study site?"
  label(data$subjidcat)="7.4.3. If a Study Site: Participant number at new facility"
  label(data$transfer_subjid)="If Different, Participant number at the new facility"
  label(data$outcome_complete)="Complete?"
  label(data$core_addinfo)="Additional Information"
  label(data$core_additional_information_complete)="Complete?"
}
























# Original label list unedited
if(FALSE){
  label(data$subjid)="PIN"
  label(data$redcap_event_name)="Event Name"
  label(data$redcap_repeat_instrument)="Repeat Instrument"
  label(data$redcap_repeat_instance)="Repeat Instance"
  # label(data$redcap_data_access_group)="Data Access Group"
  label(data$participant_identification_number_pin_complete)="Complete?"
  label(data$tiers_faorres___1)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 0 (data collection only); no consent required.)"
  label(data$tiers_faorres___2)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 1 (single point sample collection); consent required.)"
  label(data$tiers_faorres___3)="Please acknowledge that you have understood the consent taking process for the Tier(s) for which you are entering data. (choice=TIER 2 (multiple point sample collection); consent required.)"
  label(data$tiers_consent_complete)="Complete?"
  label(data$dsstdat)="Date of Enrolment"
  label(data$sitename)="Site name"
  label(data$corona_ieorres)="Suspected or proven infection with pathogen of Public Health Interest"
  label(data$coriona_ieorres2)="Proven or high likelihood of infection with pathogen of Public Health Interest  "
  label(data$fever)="A history of self reported feverishness or measured fever ? of ≥ 38°C"
  label(data$cough)="Cough "
  label(data$dyspnoe)="Dyspnoea (shortness of breath) OR Tachypnoea*"
  label(data$ari)="Clinical suspicion of ARI despite not meeting criteria above"
  label(data$symptoms_epi_travel)="2.A history of travel to an area with documented cases of novel coronavirus infection"
  label(data$symptoms_epi_physical)="3.Close contact* with a confirmed or probable case of nCoV infection, while that patient was symptomatic"
  label(data$symptoms_epi_healthfac)="4.Presence in a healthcare facility where nCoV infections have been managed"
  label(data$symptoms_epi_lab)="5. Presence in a laboratory handling samples suspected or confirmed of having the respiratory pathogen of public health interest present"
  label(data$symptoms_epi_pathogen)="6.An otherwise unexplained respiratory illness in the context of an outbreak, suspected outbreak or incident of a respiratory pathogen of public health interest"
  label(data$symptoms_epi_animal)="7.Direct contact with animals in countries where the nCoV is known to be circulating in animal populations or where human infections have occurred as a result of presumed zoonotic transmission"
  label(data$inclusion_criteria_complete)="Complete?"
  label(data$sex)="1.1 Sex at Birth:"
  label(data$agedatyn)="1,2 Is birth date known"
  label(data$agedat)="Birth date"
  label(data$age_estimateyears)="1.3 Age/Estimated age"
  label(data$age_estimateyearsu)="Age/Estimated age Unit"
  label(data$ethnic___1)="1.4 Ethnic group (check all that apply) (choice=Arab)"
  label(data$ethnic___2)="1.4 Ethnic group (check all that apply) (choice=Black)"
  label(data$ethnic___3)="1.4 Ethnic group (check all that apply) (choice=East Asian)"
  label(data$ethnic___4)="1.4 Ethnic group (check all that apply) (choice=South Asian)"
  label(data$ethnic___5)="1.4 Ethnic group (check all that apply) (choice=West Asian)"
  label(data$ethnic___6)="1.4 Ethnic group (check all that apply) (choice=Latin American)"
  label(data$ethnic___7)="1.4 Ethnic group (check all that apply) (choice=White)"
  label(data$ethnic___8)="1.4 Ethnic group (check all that apply) (choice=Aboriginal/First Nations)"
  label(data$ethnic___9)="1.4 Ethnic group (check all that apply) (choice=Other)"
  label(data$ethnic___10)="1.4 Ethnic group (check all that apply) (choice=N/A)"
  label(data$healthwork_erterm)="1.5 Employed as a healthcare worker?"
  label(data$labwork_erterm)="1.6 Employed in a microbiology laboratory?"
  label(data$pregyn_rptestcd)="1.7 Pregnant ?"
  label(data$other_ethnic)="If Other: Specify"
  label(data$egestage_rptestcd)="If YES: Gestational weeks assessment:"
  label(data$postpart_rptestcd)="1.8 Post Partum (within six weeks of delivery)"
  label(data$pregout_rptestcd)="1.8.1 Pregnancy Outcome"
  label(data$dlvrdtc_rptestcd)="1.8.2 Delivery date"
  label(data$aplb_lbperf)="1.8.3 Baby tested for mothers ARI infection"
  label(data$aplb_lborres)=" If YES"
  label(data$aplb_lbmethod)="1.8.4 Method"
  label(data$aplb_lbmethodoth)="If OTHER method; Specify"
  label(data$apdm_age)="1.9 INFANT - Less than 1 year old?"
  label(data$apvs_weight)="1.9.1 Birth weight"
  label(data$apvs_weightu)="Birth weight unit"
  label(data$apsc_gestout)="1.9.2 Gestational outcome"
  label(data$estgest)="If < 37wk  confirm estimated gestation   "
  label(data$apsc_brfedind)="1.9.3 Breastfed"
  label(data$apsc_brfedindy)="If  YES"
  label(data$apsc_brdisdat)="Discontinued breastfeeding at "
  label(data$apsc_dvageind)="1.9.4 Appropriate development for age?"
  label(data$apsc_vcageind)="1.9.5 Vaccinations appropriate for age/country?"
  label(data$demographics_complete)="Complete?"
  label(data$cestdat)="2.1 Onset date of first/earliest symptom"
  label(data$hostdat)="2.2 Admission date at this facility"
  label(data$hosttim)="2.3 Admission time at this facility"
  label(data$hooccur)="2.4 Transfer from other facility?"
  label(data$siteid_transfer)="2.5.1 If YES: Name of transfer facility:"
  label(data$hostdat_transfer)="2.5.2 If YES: Admission date at transfer facility "
  label(data$subjidcat_transfer)="2.5.3 If YES - Study Site: Participant ID # at transfer facility"
  label(data$subjid_transfer)="If DIFFERENT; Participant number"
  label(data$travel_erterm)="2.6 Travel in the 14 days prior to first symptom onset?"
  label(data$supper_trcntry)="2.6.1 If YES, state location: Country"
  label(data$supper_trcity)="2.6.2 If YES, state location: City/Geographic Area:"
  label(data$erendat)="2.6.3 If YES, return date:"
  label(data$travel_erterm_2)="2.6.4 Travelled to another country in the 14 days prior to first symptom onset?"
  label(data$supper_trcntry_2)="2.6.5 If YES, state location: Country"
  label(data$supper_trcity_2)="2.6.6 If YES, state location: City/Geographic Area:"
  label(data$erendat_2)="2.6.7 If YES, return date:"
  label(data$animal_eryn)="2.7 Contact with animals, raw meat or insect bites in the 14 days prior to symptom onset?"
  label(data$animal_erterm)="If YES, specify the animal/insect"
  label(data$animal_erdat)="If YES, specify the animal/insect date of exposure "
  label(data$animal_eryn_2)="2.8 Contact with another animals, raw meat or insect bites in the 14 days prior to symptom onset?"
  label(data$animal_erterm_2)="If YES, specify the animal/insect"
  label(data$animal_erdat_2)="If YES, specify the animal/insect date of exposure "
  label(data$onset_and_admission_complete)="Complete?"
  label(data$temp_vsyn)="Temperate on admission available?"
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
  label(data$oxy_vsorresu)="Oxygen saturation on:"
  label(data$oxy_vsorres)="Oxygen saturation"
  label(data$fever_ceoccur_v2)="4a.1. History of fever"
  label(data$cough_ceoccur_v2)="4a.2. Cough"
  label(data$coughsput_ceoccur_v2)="4a.2.1 Cough: with sputum production"
  label(data$coughhb_ceoccur_v2)="4a.2.2 Cough: bloody sputum / haemoptysis"
  label(data$sorethroat_ceoccur_v2)="4a.3. Sore throat"
  label(data$runnynose_ceoccur_v2)="4a.4. Runny nose (Rhinorrhoea)"
  label(data$earpain_ceoccur_v2)="4a.5. Ear pain"
  label(data$wheeze_ceoccur_v2)="4a.6. Wheezing"
  label(data$chestpain_ceoccur_v2)="4a.7. Chest pain"
  label(data$myalgia_ceoccur_v2)="4a.8. Muscle aches (Myalgia)"
  label(data$jointpain_ceoccur_v2)="4a.9. Joint pain (Arthralgia)"
  label(data$fatigue_ceoccur_v2)="4a.10. Fatigue / Malaise"
  label(data$shortbreath_ceoccur_v2)="4a.11. Shortness of breath (Dyspnea)"
  label(data$lowerchest_ceoccur_v2)="4a.12. Lower chest wall indrawing"
  label(data$headache_ceoccur_v2)="4a.13. Headache"
  label(data$confusion_ceoccur_v2)="4a.14. Altered consciousness / confusion"
  label(data$seizures_cecoccur_v2)="4a.15. Seizures"
  label(data$abdopain_ceoccur_v2)="4a.16. Abdominal pain"
  label(data$vomit_ceoccur_v2)="4a.17. Vomiting / Nausea"
  label(data$diarrhoea_ceoccur_v2)="4a.18. Diarrhoea"
  label(data$conjunct_ceoccur_v2)="4a.19. Conjunctivitis"
  label(data$rash_ceoccur_v2)="4a.19. Skin rash"
  label(data$skinulcers_ceoccur_v2)="4a.20. Skin ulcers"
  label(data$lymp_ceoccur_v2)="4a.21. Lymphadenopathy"
  label(data$bleed_ceoccur_v2)="4a.22. Bleeding (Haemorrhage)"
  label(data$bleed_ceterm_v2)="4a.23. If Bleeding (others)"
  label(data$bleed_cetermy_v2)="If Yes, specify site(s)"
  label(data$admission_signs_and_symptoms_complete)="Complete?"
  label(data$chrincard)="4b.1. Chronic cardiac disease, including congenital heart disease (not hypertesnion)"
  label(data$chronicpul_mhyn)="4b.2. Chronic pulmonary disease (not asthma)"
  label(data$asthma_mhyn)="4b.3. Asthma (physician diagnosed) "
  label(data$renal_mhyn)="4b.4. Chronic kidney disease"
  label(data$modliv)="4b.5. Moderate or severe liver disease"
  label(data$mildliver)="4b.6. Mild Liver disease "
  label(data$chronicneu_mhyn)="4b.7. Chronic neurological disorder "
  label(data$malignantneo_mhyn)="4b.8. Malignant neoplasm "
  label(data$chronichaemo_mhyn)="4b.9. Chronic hematologic disease "
  label(data$aidshiv_mhyn)="4b.10. AIDS/HIV "
  label(data$obesity_mhyn)="4b.11. Obesity (as defined by clinical staff)"
  label(data$diabetescom_mhyn)="4b.12. Diabetes with complications"
  label(data$diabetes_mhyn)="4b.13. Diabetes without complications "
  label(data$rheumatologic_mhyn)="4b.14. Rheumatologic disorder "
  label(data$dementia_mhyn)="4b.15. Dementia"
  label(data$malnutrition_mhyn)="4b.16. Malnutrition"
  label(data$smoking_mhyn)="4b.17. Smoking"
  label(data$other_mhyn)="4b.18. Other relevant risk factors?"
  label(data$otherrisktext)="Other  relevant risk factor; Specify"
  label(data$comorbidities_complete)="Complete?"
  label(data$immno_cmtrt)="Treated with immunosuppressants, including oral (not inhaled) corticosteroids prior to admission"
  label(data$infect_cmtrt)="Treated with anti-infectives  for illness episode prior to admission?"
  label(data$infect)="If yes,  please specify anti infectives"
  label(data$preadmission_treatment_complete)="Complete?"
  label(data$cmtrt)="Medication name (generic name preferred)  "
  label(data$cmdose)="Dose"
  label(data$cmdosfrq)="Dose Frequency"
  label(data$cmdosfrqoth)="Specify other dose frequency"
  label(data$cmroute)="Route"
  label(data$cmrouteoth)="Specify other route"
  label(data$preadmission_medication_complete)="Complete?"
  label(data$daily_dsstdat)="DATE OF ASSESSMENT "
  label(data$daily_hoterm)="1.1  Current admission to ICU/IMC/HDU"
  label(data$daily_fi02_lbyn)="1.2  FiO2  available?"
  label(data$daily_fio2_lborres)="FiO2 "
  label(data$daily_sa02_lbyn)="1.3  SaO2 available?"
  label(data$daily_sao2_lborres)="SaO2  "
  label(data$daily_pao2_lbyn)="1.4  PaO2 available?"
  label(data$daily_pao2_lborres)="PaO2:"
  label(data$daily_pao2_lborresu)="PaO2 unit:"
  label(data$daily_pao2_lbspec)="PaO2 sample type"
  label(data$daily_pco2_lbyn)="1.5  PCO2 available?"
  label(data$daily_pco2_lborres)="PCO2 "
  label(data$daily_pco2_lborresu)="PCO2 Unit"
  label(data$daily_ph_lbyn)="1.6  pH available"
  label(data$daily_ph_lborres)="pH"
  label(data$daily_hco3_lbyn)="1.7  HCO3-  available"
  label(data$daily_hco3_lborres)="HCO3- "
  label(data$daily_baseex_lbyn)="1.8  Base excess available"
  label(data$daily_baseex_lborres)="Base excess"
  label(data$avpu_vsorres)="1.9 AVPU"
  label(data$daily_gcs_lbyn)="1.10 Glasgow Coma Score available?"
  label(data$daily_gcs_vsorres)="GCS"
  label(data$systolic_vsyn)="1.11 Systolic Blood Pressure available?"
  label(data$systolic_vsorres)="Systolic Pressure"
  label(data$diastolic_vsyn)="1.12 Diastolic Blood Pressure available?"
  label(data$diastolic_vsorres)="Diastolic Pressure"
  label(data$daily_meanart_lbyn)="1.13 Mean Arterial Pressure available?"
  label(data$daily_meanart_vsorres)="Mean Arterial Pressure:"
  label(data$daily_urine_lbyn)="1.14  Urine flow rate available?"
  label(data$daily_urine_lborres)="Urine output"
  label(data$daily_noninvasive_prtrt)="1.15  Non-invasive ventilation (e.g. BIPAP, CPAP)?"
  label(data$daily_invasive_prtrt)="1.16  Invasive ventilation?"
  label(data$daily_nasaloxy_cmtrt)="1.17 High-flow nasal canula oxygen therapy?"
  label(data$daily_ecmo_prtrt)="1.18  ECLS/ECMO"
  label(data$daily_rrt_cmtrt)="1.19  Dialysis / Hemofiltration?"
  label(data$daily_inotrope_cmyn)="1.20  Any vasopressor / inotropic support?"
  label(data$daily_dopless5_cmtrt)="1.21a  Dopamine <    5 µg/min OR Dobutamine OR Milrinone OR Levosimendan:"
  label(data$daily_dop5to15_cmtrt)="1.22b  Dopamine 5-15 µg/min OR Epinephrine/Norepinephrine <                       0.1 ?kg/min OR Vasopressin OR Phenylephrine:"
  label(data$daily_dopgr15_cmtrt)="1.22c  Dopamine > 15 µg/min OR Epinephrine/Norepinephrine > 0.1 ?kg/min:"
  label(data$daily_neuro_cmtrt)="1.23  Neuromuscular blocking agents?"
  label(data$daily_nitritc_cmtrt)="1.24 Inhaled Nitric Oxide ?"
  label(data$daily_prone_cmtrt)="1.25  Prone Positioning"
  label(data$daily_trach_prperf)="1.26  Tracheostomy inserted?"
  label(data$daily_prperf)="1.27 Other intervention or procedure?"
  label(data$daily_other_prtrt)="If YES other intervention, Specify,"
  label(data$daily_lbperf)="2.1  Results available for sample taken on the date in section 1 above ?"
  label(data$daily_lbdat)="Date of  assessment"
  label(data$daily_hb_lbyn)="2.2  Haemoglobin available"
  label(data$daily_hb_lborres)="Haemoglobin"
  label(data$daily_hb_lborresu)="Haemoglobin Unit"
  label(data$daily_wbc_lbyn)="2.3  WBC count available"
  label(data$daily_wbc_lborres)="WBC count"
  label(data$daily_wbc_lborresu)="WBC Unit"
  label(data$daily_lymp_lbyn)="2.4  Lymphocyte count available"
  label(data$daily_lymp_lborres)="Lymphocyte count"
  label(data$daily_neutro_lbyn)="2.5 Neutrophil count available"
  label(data$daily_neutro_lborres)="Neutrophil count"
  label(data$daily_haematocrit_lbyn)="2.6 Haematocrit available"
  label(data$daily_haematocrit_lborres)="Haematocrit"
  label(data$daily_plt_lbyn)="2.7  Platelets available"
  label(data$daily_plt_lborres)="Platelet Count"
  label(data$daily_plt_lborresu)="Platelets Unit"
  label(data$daily_aptt_lbyn)="2.8 APTT/APTR available"
  label(data$daily_aptt_lborres)="APTT/APTR"
  label(data$daily_pt_inr_lbyn)="2.9  PT or INR available"
  label(data$daily_pt_lborres)="PT "
  label(data$daily_inr_lborres)="INR"
  label(data$daily_alt_lbyn)="2.10  ALT / SGPT available"
  label(data$daily_alt_lborres)="ALT / SGPT"
  label(data$daily_bil_lbyn)="2.11  Total Bilirubin available"
  label(data$daily_bil_lborres)="Total Bilirubin"
  label(data$daily_bil_lborresu)="Total Bilirubin Unit"
  label(data$daily_ast_lbyn)="2.12  AST/SGOT available"
  label(data$daily_ast_lborres)="AST/SGOT"
  label(data$daily_glucose_lbyn)="2.13  Glucose available"
  label(data$daily_glucose_lborres)="Glucose"
  label(data$daily_glucose_lborresu)="Glucose Unit "
  label(data$daily_bun_lbyn)="2.14  Blood Urea Nitrogen (urea) available"
  label(data$daily_bun_lborres)="Blood Urea Nitrogen (urea)"
  label(data$daily_bun_lborresu)="Blood Urea Nitrogen (urea)"
  label(data$daily_lactate_lbyn)="2.15  Lactate available"
  label(data$daily_lactate_lborres)="Lactate"
  label(data$daily_lactate_lborresu)="Lactate Unit"
  label(data$daily_ldh_lbyn)="2.16 Lactate dehydrogenase (LDH) available?"
  label(data$daily_ldh_lborres)="2.16 Lactate dehydrogenase (LDH) "
  label(data$daily_cpk_lby)="2.17 Creatine Phosphokinase (CPK) available?"
  label(data$daily_cpk_lbyn_2)="2.17 Creatine Phosphokinase (CPK) "
  label(data$daily_creat_lbyn)="2.18  Creatinine available"
  label(data$daily_creat_lborres)="Creatinine"
  label(data$daily_creat_lborresu)="Creatinine Unit"
  label(data$daily_sodium_lbyn)="2.19 Sodium  available "
  label(data$daily_sodium_lborres)="Sodium "
  label(data$daily_potassium_lbyn)="2.20 Potassium available "
  label(data$daily_potassium_lborres)="Potassium"
  label(data$daily_procal_lbyn)="2.21  Procalcitonin available"
  label(data$daily_procal_lborres)="Procalcitonin"
  label(data$daily_crp_lbyn)="2.22  C-reactive protein (CRP) available"
  label(data$daily_crp_lborres)="C-reactive protein (CRP)"
  label(data$xray_prperf)="X-Ray/CT performed?"
  label(data$infiltrates_faorres)="If yes, were infiltrates present?"
  label(data$daily_form_complete)="Complete?"
  label(data$mbperf)="5.1 Was pathogen testing done during this illness episode?"
  label(data$influ_mbyn)="5.3  Influenza: "
  label(data$influ_mbcat)="5.3.1 If Yes"
  label(data$influother_mborres)="Other influenza, specify:"
  label(data$corna_mbcat)="5.3 Coronavirus: "
  label(data$corna_mbcaty)="5.3.1 If Yes:"
  label(data$coronaother_mborres)="IF Other coronavirus; Specify:"
  label(data$rsv_mbcat)="5.4 RSV"
  label(data$adeno_mbcat)="5.5 Adenovirus"
  label(data$bact_mborres)="5.6 Bacteria"
  label(data$bacteria_mborres)="If yes, specify bacteria"
  label(data$other_mbyn)="5.7 Other Infectious Respiratory Diagnosis: "
  label(data$other_mborres)=" If YES: Other infectious respiratory diagnosis, specify:"
  label(data$clinicalpneu_mborres)="5.8  Clinical pneumonia: "
  label(data$infectuk_mborres)="5.9 IF NONE OF THE ABOVE: Suspected Non-infective:"
  label(data$infectious_respiratory_disease_pathogen_diagnosis_complete)="Complete?"
  label(data$daily_mbperf)="Pathogen testing done"
  label(data$llimsno_bnum)="LIMS number"
  label(data$mbdat)="Collection Date"
  label(data$mbspec)="Bio specimen type"
  label(data$other_mbspec)="If  OTHER; Specify"
  label(data$mbmethod)="Laboratory Test Method"
  label(data$other_mbmethod)="If Other Laboratory test method; Specify"
  label(data$mborres)="Result"
  label(data$mbtestcd)="Pathogen Tested / Detected"
  label(data$infectious_respiratory_disease_pathogen_testing_complete)="Complete?"
  label(data$antiviral_cmyn)="6.9 Antiviral agent?"
  label(data$antiviral_cmtrt___1)="IF YES to antiviral agent (choice=Ribavirin)"
  label(data$antiviral_cmtrt___2)="IF YES to antiviral agent (choice=Lopinavir/Ritonvir)"
  label(data$antiviral_cmtrt___3)="IF YES to antiviral agent (choice=Interferon alpha)"
  label(data$antiviral_cmtrt___4)="IF YES to antiviral agent (choice=Interferon beta)"
  label(data$antiviral_cmtrt___5)="IF YES to antiviral agent (choice=Neuraminidase inhibitors)"
  label(data$antiviral_cmtrt___6)="IF YES to antiviral agent (choice=Other)"
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
  label(data$antibiotic_cmyn)="6.10 Antibiotic agent?"
  label(data$antibiotic_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic2_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic2_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic3_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic3_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic4_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic4_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$antibiotic5_cmyn)="Would you like to add another antibiotic?"
  label(data$antibiotic5_cmtrt)="IF YES to antibiotic agent; Specify type"
  label(data$corticost_cmyn)="6.11 Corticosteroid agent?"
  label(data$corticost_cmroute)="If YES to Corticosteroid, specify Route"
  label(data$corticost_cmtrt)="If YES to Corticosteroid, specify type"
  label(data$corticost_cmdose)="If YES to Corticosteroid, specify dose"
  label(data$antifung_cmyn)="6.12 Antifungal agent?"
  label(data$antifungal_cmtrt)="IF YES to antifungal agent; Specify which"
  label(data$icu_hoterm)="6.1 ICU or High Dependency admission"
  label(data$icu_hostdat)="Date of ICU admission:"
  label(data$icu_hoendat)="Date of ICU discharge:"
  label(data$hodur)="If YES, total duration (days)"
  label(data$oxygen_cmoccur)="6.2. Oxygen therapy"
  label(data$noninvasive_proccur)="6.3. Non-invasive ventilation ? (e.g. BIPAP, CPAP)"
  label(data$invasive_proccur)="6.4. Invasive ventilation (any) ?"
  label(data$pronevent_prtrt)="6.4.1. Prone ventilation"
  label(data$inhalednit_cmtrt)="6.4.2. Inhaled Nitric Oxide"
  label(data$tracheo_prtrt)="6.4.3. Tracheostomy inserted"
  label(data$extracorp_prtrt)="6.5. Extracorporeal support"
  label(data$rrt_prtrt)="6.6. Renal replacement therapy (RRT) or dialysis"
  label(data$inotrop_cmtrt)="6.7. Inotropes / vasopressors"
  label(data$invasive_prdur)="6.3a If yes invasive ventilation; confirm duration "
  label(data$excorp_prdur)="6.5a If YES extracorporeal (ECMO) support; confirm duration"
  label(data$inotrope_cmdur)="6.7a If YES inotropes/vasopressors; confirm duration"
  label(data$other_cmyn)="6.8 OTHER intervention or procedure"
  label(data$other_cm)="IF  YES OTHER intervention or procedure; Specify"
  label(data$treatment_complete)="Complete?"
  label(data$vrialpneu_ceoccur)="4c. 1.Viral Pneumonia"
  label(data$bactpneu_ceoccur)="4c. 2.Bacterial pneumonia"
  label(data$ards_ceoccur)="4c. 3.Acute Respiratory Syndrome"
  label(data$cryptogenic_ceterm)="4c 4Cryptogenic organizing pneumonia (COP)"
  label(data$pneumothorax_ceterm)="4c.5. Pneumothorax"
  label(data$pleuraleff_ceterm)="4c.6. Pleural effusion"
  label(data$bronchio_ceterm)="4c.7. Bronchiolitis"
  label(data$meningitis_ceterm)="4c.8. Meningitis / Encephalitis"
  label(data$seizure_ceterm)="4c.9. Seizure"
  label(data$stroke_ceterm)="4c.10. Stroke / Cerebrovascular accident"
  label(data$heartfailure_ceterm)="4c.11. Congestive heart failure"
  label(data$endocarditis_aeterm)="4c.12. Endocarditis / Myocarditis / Pericarditis"
  label(data$arrhythmia_ceterm)="4c.13. Cardiac arrhythmia"
  label(data$ischaemia_ceterm)="4c.14. Cardiac ischemia"
  label(data$cardiacarrest_ceterm)="4c.15. Cardiac arrest"
  label(data$bacteraemia_ceterm)="4c.16. Bacteraemia"
  label(data$coagulo_ceterm)="4c.17. Coagulation disorder / Disseminated intravascular coagulation"
  label(data$aneamia_ceterm)="4c.18. Anaemia"
  label(data$rhabdomyolsis_ceterm)="4c.19. Rhabdomyolysis / Myositis"
  label(data$renalinjury_ceterm)="4c.20. Acute renal injury / Acute renal failure"
  label(data$gastro_ceterm)="4c.21. Gastrointestinal hemorrhage"
  label(data$pancreat_ceterm)="4c.22. Pancreatitis"
  label(data$liverdysfunction_ceterm)="4c.23. Liver dysfunction"
  label(data$hyperglycemia_aeterm)="4c.24. Hyperglycaemia"
  label(data$hypoglycemia_ceterm)="4c.25. Hypoglycaemia"
  label(data$other_ceoccur)="4c.26. Other"
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
  label(data$dsterm)="7.1. Outcome:"
  label(data$dsstdtcyn)="Is the Outcome date known"
  label(data$dsstdtc)="7.2. Outcome date"
  label(data$suppds_qval)="7.3.1. If Discharged alive: Ability to self-care at discharge versus before illness"
  label(data$oxygen_proccur)="7.3.2. Oxygen therapy"
  label(data$renal_proccur)="7.3.3. Dialysis / renal treatment?"
  label(data$other_cmoccur)="7.3.4. Other intervention or procedure?"
  label(data$other_cmtrt)="If YES: Specify (multiple permitted)"
  label(data$siteid)="7.4.1. If Transferred: Facility name"
  label(data$siteyn)="7.4.2. If Transferred: Is the transfer facility a study site?"
  label(data$subjidcat)="7.4.3. If a Study Site: Participant number at new facility"
  label(data$transfer_subjid)="If Different, Participant number at the new facility"
  label(data$outcome_complete)="Complete?"
  label(data$core_addinfo)="Additional Information"
  label(data$core_additional_information_complete)="Complete?"
}



