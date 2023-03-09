library(magrittr)

devtools::install_github("nevrome/covid19germany")

dat <- covid19germany::get_RKI_timeseries() %>%
  covid19germany::group_RKI_timeseries() %>%
  dplyr::select(Date, NumberNewTestedIll, NumberNewDead) %>%
  dplyr::filter(Date < as.POSIXct("2020-04-18"))

save(dat, file = "rki_dat_Apr17.RData")
