# Importing the original 2019 and 2021 YRBSS data
# Catalina Canizares
# 07-23-2023


library(haven)

raw2019 <- read_sav("inst/extData/yrbs2019.dat.sav")

usethis::use_data(raw2019, overwrite = TRUE)

raw2021 <- read_sav("inst/extData/yrbs2021.dat.sav")

usethis::use_data(raw2021, overwrite = TRUE)