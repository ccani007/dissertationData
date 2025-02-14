# Creating dictoinaries for raw versions of the YRBS
# Catalina Canizares
# 02-04-2025

library(haven)
library(bulkreadr)

raw2015 <- read_sav("inst/extData/yrbs2015.sav")

raw2017 <- read_sav("inst/extData/yrbs2017.sav")

raw2019 <- read_sav("inst/extData/yrbs2019.dat.sav")

raw2021 <- read_sav("inst/extData/yrbs2021.dat.sav")

raw2023 <- read_sav("inst/extData/yrbs2023.sav")


