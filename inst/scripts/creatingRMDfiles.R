# Importing the original 2017, 2019 and 2021 YRBSS data
# Catalina Canizares
# 07-23-2023
# UPDATE: 01/25/2025
# UPDATE: 01/30/2025

library(haven)

raw2015 <- read_sav("inst/extData/yrbs2015.sav")

usethis::use_data(raw2015, overwrite = TRUE)

raw2017 <- read_sav("inst/extData/yrbs2017.sav")

usethis::use_data(raw2017, overwrite = TRUE)

raw2019 <- read_sav("inst/extData/yrbs2019.dat.sav")

usethis::use_data(raw2019, overwrite = TRUE)

raw2021 <- read_sav("inst/extData/yrbs2021.dat.sav")

usethis::use_data(raw2021, overwrite = TRUE)

raw2023 <- read_sav("inst/extData/yrbs2023.sav")

usethis::use_data(raw2023, overwrite = TRUE)
