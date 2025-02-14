# Creating dictoinaries for raw versions of the YRBS
# Catalina Canizares
# 02-04-2025

library(bulkreadr)
library(tidyverse)

raw2015 <- read_spss_data("inst/extData/yrbs2015.sav")

raw2017 <- read_spss_data("inst/extData/yrbs2017.sav")

raw2019 <- read_spss_data("inst/extData/yrbs2019.dat.sav")

raw2021 <- read_spss_data("inst/extData/yrbs2021.dat.sav")

raw2023 <- read_spss_data("inst/extData/yrbs2023.sav")


# Dictionaries ------------------------------------------------------------

dic_2015 <- generate_dictionary(raw2015) |>
  mutate(origin = "2015")

usethis::use_data(dic_2015, overwrite = TRUE)

dic_2017 <- generate_dictionary(raw2017)|>
  mutate(origin = "2017")

usethis::use_data(dic_2017, overwrite = TRUE)

dic_2019 <- generate_dictionary(raw2019)|>
  mutate(origin = "2019")

usethis::use_data(dic_2019, overwrite = TRUE)

dic_2021 <- generate_dictionary(raw2021)|>
  mutate(origin = "2021")

usethis::use_data(dic_2021, overwrite = TRUE)

dic_2023 <- generate_dictionary(raw2023)|>
  mutate(origin = "2023")

usethis::use_data(dic_2023, overwrite = TRUE)

# One dictionary

combined_dic <- bind_rows(
  dic_2015, dic_2017, dic_2019, dic_2021, dic_2023) |>
  pivot_wider(names_from = origin,
              values_from = description,
              id_cols = variable)


usethis::use_data(combined_dic, overwrite = TRUE)


