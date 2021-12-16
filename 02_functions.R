# ISARIC REDCap database analysis: FUNCTIONS
# Any bespoke function is placed here. 
# Centre for Medical Informatics, Usher Institute, University of Edinburgh 2020

# Functions require library(tidyverse), requires() nor :: not currently written in.  

# 1. ggplot templates / extraction functions
# 2. Table defaults
# 3. Prognostic scoring

# Lisa's lovely Lancet-style ggplot template (Lisa Norman) ---------------------------------------------
ggplot_lancet <- function(...){
  ggplot2::ggplot(...) +
    scale_fill_brewer(palette = "Blues") +
    scale_colour_brewer(palette = "Blues") +
    scale_y_continuous(expand = c(0, 0)) +
    theme_classic() +
    theme(
      axis.title.x       = element_text(margin = margin(10, 0, 0, 0, "pt")),
      axis.title.y       = element_text(margin = margin(0, 10, 0, 0, "pt")),
      axis.text          = element_text(size = 10),
      axis.ticks.length  = unit(5, "pt"),
      panel.grid.major   = element_blank(),
      panel.grid.minor   = element_blank(),
      strip.background   = element_blank(),
      strip.placement    = "outside",
      strip.text.x       = element_text(hjust = 0,
                                        face  = "bold",
                                        size  = 10),
      strip.text.y       = element_text(hjust = 0,
                                        size  = 10),
      text = element_text(
        #family = "Merriweather",
        size = 10,
        face = "plain"
      ),
      legend.position = c(1, 1),
      legend.justification = c(1, 1),
      legend.direction = "horizontal",
      legend.key.size = unit(10, "pt")
    ) +
    guides(fill = guide_legend(title.position = "top"))
}

# Extract ggplot y-axis limit for placing text annotations ----------------------------------- 
## Doesn't work with facetted plots 
## Other parameters left for future need
get_ymax <- function(plot) {
  gb = ggplot_build(plot)
  # xmin = gb$layout$panel_params[[1]]$x.range[1]
  # xmax = gb$layout$panel_params[[1]]$x.range[2]
  # ymin = gb$layout$panel_params[[1]]$y.range[1]
  ymax = gb$layout$panel_params[[1]]$y.range[2]
  # list(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)
  return(ymax)
}


# Table defaults ---------------------------------------------------------------------------
# This makes table resize or continue over multiple pages in all output types
# PDF powered by kableExtra, Word by flextable
mytable = function(x, caption = "", row.names = FALSE, longtable = TRUE, 
                   latex_options = c("hold_position"), font_size = 7.0, ...){
  knitr::kable(x, row.names = row.names, align = c("l", "l", "r", "r", "r", "r", "r", "r", "r", "r", "r"), 
               booktabs = TRUE, caption = caption, longtable = longtable,
               linesep = "", ...) 
}


# Prognostic scores ---------------------------------------------------------------------------------
## All scores written in rlang. 
## These take non-quoted variable names in arguments. 
## Output can be a single vector, vector of components, or the original tibble/dataframe with vector/components
## NEWS was made using cut(), but dplyr::case_when() more flexible, easier to read and less error prone. 

# National early warning score  ---------------------------------------------------------------------
news <- function(.data, rr, spo2, o2_rx, hypoxic_target, sbp, hr, temp, alt_conscious, 
                 output = c("vector", "components", "df_vector", "df_components"), 
                 na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .spo2 = enquo(spo2)
  .o2_rx = enquo(o2_rx)
  .hypoxic_target = enquo(hypoxic_target)
  .sbp = enquo(sbp)
  .hr = enquo(hr)
  .temp = enquo(temp)
  .alt_conscious = enquo(alt_conscious)
  
  out <- .data %>%
    # Ensure correct class / format
    dplyr::mutate_at(vars(!! .rr, !! .spo2, !! .sbp, !! .hr, !! .temp), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .o2_rx, !! .hypoxic_target, !! .alt_conscious), 
                     ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    # Convert parameters to NEWS scores
    dplyr::mutate(
      
      news_spo2 = case_when(
        !! .hypoxic_target == "yes" & 
          !! .o2_rx == "yes"       ~ cut(!! .spo2, right = FALSE,
                                         breaks = c(-Inf, 84, 86, 88, 93, 95, 97, Inf),
                                         labels = c(3, 2, 1, 0, 1, 2, 3)),
        !! .hypoxic_target == "yes" & 
          !! .o2_rx == "no"        ~ cut(!! .spo2, right = FALSE,
                                         breaks = c(-Inf, 84, 86, 88, Inf),
                                         labels = c(3, 2, 1, 0)),
        TRUE                       ~ cut(!! .spo2, right = FALSE,
                                         breaks = c(-Inf, 92, 94, 96, Inf),
                                         labels = c(3, 2, 1, 0))
      ),
      news_alt_conscious = case_when(
        !! .alt_conscious %in% 
          c("1", "yes")                 ~ 3,
        !! .alt_conscious %in%
          c("0", "no")                  ~ 0,
        TRUE                            ~ NA_real_),
      news_o2_rx = case_when(
        !! .o2_rx %in% 
          c("1", "yes")                 ~ 2,
        !! .o2_rx %in%
          c("0", "no")                  ~ 0,
        TRUE                            ~ NA_real_),
      
      news_temp                         = cut(!! .temp, breaks = c(-Inf, 35, 36, 38, 39, Inf),
                                              labels = c(3,1,0,1,2)),
      news_sbp                          = cut(!! .sbp, breaks = c(-Inf, 90, 100, 110, 219, Inf),
                                              labels = c(3,2,1,0,3)),
      news_hr                           = cut(!! .hr, breaks = c(-Inf, 40, 50, 90, 110, 130, Inf),
                                              labels = c(3,1,0,1,2,3)),
      
      # That RR 8 to 11 has very few patients, like 2. 
      # news_rr                           = cut(!! .rr, breaks = c(-Inf, 8, 11, 20, 24, Inf),
      #                                         labels = c(3, 1, 0, 2, 3))) %>% 
      
      news_rr                           = cut(!! .rr, breaks = c(-Inf, 8, 20, 24, Inf),
                                              labels = c(3, 0, 2, 3))) %>% 
    
    dplyr::mutate_at(vars(news_spo2, news_temp, news_sbp, news_hr, news_rr), 
                     ~ as.character(.) %>% as.numeric()) %>% 
    
    # total of all "news" columns
    mutate(news = rowSums(dplyr::select(., dplyr::starts_with("news_")),
                          na.rm = na_to_zeros)) %>% 
    {if(all_na_rm){
      dplyr::mutate(., news = dplyr::if_else(is.na(news_alt_conscious) &
                                               is.na(news_temp) &
                                               is.na(news_sbp) & 
                                               is.na(news_hr) &
                                               is.na(news_rr), NA_real_, news))
    } else {
      .
    }} 
  if(output == "vector"){
    out %>% 
      pull(news)
  } else if(output == "components"){
    out %>% 
      select(starts_with("news"))
  } else if(output == "df_vector"){
    out %>%
      select(-starts_with("news_"))
  } else if(output == "df_components"){
    out
  }
}
# Example----------------------
# example <- dplyr::bind_cols(resprate = sample(c(1:40, c(NA, NA, NA, NA)), 200, replace = T),
#                             spo2 = sample(70:100, 200, replace = T),
#                             o2_therapy = sample(c("No", "Yes", "No", NA, NA), 200, replace = T),
#                             hypox_yn = sample(c("No", "Yes", "No", "No", NA), 200, replace = T),
#                             sys_bp = sample(30:250, 200, replace = T),
#                             heartrate = sample(c(30:250, rep(NA, 50)), 200, replace = T),
#                             temp = sample(seq(33, 40, by = 0.1), 200, replace = T),
#                             alt_conscious = sample(c("No", "Yes", "No", NA), 200, replace = T))
# news(example,
#       rr = "resprate", spo2 = "spo2", o2_rx = "o2_therapy", hypoxic_target = "hypox_yn",
#       sbp = "sys_bp", hr = "heartrate", temp = "temp", alt_conscious = "alt_conscious", output = "df") %>%
#   select(starts_with("news"))
# example %>% tail()
# tmp %>% tail()
# example %>% tail()
# example = example %>% add_row(resprate = NA, spo2 = NA, o2_therapy = NA, hypox_yn = NA, 
#                     sys_bp = NA, heartrate = NA, temp = NA, alt_conscious = NA)
# news(example,
#      rr = "resprate", spo2 = "spo2", o2_rx = "o2_therapy", hypoxic_target = "hypox_yn",
#      sbp = "sys_bp", hr = "heartrate", temp = "temp", alt_conscious = "alt_conscious", output = "df") %>%
#   select(starts_with("news")) %>% 
#   tail()


# SOFA --------------------------------------------------
sofa <- function(.data, po2, fio2, invasive_vent, plts, bil, gcs, creat, map, 
                 dopgr15, dop5to15, dopless5, 
                 output = c("vector", "components", "df_vector", "df_components"), 
                 na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .po2 = enquo(po2)
  .fio2 = enquo(fio2)
  .invasive_vent = enquo(invasive_vent)
  .plts = enquo(plts)
  .bil = enquo(bil)
  .gcs = enquo(gcs)
  .creat = enquo(creat)
  .map = enquo(map)
  .dopgr15 = enquo(dopgr15)
  .dop5to15 = enquo(dop5to15)
  .dopless5 = enquo(dopless5)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .po2, !! .fio2, !! .plts, !! .bil, !! .gcs, !! .creat, !! .map), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .invasive_vent, !! .dopgr15, !! .dop5to15, !! .dopless5), 
                     ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # PaO2/FiO2 ratio
      .pf_ratio = (!! .po2*7.5)/!! .fio2,
      
      # Respiration SOFA score
      sofa_respi = case_when(
        .pf_ratio < 100 &
          !! .invasive_vent == "YES" ~ 4, # and ventilated
        .pf_ratio < 200 &
          !! .invasive_vent == "YES" ~ 3, # and ventilated
        .pf_ratio < 300 ~ 2,
        .pf_ratio < 400 ~ 1,
        .pf_ratio >= 400 ~ 0,
        TRUE ~ NA_real_),
      
      # Coagulation  SOFA score
      sofa_coagu = case_when(
        !! .plts < 20 ~ 4,
        !! .plts < 50 ~ 3,
        !! .plts < 100 ~ 2,
        !! .plts < 150 ~ 1,
        !! .plts >= 150 ~ 0,
        TRUE ~ NA_real_),
      
      # Liver  SOFA score
      sofa_liver = case_when(
        !! .bil < 20 ~ 0,
        !! .bil < 33 ~ 1,
        !! .bil < 102 ~ 2,
        !! .bil < 204 ~ 3,
        !! .bil >= 204 ~ 4,
        TRUE ~ NA_real_),
      
      # Central nervous system SOFA score
      sofa_nervo = case_when(
        !! .gcs < 6 ~ 4,
        !! .gcs  < 9 ~ 3,
        !! .gcs  < 12  ~ 2,
        !! .gcs  < 14  ~ 1,
        !! .gcs  >= 14 ~ 0,
        TRUE ~ NA_real_),
      
      # Renal  SOFA score
      sofa_renal = case_when(
        !! .creat < 110 ~ 0,
        !! .creat < 171 ~ 1,
        !! .creat < 300 ~ 2,
        !! .creat < 441 ~ 3,
        !! .creat >= 441 ~ 4,
        TRUE ~ NA_real_),
      
      sofa_cardi = case_when(
        !! .dopgr15 == "yes" ~ 4,      
        !! .dop5to15 == "yes" ~ 3,      
        !! .dopless5 == "yes" ~ 2,
        !! .map < 70 ~ 1,
        !! .map >= 70 ~ 0,
        TRUE ~ NA_real_
      )
    ) %>% 
    
    # total of all "news" columns
    mutate(sofa = rowSums(dplyr::select(., dplyr::starts_with("sofa_")),
                          na.rm = na_to_zeros)) %>% 
    {if(all_na_rm){
      dplyr::mutate(., sofa = dplyr::if_else(
        is.na(sofa_respi) &
          is.na(sofa_coagu) &
          is.na(sofa_liver) &
          is.na(sofa_nervo) &
          is.na(sofa_renal) &
          is.na(sofa_cardi), NA_real_, sofa))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(sofa)
  } else if(output == "components"){
    out %>% 
      select(starts_with("sofa"))
  } else if(output == "df_vector"){
    out %>% 
      pull(sofa) %>% 
      bind_cols(.data, sofa = .)
  } else if(output == "df_components"){
    out
  }
}
# example = dplyr::bind_cols(po2 = sample(c(8:20, c(NA, NA, NA, NA)), 200, replace = T),
#                            fio2 = sample(0.2:0.8, 200, replace = T),
#                            invasive_vent = sample(c("No", "Yes", "No", NA, NA), 200, replace = T),
#                            plts = sample(15:200, 200, replace = T),
#                            bil = sample(10:150, 200, replace = T),
#                            gcs = sample(3:15, 200, replace = T),
#                            creat = sample(60:250, 200, replace = T),
#                            map = sample(40:80, 200, replace = T),
#                            dopgr15 = sample(c("No", "Yes", NA), 200, replace = TRUE),
#                            dop5to15 = sample(c("No", "Yes", NA), 200, replace = TRUE),
#                            dopless5 = sample(c("No", "Yes", NA), 200, replace = TRUE)) %>% 
#   add_row(po2 = NA, fio2 = NA, invasive_vent = NA, plts = NA, 
#           bil= NA, gcs = NA, creat = NA, map = NA, dopgr15 = NA, dop5to15 = NA, dopless5 = NA)
# 
# example %>%                            
#   sofa(po2 = po2, fio2 = fio2, invasive_vent = invasive_vent, plts = plts, 
#        bil= bil, gcs = gcs, creat = creat, map = map, dopgr15 = dopgr15, dop5to15 = dop5to15, dopless5 = dopless5,
#        output = "components", na_to_zeros = FALSE, all_na_rm = FALSE) %>% 
#   tail()


# qsofa -----------------------------------------------------
qsofa <- function(.data, rr, sbp, gcs,
                  output = c("vector", "components", "df_vector", "df_components"), 
                  na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .gcs = enquo(gcs)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .gcs), as.numeric) %>% 
    # dplyr::mutate_at(vars(!! .avpu), 
    #                  ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # qSOFA score
      qsofa_rr = case_when(
        !! .rr >=  22 ~ 1, 
        !! .rr < 22 ~ 0,
        TRUE ~ NA_real_),
      
      qsofa_sbp = case_when(
        !! .sbp <=  100 ~ 1, 
        !! .sbp > 100 ~ 0,
        TRUE ~ NA_real_),
      
      qsofa_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
    ) %>% 
    mutate(
      qsofa = rowSums(dplyr::select(., dplyr::starts_with("qsofa_")),
                      na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., qsofa = dplyr::if_else(
        is.na(qsofa_rr) &
          is.na(qsofa_sbp) &
          is.na(qsofa_gcs), NA_real_, qsofa))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(qsofa)
  } else if(output == "components"){
    out %>% 
      select(starts_with("qsofa"))
  } else if(output == "df_vector"){
    out %>% 
      pull(qsofa) %>% 
      bind_cols(.data, qsofa = .)
  } else if(output == "df_components"){
    out
  }
}


# Coronascore-------------------------------------------------------------------
coronascore <- function(.data, age, rr, spo2, sbp, gcs, card_comrb, resp_comrb, renal_comrb, cancer_comrb,
                        output = c("vector", "components", "df_vector", "df_components"), 
                        na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .age = enquo(age)
  .rr = enquo(rr)
  .spo2 = enquo(spo2)
  .sbp = enquo(sbp)
  .gcs = enquo(gcs)
  .card_comrb = enquo(card_comrb)
  .resp_comrb = enquo(resp_comrb)
  .renal_comrb = enquo(renal_comrb)
  .cancer_comrb = enquo(cancer_comrb)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .age, !! .rr, !! .spo2, !! .sbp, !! .gcs), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .card_comrb, !! .resp_comrb, !! .renal_comrb, !! .cancer_comrb), 
                     ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # coronascore
      coronascore_age = case_when(
        !! .age < 50 ~ 1,
        !! .age < 60 ~ 2,
        !! .age < 70 ~ 3, 
        !! .age < 80 ~ 4,
        is.na(!! .age) ~ NA_real_,
        TRUE ~ 5),
      
      coronascore_rr = case_when(
        !! .rr >=  24 ~ 1, 
        !! .rr < 24 ~ 0,
        TRUE ~ NA_real_),
      
      coronascore_spo2 = case_when(
        !! .spo2 >=  90 ~ 1, 
        !! .spo2 < 90 ~ 0,
        TRUE ~ NA_real_),
      
      coronascore_sbp = case_when(
        !! .sbp <=  100 ~ 1, 
        !! .sbp > 100 ~ 0,
        TRUE ~ NA_real_),
      
      coronascore_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      coronascore_card_comrb = case_when(
        !! .card_comrb == "yes" ~ 1, 
        !! .card_comrb == "no" ~ 0, 
        TRUE ~ NA_real_),
      
      coronascore_resp_comrb = case_when(
        !! .resp_comrb == "yes" ~ 1, 
        !! .resp_comrb == "no" ~ 0, 
        TRUE ~ NA_real_),
      
      coronascore_renal_comrb = case_when(
        !! .renal_comrb == "yes" ~ 1, 
        !! .renal_comrb == "no" ~ 0, 
        TRUE ~ NA_real_),
      
      coronascore_cancer_comrb = case_when(
        !! .cancer_comrb == "yes" ~ 1, 
        !! .cancer_comrb == "no" ~ 0, 
        TRUE ~ NA_real_),
      
    ) %>% 
    mutate(
      coronascore = rowSums(dplyr::select(., dplyr::starts_with("coronascore_")),
                            na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., coronascore = dplyr::if_else(
        (is.na(coronascore_rr) &
           is.na(coronascore_spo2) &
           is.na(coronascore_sbp) &
           is.na(coronascore_gcs)) | 
          (is.na(coronascore_card_comrb) &
             is.na(coronascore_resp_comrb) &
             is.na(coronascore_renal_comrb) &
             is.na(coronascore_cancer_comrb)), NA_real_, coronascore))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(coronascore)
  } else if(output == "components"){
    out %>% 
      select(starts_with("coronascore"))
  } else if(output == "df_vector"){
    out %>% 
      pull(coronascore) %>% 
      bind_cols(.data, coronascore = .)
  } else if(output == "df_components"){
    out
  }
}


# curb65 -----------------------------------------------------
curb65 <- function(.data, rr, sbp, dbp, gcs, bun, age,
                   output = c("vector", "components", "df_vector", "df_components"), 
                   na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .dbp = enquo(dbp)
  .gcs = enquo(gcs)
  .bun = enquo(bun)
  .age = enquo(age)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .dbp, !! .gcs, !! .bun, !! .age), as.numeric) %>% 
    # dplyr::mutate_at(vars(!! .avpu), 
    #                  ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # curb65 score
      curb65_rr = case_when(
        !! .rr >=  30 ~ 1, 
        !! .rr < 30 ~ 0,
        TRUE ~ NA_real_),
      
      curb65_bp = case_when(
        !! .sbp <  90 |
          !! .dbp <= 60 ~ 1, 
        is.na(!! .sbp) & is.na(!! .dbp) ~ NA_real_,
        TRUE ~ 0),
      
      curb65_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      curb65_bun = case_when(
        !! .bun >  7 ~ 1, 
        !! .bun <= 7 ~ 0,
        TRUE ~ NA_real_),
      
      curb65_age = case_when(
        !! .age >= 65 ~ 1, 
        !! .age < 65 ~ 0,
        TRUE ~ NA_real_),
      
    ) %>% 
    mutate(
      curb65 = rowSums(dplyr::select(., dplyr::starts_with("curb65_")),
                       na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., curb65 = dplyr::if_else(
        is.na(curb65_rr) &
          is.na(curb65_bp) &
          is.na(curb65_gcs) &
          is.na(curb65_bun) &
          is.na(curb65_age), NA_real_, curb65))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(curb65)
  } else if(output == "components"){
    out %>% 
      select(starts_with("curb65"))
  } else if(output == "df_vector"){
    out %>% 
      pull(curb65) %>% 
      bind_cols(.data, curb65 = .)
  } else if(output == "df_components"){
    out
  }
}


# crb65 -----------------------------------------------------
crb65 <- function(.data, rr, sbp, dbp, gcs, age,
                  output = c("vector", "components", "df_vector", "df_components"), 
                  na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .dbp = enquo(dbp)
  .gcs = enquo(gcs)
  .age = enquo(age)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .dbp, !! .gcs, !! .age), as.numeric) %>% 
    # dplyr::mutate_at(vars(!! .avpu), 
    #                  ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # crb65 score
      crb65_rr = case_when(
        !! .rr >=  30 ~ 1, 
        !! .rr < 30 ~ 0,
        TRUE ~ NA_real_),
      
      crb65_bp = case_when(
        !! .sbp <  90 |
          !! .dbp <= 60 ~ 1, 
        is.na(!! .sbp) & is.na(!! .dbp) ~ NA_real_,
        TRUE ~ 0),
      
      crb65_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      crb65_age = case_when(
        !! .age >= 65 ~ 1, 
        !! .age < 65 ~ 0,
        TRUE ~ NA_real_),
      
    ) %>% 
    mutate(
      crb65 = rowSums(dplyr::select(., dplyr::starts_with("crb65_")),
                      na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., crb65 = dplyr::if_else(
        is.na(crb65_rr) &
          is.na(crb65_bp) &
          is.na(crb65_gcs) &
          is.na(crb65_age), NA_real_, crb65))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(crb65)
  } else if(output == "components"){
    out %>% 
      select(starts_with("crb65"))
  } else if(output == "df_vector"){
    out %>% 
      pull(crb65) %>% 
      bind_cols(.data, crb65 = .)
  } else if(output == "df_components"){
    out
  }
}


# ecurb65 -----------------------------------------------------
ecurb65 <- function(.data, rr, sbp, dbp, gcs, bun, age,
                    ldh, alb, plts,
                    output = c("vector", "components", "df_vector", "df_components"), 
                    na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .dbp = enquo(dbp)
  .gcs = enquo(gcs)
  .bun = enquo(bun)
  .age = enquo(age)
  .ldh = enquo(ldh)
  .alb = enquo(alb) # Albumin not available in ISARIC
  .plts = enquo(plts)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .dbp, !! .gcs, !! .bun, !! .age,
                          !! .ldh, !! .alb, !! plts), as.numeric) %>% 
    # dplyr::mutate_at(vars(!! .avpu), 
    #                  ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # ecurb65 score
      ecurb65_rr = case_when(
        !! .rr >=  30 ~ 1, 
        !! .rr < 30 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_bp = case_when(
        !! .sbp <  90 |
          !! .dbp <= 60 ~ 1, 
        is.na(!! .sbp) & is.na(!! .dbp) ~ NA_real_,
        TRUE ~ 0),
      
      ecurb65_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_bun = case_when(
        !! .bun >  7 ~ 1, 
        !! .bun <= 7 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_age = case_when(
        !! .age >= 65 ~ 1, 
        !! .age < 65 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_ldh = case_when(
        !! .ldh > 230 ~ 1, 
        !! .ldh <= 230 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_alb = case_when(
        !! .alb < 35 ~ 1, 
        !! .alb >=35 ~ 0,
        TRUE ~ NA_real_),
      
      ecurb65_plts = case_when(
        !! .plts < 100 ~ 1, 
        !! .plts >= 100 ~ 0,
        TRUE ~ NA_real_),
      
    ) %>% 
    mutate(
      ecurb65 = rowSums(dplyr::select(., dplyr::starts_with("ecurb65_")),
                        na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., ecurb65 = dplyr::if_else(
        is.na(ecurb65_rr) &
          is.na(ecurb65_bp) &
          is.na(ecurb65_gcs) &
          is.na(ecurb65_bun) &
          is.na(ecurb65_age) &
          is.na(ecurb65_ldh) &
          is.na(ecurb65_alb) &
          is.na(ecurb65_plts), NA_real_, ecurb65))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(ecurb65)
  } else if(output == "components"){
    out %>% 
      select(starts_with("ecurb65"))
  } else if(output == "df_vector"){
    out %>% 
      pull(ecurb65) %>% 
      bind_cols(.data, ecurb65 = .)
  } else if(output == "df_components"){
    out
  }
}


# dscrb65 -----------------------------------------------------
dscrb65 <- function(.data, rr, sbp, dbp, gcs, age,
                    spo2, card_comrb, renal_comrb, cancer_comrb, liver_comrb, 
                    output = c("vector", "components", "df_vector", "df_components"), 
                    na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .dbp = enquo(dbp)
  .gcs = enquo(gcs)
  .age = enquo(age)
  .spo2 = enquo(spo2)
  .card_comrb = enquo(card_comrb)
  .renal_comrb = enquo(renal_comrb)
  .cancer_comrb = enquo(cancer_comrb)
  .liver_comrb = enquo(liver_comrb)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .dbp, !! .gcs, !! .age, !! .spo2), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .card_comrb, !! .renal_comrb, !! .cancer_comrb, !! .liver_comrb), 
                     ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # dscrb65 score
      dscrb65_rr = case_when(
        !! .rr >=  30 ~ 1, 
        !! .rr < 30 ~ 0,
        TRUE ~ NA_real_),
      
      dscrb65_bp = case_when(
        !! .sbp <  90 |
          !! .dbp <= 60 ~ 1, 
        is.na(!! .sbp) & is.na(!! .dbp) ~ NA_real_,
        TRUE ~ 0),
      
      dscrb65_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      dscrb65_age = case_when(
        !! .age >= 65 ~ 1, 
        !! .age < 65 ~ 0,
        TRUE ~ NA_real_),
      
      dscrb65_spo2 = case_when(
        !! .spo2 < 90 ~ 1, 
        !! .spo2 >= 90 ~ 0,
        TRUE ~ NA_real_),
      
      dscrb65_comrb = case_when(
        !! .card_comrb == "yes" ~ 1,
        !! .renal_comrb == "yes" ~ 1,
        !! .cancer_comrb == "yes" ~ 1,
        !! .liver_comrb == "yes" ~ 1,
        is.na(!! .card_comrb) &
          is.na(!! .renal_comrb) &
          is.na(!! .cancer_comrb) &
          is.na(!! .liver_comrb) ~ NA_real_,
        TRUE ~ 0)
      
    ) %>% 
    mutate(
      dscrb65 = rowSums(dplyr::select(., dplyr::starts_with("dscrb65_")),
                        na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., dscrb65 = dplyr::if_else(
        is.na(dscrb65_rr) &
          is.na(dscrb65_bp) &
          is.na(dscrb65_gcs) &
          is.na(dscrb65_age) &
          is.na(dscrb65_spo2) &
          is.na(dscrb65_comrb), NA_real_, dscrb65))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(dscrb65)
  } else if(output == "components"){
    out %>% 
      select(starts_with("dscrb65"))
  } else if(output == "df_vector"){
    out %>% 
      pull(dscrb65) %>% 
      bind_cols(.data, dscrb65 = .)
  } else if(output == "df_components"){
    out
  }
}


# scap -----------------------------------------------------
scap <- function(.data, rr, sbp, gcs, age,
                 po2, fio2, bun, ph, infiltrates, 
                 output = c("vector", "components", "df_vector", "df_components"), 
                 na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .gcs = enquo(gcs)
  .age = enquo(age)
  .po2 = enquo(po2)
  .fio2 = enquo(fio2)
  .bun = enquo(bun)
  .ph = enquo(ph)
  .infiltrates = enquo(infiltrates)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .gcs, !! .age, !! .po2, !! .fio2, !! .bun, !! .ph), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .infiltrates), ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # scap score
      scap_rr = case_when(
        !! .rr >  30 ~ 9, 
        !! .rr <= 30 ~ 0,
        TRUE ~ NA_real_),
      
      scap_bp = case_when(
        !! .sbp <  90 ~ 11,
        !! .sbp >= 90 ~ 0,
        TRUE ~ NA_real_),
      
      scap_gcs = case_when(
        !! .gcs <= 14 ~ 5, 
        !! .gcs >  14 ~ 0,
        TRUE ~ NA_real_),
      
      scap_age = case_when(
        !! .age >= 80 ~ 5, 
        !! .age < 80 ~ 0,
        TRUE ~ NA_real_),
      
      # PaO2/FiO2 ratio
      .pf_ratio = (!! .po2*7.5)/!! .fio2,
      
      # Respiration SOFA score
      scap_respi = case_when(
        .pf_ratio < 250 ~ 6,
        (!! .po2*7.5) < 54 ~ 6,
        .pf_ratio >= 250 ~ 0,
        (!! .po2*7.5) >= 54 ~ 0,
        TRUE ~ NA_real_),
      
      scap_bun = case_when(
        !! .bun > 10.7 ~ 5, 
        !! .bun <= 10.7 ~ 0,
        TRUE ~ NA_real_),
      
      scap_ph = case_when(
        !! .ph < 7.3 ~ 13, 
        !! .bun >= 7.3 ~ 0,
        TRUE ~ NA_real_),
      
      scap_infiltrates = case_when(
        !! .infiltrates == "yes" ~ 5, 
        !! .infiltrates == "no" ~ 0,
        TRUE ~ NA_real_)
      
    ) %>% 
    mutate(
      scap = rowSums(dplyr::select(., dplyr::starts_with("scap_")),
                     na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., scap = dplyr::if_else(
        is.na(scap_rr) &
          is.na(scap_bp) &
          is.na(scap_gcs) &
          is.na(scap_age) &
          is.na(scap_respi) &
          is.na(scap_bun) &
          is.na(scap_ph) &
          is.na(scap_infiltrates), NA_real_, scap))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(scap)
  } else if(output == "components"){
    out %>% 
      select(starts_with("scap"))
  } else if(output == "df_vector"){
    out %>% 
      pull(scap) %>% 
      bind_cols(.data, scap = .)
  } else if(output == "df_components"){
    out
  }
}


# Tongji score -------------------------------------------------------------------------------------------
tongji <- function(.data, age, ldh, lymph, spo2,
                   output = c("vector", "components", "df_vector", "df_components")){
  
  .age = enquo(age)
  .ldh = enquo(ldh)
  .lymph = enquo(lymph)
  .spo2 = enquo(spo2)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .age, !! .ldh, !! .lymph, !! .spo2), as.numeric) %>%
    
    mutate(
      # tongji
      tongji_age = !! .age * 0.047,
      tongji_ldh = !! .ldh * 0.003, 
      tongji_lymph = log(!! .lymph) * -1.094,
      tongji_spo2 = !! .spo2 * -0.098, 
      tongji_link = 4.559 + tongji_age + tongji_ldh + tongji_lymph + tongji_spo2,
      tongji = boot::inv.logit((tongji_link))
    )
  
  if(output == "vector"){
    out %>% 
      pull(tongji)
  } else if(output == "components"){
    out %>% 
      select(starts_with("tongji"))
  } else if(output == "df_vector"){
    out %>% 
      pull(tongji) %>% 
      bind_cols(.data, tongji = .)
  } else if(output == "df_components"){
    out
  }
}

# Example from paper
# beta = c(4.559, 0.047, 0.003, -1.094, -0.098)
# x = c(1, 59, 482, log(0.64), 85)
# boot::inv.logit(beta %*% x)
# 
# tmp = tibble(
#   age = 59,
#   ldh = 482,
#   lymph = 0.64,
#   spo2 = 85)
# 
# tmp %>%
#   tongji(age = age, ldh = ldh, lymph = lymph, spo2 = spo2)


# adrop -----------------------------------------------------
adrop <- function(.data, spo2, sbp, gcs, bun, age, sex,
                  output = c("vector", "components", "df_vector", "df_components"), 
                  na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .spo2 = enquo(spo2)
  .sbp = enquo(sbp)
  .gcs = enquo(gcs)
  .bun = enquo(bun)
  .age = enquo(age)
  .sex = enquo(sex)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .spo2, !! .sbp, !! .gcs, !! .bun, !! .age), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .sex),
                     ~ as.character(.) %>% tolower() %>% trimws()) %>%
    
    mutate(
      # adrop score
      adrop_spo2 = case_when(
        !! .spo2 >=  90 ~ 1, 
        !! .spo2 > 90 ~ 0,
        TRUE ~ NA_real_),
      
      adrop_sbp = case_when(
        !! .sbp <  90  ~ 1, 
        !! .sbp >=  90  ~ 0, 
        TRUE ~ NA_real_),
      
      adrop_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),
      
      adrop_bun = case_when(
        !! .bun >=  7.5 ~ 1, 
        !! .bun < 7.5 ~ 0,
        TRUE ~ NA_real_),
      
      adrop_age = case_when(
        !! .sex == "male" & !! .age >= 70 ~ 1, 
        !! .sex == "female" & !! .age >= 75 ~ 1,
        is.na(!! .sex) | is.na(!! .age) ~ NA_real_,
        TRUE ~ 0),
      
    ) %>% 
    mutate(
      adrop = rowSums(dplyr::select(., dplyr::starts_with("adrop_")),
                      na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., adrop = dplyr::if_else(
        is.na(adrop_spo2) &
          is.na(adrop_sbp) &
          is.na(adrop_gcs) &
          is.na(adrop_bun) &
          is.na(adrop_age), NA_real_, adrop))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(adrop)
  } else if(output == "components"){
    out %>% 
      select(starts_with("adrop"))
  } else if(output == "df_vector"){
    out %>% 
      pull(adrop) %>% 
      bind_cols(.data, adrop = .)
  } else if(output == "df_components"){
    out
  }
}


# psi -----------------------------------------------------
psi <- function(.data, rr, sbp, gcs, temp, hr, 
                age, sex, card_comrb, renal_comrb, cancer_comrb, liver_comrb,
                ph, po2, spo2, bun, na, glu, haematocrit, infiltrates,
                output = c("vector", "components", "df_vector", "df_components"), 
                na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .gcs = enquo(gcs)
  .temp = enquo(temp)
  .hr = enquo(hr)
  
  .age = enquo(age)
  .sex = enquo(sex)
  .card_comrb = enquo(card_comrb)
  .renal_comrb = enquo(renal_comrb)
  .cancer_comrb = enquo(cancer_comrb)
  .liver_comrb = enquo(liver_comrb) 
  
  .ph = enquo(ph)
  .po2 = enquo(po2)
  .spo2 = enquo(spo2)
  .bun = enquo(bun)
  .na= enquo(na)
  .glu = enquo(glu)
  .haematocrit = enquo(haematocrit)
  
  .infiltrates = enquo(infiltrates)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .gcs, !! .temp, !! .hr, !! .age, !! .ph, 
                          !! .po2, !! .spo2, !! .bun, !! .na, !! .glu, !! .haematocrit), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .sex, !! .card_comrb, !! .renal_comrb, !! .cancer_comrb, !! .liver_comrb, 
                          !! .infiltrates), ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      # psi score
      psi_age = case_when(
        !! .sex == "male" ~ age,
        !! .sex == "female" ~ age - 10,
        is.na(!! .sex) ~ NA_real_,
        TRUE ~ NA_real_),
      
      # Nursing home resisdent not included
      
      psi_cancer = case_when(
        !!  .card_comrb == "yes" ~ 30,
        !!  .card_comrb == "no" ~ 0,
        TRUE ~ NA_real_),
      
      psi_liver = case_when(
        !! .liver_comrb == "yes" ~ 20, 
        !! .liver_comrb == "no" ~ 0,
        TRUE ~ NA_real_),
      
      psi_card = case_when(
        !! .card_comrb == "yes" ~ 10, 
        !! .card_comrb == "no" ~ 0,
        TRUE ~ NA_real_),
      
      # CVA excluded as don't have
      
      psi_renal = case_when(
        !! .renal_comrb == "yes" ~ 10, 
        !! .renal_comrb == "no" ~ 0,
        TRUE ~ NA_real_),
      
      psi_gcs = case_when(
        !! .gcs <=  14 ~ 20, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),      
      
      psi_rr = case_when(
        !! .rr >  30 ~ 20, 
        !! .rr <= 30 ~ 0,
        TRUE ~ NA_real_),
      
      psi_sbp = case_when(
        !! .sbp <  90 ~ 20, 
        !! .sbp >= 90 ~ 0,
        TRUE ~ NA_real_),
      
      psi_temp = case_when(
        !! .temp < 35 ~ 15, 
        !! .temp >=40 ~ 15,
        is.na(!! .temp) ~ NA_real_,
        TRUE ~ 0),
      
      psi_hr = case_when(
        !! .hr > 125 ~ 10, 
        !! .hr <= 125 ~ 0,
        TRUE ~ NA_real_),
      
      psi_ph = case_when(
        !! .ph < 7.35 ~ 30, 
        !! .ph >= 7.35 ~ 0,
        TRUE ~ NA_real_),
      
      psi_spo2 = case_when(
        !! .spo2 >=  90 ~ 1, 
        !! .spo2 < 90 ~ 0,
        TRUE ~ NA_real_),
      
      psi_bun = case_when(
        !! .bun > 10.7 ~ 20, 
        !! .bun <= 10.7 ~ 0,
        TRUE ~ NA_real_),
      
      psi_na = case_when(
        !! .na < 130 ~ 20, 
        !! .na >= 130 ~ 0,
        TRUE ~ NA_real_),
      
      psi_glu = case_when(
        !! .glu > 13.9 ~ 10, 
        !! .glu <= 13.9 ~ 0,
        TRUE ~ NA_real_),
      
      psi_haematocrit = case_when(
        !! .haematocrit < 30 ~ 10, 
        !! .haematocrit >= 30 ~ 0,
        TRUE ~ NA_real_),
      
      psi_po2 = case_when(
        !! .po2 < 8 | 
          !! .spo2 < 90 ~ 10,
        !! .po2 >= 8 | 
          !! .spo2 >= 90 ~ 0,
        TRUE ~ NA_real_),
      
      psi_infiltrates = case_when(
        !! .infiltrates == "yes" ~ 10, 
        !! .infiltrates == "no" ~ 0,
        TRUE ~ NA_real_)
      
    ) %>% 
    mutate(
      psi = rowSums(dplyr::select(., dplyr::starts_with("psi_")),
                    na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., psi = dplyr::if_else(
        is.na(psi_age) &
          is.na(psi_cancer) &
          is.na(psi_liver) &
          is.na(psi_card) &
          is.na(psi_renal) &
          is.na(psi_gcs) &
          is.na(psi_rr) &
          is.na(psi_sbp) &
          is.na(psi_temp) &
          is.na(psi_hr) &
          is.na(psi_ph) &
          is.na(psi_spo2) & 
          is.na(psi_bun) &
          is.na(psi_na) &
          is.na(psi_glu) &
          is.na(psi_haematocrit) &
          is.na(psi_po2) &
          is.na(psi_infiltrates), NA_real_, psi))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(psi)
  } else if(output == "components"){
    out %>% 
      select(starts_with("psi"))
  } else if(output == "df_vector"){
    out %>% 
      pull(psi) %>% 
      bind_cols(.data, psi = .)
  } else if(output == "df_components"){
    out
  }
}

# flucp -----------------------------------------------------
flucp <- function(.data, rr, sbp, spo2, gcs, infiltrates,
                  output = c("vector", "components", "df_vector", "df_components"), 
                  na_to_zeros = TRUE, all_na_rm = TRUE){
  
  .rr = enquo(rr)
  .sbp = enquo(sbp)
  .spo2 = enquo(spo2)
  .gcs = enquo(gcs)
  .infiltrates = enquo(infiltrates)
  
  out = .data %>% 
    dplyr::mutate_at(vars(!! .rr, !! .sbp, !! .spo2, !! .gcs), as.numeric) %>% 
    dplyr::mutate_at(vars(!! .infiltrates), ~ as.character(.) %>% tolower() %>% trimws()) %>% 
    
    mutate(
      flucp_rr = case_when(
        !! .rr >=  30 ~ 1, 
        !! .rr < 30 ~ 0,
        TRUE ~ NA_real_),
      
      flucp_sbp = case_when(
        !! .sbp <  90 ~ 1, 
        !! .sbp >= 90 ~ 0,
        TRUE ~ NA_real_),
      
      flucp_spo2 = case_when(
        !! .spo2 <=  90 ~ 1, 
        !! .spo2 > 90 ~ 0,
        TRUE ~ NA_real_),
      
      flucp_gcs = case_when(
        !! .gcs <=  14 ~ 1, 
        !! .gcs > 14 ~ 0,
        TRUE ~ NA_real_),      
      
      flucp_infiltrates = case_when(
        !! .infiltrates == "yes" ~ 1, 
        !! .infiltrates == "no" ~ 0,
        TRUE ~ NA_real_)
      
    ) %>% 
    mutate(
      flucp = rowSums(dplyr::select(., dplyr::starts_with("flucp_")),
                      na.rm = na_to_zeros)
    ) %>% 
    
    {if(all_na_rm){
      dplyr::mutate(., flucp = dplyr::if_else(
        is.na(flucp_rr) &
          is.na(flucp_sbp) &
          is.na(flucp_gcs) &
          is.na(flucp_spo2) & 
          is.na(flucp_infiltrates), NA_real_, flucp))
    } else {
      .
    }}
  
  if(output == "vector"){
    out %>% 
      pull(flucp)
  } else if(output == "components"){
    out %>% 
      select(starts_with("flucp"))
  } else if(output == "df_vector"){
    out %>% 
      pull(flucp) %>% 
      bind_cols(.data, flucp = .)
  } else if(output == "df_components"){
    out
  }
}


# balance--------------------------------
# Documentation
#' Derive formatted balance table from matchit output
#' @description Derive formatted balance table from matchit output
#' @param matchit_out Output from matchit function
#' @param var_strata Column name of the stratifying variable used in the matchit function.
#' @param threshold_smd Threshold below which the absolute standardised mean difference is considered balanced.
#' @return Balance table
#' @import tidyverse
#' @import magrittr
#' @import tibble
#' @importFrom MatchIt match.data
#' @importFrom stringr str_split
#' @importFrom Hmisc wtd.mean wtd_var
#' @importFrom scales percent
#' @importFrom zoo na.locf
#' @importFrom stddiff stddiff.category
#' @export

balance <- function(matchit_out, var_strata, threshold_smd = 0.2){
  require(tidyverse); require(magrittr); library(MatchIt); library(stringr);
  library(Hmisc); library(scales); library(stddiff); library(zoo)
  
  # Get matched datset
  data <- MatchIt::match.data(matchit_out) %>%
    tibble::as_tibble()%>%
    dplyr::mutate(var_strata = factor(dplyr::pull(., var_strata)))
  
  data_con <- dplyr::filter(data, var_strata=="0")
  data_trt <- dplyr::filter(data, var_strata=="1")
  
  
  matchit_summary <- summary(matchit_out, standardize = TRUE)
  # Unmatched data balance
  unm_data <- matchit_summary$sum.all %>%
    tibble::rownames_to_column(var = "lab_lvl") %>%
    tibble::as_tibble() %>%
    dplyr::filter(lab_lvl!="distance") %>%
    dplyr::select(lab_lvl,
                  unm_treated = "Means Treated",
                  unm_control = "Means Control",
                  unm_smd = "Std. Mean Diff.") %>%
    dplyr::mutate(unm_smd = abs(unm_smd)) %>%
    dplyr::mutate(unm_balance= ifelse(unm_smd<threshold_smd, "Yes", "No")) %>%
    dplyr::select(lab_lvl, unm_treated, unm_control, unm_smd, unm_balance)
  
  mat_data <- matchit_summary$sum.matched %>%
    tibble::rownames_to_column(var = "lab_lvl") %>%
    tibble::as_tibble() %>%
    dplyr::filter(lab_lvl!="distance") %>%
    dplyr::select(lab_lvl,
                  mat_treated = "Means Treated",
                  mat_control = "Means Control",
                  mat_smd = "Std. Mean Diff.") %>%
    dplyr::mutate(mat_smd = abs(mat_smd)) %>%
    dplyr::mutate(mat_balance= ifelse(mat_smd<threshold_smd, "Yes", "No")) %>%
    dplyr::select(lab_lvl, mat_treated, mat_control, mat_smd, mat_balance)
  
  # Get labels and levels for all variables
  metadata <- data %>%
    dplyr::select(names(.)[!names(.) %in% c("distance", "weights", "subclass")]) %>%
    purrr::map2(.x = ., .y = names(.),
                function(.x, .y){tibble::tibble("label" = .y, "class" = class(.x)) %>%
                    dplyr::mutate(level = ifelse(is.null(levels(.x))==T, NA, paste(levels(.x), collapse = ", "))) %>%
                    tidyr::separate_rows(level, sep = ", ") %>%
                    dplyr::mutate(lab_lvl = ifelse(class =="factor", paste0(label, level), label))}) %>%
    dplyr::bind_rows()
  
  tab_bal <- unm_data %>%
    dplyr::left_join(mat_data, by="lab_lvl") %>%
    dplyr::left_join(metadata, by="lab_lvl") %>%
    dplyr::select(lab_lvl, label, level, class, everything()) %>%
    dplyr::mutate_at(dplyr::vars(dplyr::ends_with("_smd")), function(x){format(signif(x, 3),nsmall=3)})
  
  
  # Calculate numeric vaiable balance stats-------------
  # Numeric data
  data_con_num <- data_con %>%
    dplyr::select(tidyselect::all_of(tab_bal %>% dplyr::filter(class == "numeric") %>% dplyr::pull(label)), weights) %>%
    dplyr::summarise_all(function(x){stringr::str_split(paste(x, collapse = ", "), ", ")}) %>%
    tidyr::pivot_longer(cols= - weights, names_to = "label") %>%
    dplyr::select(label, "data_control" = value, "weights_control" = weights)
  
  data_trt_num <- data_trt %>%
    dplyr::select(tidyselect::all_of(tab_bal %>% dplyr::filter(class == "numeric") %>% dplyr::pull(label)), weights) %>%
    dplyr::summarise_all(function(x){stringr::str_split(paste(x, collapse = ", "), ", ")}) %>%
    tidyr::pivot_longer(cols= - weights, names_to = "label") %>%
    dplyr::mutate(status = "treated", class = "numeric") %>%
    dplyr::select(label, "data_treated" = value, "weights_treated" = weights)
  
  tab_bal_num <- tab_bal %>%
    dplyr::filter(class == "numeric") %>%
    dplyr::left_join(data_con_num, by = "label") %>%
    dplyr::left_join(data_trt_num, by = "label")
  
  # Numeric balance data
  tab_bal_num_control <- tab_bal_num %>%
    dplyr::select(label, data_control,weights_control) %>%
    tidyr::unnest(cols = c(data_control, weights_control)) %>%
    dplyr::mutate_at(vars(ends_with("_control")), as.numeric) %>%
    dplyr::group_by(label) %>%
    dplyr::summarise(unm_control_mean = mean(data_control, na.rm=T),
                     unm_control_sd = sd(data_control, na.rm=T),
                     mat_control_mean = Hmisc::wtd.mean(data_control, weights_control),
                     mat_control_sd = sqrt(Hmisc::wtd.var(data_control, weights_control)))
  
  tab_bal_num_treated <- tab_bal_num %>%
    dplyr::select(label, data_treated,weights_treated) %>%
    tidyr::unnest(cols = c(data_treated, weights_treated)) %>%
    dplyr::mutate_at(vars(ends_with("_treated")), as.numeric) %>%
    dplyr::group_by(label) %>%
    dplyr::summarise(unm_treated_mean = mean(data_treated, na.rm=T),
                     unm_treated_sd = sd(data_treated, na.rm=T),
                     mat_treated_mean = Hmisc::wtd.mean(data_treated, weights_treated),
                     mat_treated_sd = sqrt(Hmisc::wtd.var(data_treated, weights_treated)))
  
  tab_bal_num_final <- tab_bal_num %>%
    dplyr::left_join(tab_bal_num_treated, by="label") %>%
    dplyr::left_join(tab_bal_num_control, by="label") %>%
    dplyr::mutate_at(vars(contains("_control_")), function(x){signif(as.numeric(x), digits=3)}) %>%
    dplyr::mutate_at(vars(contains("_treated_")), function(x){signif(as.numeric(x), digits=3)}) %>%
    dplyr::mutate(unm_control = paste0(unm_control_mean, " (", unm_control_sd, ")"),
                  unm_treated = paste0(unm_treated_mean, " (", unm_treated_sd, ")"),
                  mat_control = paste0(mat_control_mean, " (", mat_control_sd, ")"),
                  mat_treated = paste0(mat_treated_mean, " (", mat_treated_sd, ")")) %>%
    dplyr::select(lab_lvl:mat_balance) %>%
    dplyr::mutate_all(as.character)
  
  
  # Calculate factor vaiable balance stats-------------------
  # Calculate numbers
  out_n <- as.data.frame(m.out$nn) %>%
    tibble::rownames_to_column(var = "outcome") %>%
    tibble::as_tibble()
  
  n_total <- out_n %>%
    dplyr::filter(outcome %in% c("All", "Matched")) %>%
    dplyr::mutate(outcome = c("unm", "mat")) %>%
    tidyr::pivot_wider(names_from = "outcome", values_from = c(Control, Treated)) %>%
    dplyr::mutate_all(as.numeric) %>%
    magrittr::set_colnames(c("unm_control_total","mat_control_total","unm_treated_total","mat_treated_total"))
  
  # Factor data
  data_fac <- tab_bal %>%
    dplyr::filter(class == "factor") %>%
    dplyr::bind_cols(dplyr::bind_rows(purrr::map(n_total,function(x){rep(x, nrow(.))}))) %>%
    dplyr::full_join(dplyr::filter(metadata, class=="factor"),
                     by=c("lab_lvl", "label", "level", "class")) %>%
    dplyr::mutate_at(vars(ends_with("_total")), zoo::na.locf) %>%
    dplyr::arrange(lab_lvl, label, level) %>%
    dplyr::select(-lab_lvl, -class, -unm_balance, -mat_balance,-unm_smd, -mat_smd) %>%
    dplyr::rename("unm_treated_prop" = unm_treated,"unm_control_prop" = unm_control,
                  "mat_treated_prop" = mat_treated,"mat_control_prop" = mat_control) %>%
    dplyr::group_split(label) %>%
    purrr::map(function(x){x %>%
        dplyr::mutate_at(vars(ends_with("_prop")), function(a){ifelse(is.na(a)==T,1-sum(a, na.rm=T),a)}) %>%
        
        dplyr::mutate(unm_control_n = round(unm_control_prop*unm_control_total, 0),
                      unm_treated_n = round(unm_treated_prop*unm_treated_total, 0),
                      mat_treated_n = round(mat_treated_prop*mat_treated_total, 0),
                      mat_control_n = round(mat_control_prop*mat_control_total, 0)) %>%
        
        dplyr::mutate(unm_treated = paste0(unm_treated_n, " (",
                                           scales::percent(unm_treated_prop, accuracy = 0.1,  suffix = ""), ")"),
                      unm_control = paste0(unm_control_n, " (",
                                           scales::percent(unm_control_prop, accuracy = 0.1,  suffix = ""), ")"),
                      mat_treated = paste0(mat_treated_n, " (",
                                           scales::percent(mat_treated_prop, accuracy = 0.1,  suffix = ""), ")"),
                      mat_control = paste0(mat_control_n, " (",
                                           scales::percent(mat_control_prop, accuracy = 0.1, suffix = ""), ")"))})
  
  # Balance stats
  fac_unm_smd <- data_fac %>%
    purrr::map(function(x){x %>%
        dplyr::mutate(lab_lvl = paste0(label, "___", level)) %$%
        dplyr::bind_cols("data" = c(rep(lab_lvl, unm_treated_n),
                                    rep(lab_lvl, unm_control_n)),
                         "strata" = c(rep(1, sum(unm_treated_n)),
                                      rep(0, sum(unm_control_n)))) %$%
        stddiff::stddiff.category(data = as.data.frame(.),
                                  gcol = "strata",
                                  vcol = "data") %>%
        as.data.frame() %>%
        tibble::rownames_to_column("lab_lvl") %>%
        tibble::as_tibble() %>%
        dplyr::mutate(lab_lvl = gsub("NA ", "", lab_lvl)) %>%
        dplyr::mutate(label = str_split_fixed(lab_lvl, "___", 2)[,1],
                      level = str_split_fixed(lab_lvl, "___", 2)[,2]) %>%
        zoo::na.locf() %>%
        dplyr::select(label, level, "unm_smd" = stddiff) %>%
        dplyr::mutate(unm_smd = format(round(unm_smd, 3), nsmall=3))}) %>%
    dplyr::bind_rows()
  
  fac_mat_smd <- data_fac %>%
    purrr::map(function(x){x %>%
        dplyr::mutate(lab_lvl = paste0(label, "___", level)) %$%
        dplyr::bind_cols("data" = c(rep(lab_lvl, mat_treated_n),
                                    rep(lab_lvl, mat_control_n)),
                         "strata" = c(rep(1, sum(mat_treated_n)),
                                      rep(0, sum(mat_control_n)))) %$%
        stddiff::stddiff.category(data = as.data.frame(.),
                                  gcol = "strata",
                                  vcol = "data") %>%
        as.data.frame() %>%
        tibble::rownames_to_column("lab_lvl") %>%
        tibble::as_tibble() %>%
        dplyr::mutate(lab_lvl = gsub("NA ", "", lab_lvl)) %>%
        dplyr::mutate(label = str_split_fixed(lab_lvl, "___", 2)[,1],
                      level = str_split_fixed(lab_lvl, "___", 2)[,2]) %>%
        zoo::na.locf() %>%
        dplyr::select(label, level, "mat_smd" = stddiff) %>%
        dplyr::mutate(mat_smd = format(round(mat_smd, 3), nsmall=3))}) %>%
    dplyr::bind_rows()
  
  tab_bal_fac <- dplyr::bind_rows(data_fac) %>%
    dplyr::left_join(fac_unm_smd, by=c("label", "level")) %>%
    dplyr::left_join(fac_mat_smd, by=c("label", "level")) %>%
    dplyr::mutate(lab_lvl = paste0(label, level),
                  class = "factor") %>%
    dplyr::select(lab_lvl, label, level, class, unm_treated, unm_control, unm_smd,
                  mat_treated, mat_control, mat_smd)
  
  # Create final table-------------------
  tab_bal_final <- dplyr::bind_rows(tab_bal_num_final, tab_bal_fac) %>%
    dplyr::arrange(match(lab_lvl, metadata$lab_lvl)) %>%
    dplyr::mutate(unm_balance = ifelse(as.numeric(unm_smd)<threshold_smd, "Yes", "No"),
                  mat_balance = ifelse(as.numeric(mat_smd)<threshold_smd, "Yes", "No")) %>%
    dplyr::mutate(level = ifelse(class=="numeric", "(SD)", level))
  
  return(tab_bal_final)}

