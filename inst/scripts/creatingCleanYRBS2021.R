# Cleaning the YRBS 2019 data
# Catalina Canizares
# 07-26-2023


# The following script aims to generate a clean data set for YRBS 2019 using the
## dichotomos variables

library(tidyverse)

load("inst/extData/raw_yrbs_2019.rda")

raw_yrbss <- tidyREDCap::drop_labels(raw_yrbs_2019)
# 13677x235

### This function is created to recode binary factors from 1 and 2 to 0 and 1.
RecodeBinary <- function(x) {
  x <- case_when(
    x == 1 ~ 1,
    x == 2 ~ 0,
    TRUE ~ NA
  )
}

RecodeNoYesNo <- function(x) {
  x <- case_when(
    x %in% c(1, 3) ~ 0,
    x == 2 ~ 1,
    TRUE ~ NA
  )
}

# This function considers the not sure response as a no.
RecodeYesNoNo <- function(x) {
  x <- case_when(
    x %in% c(2, 3) ~ 0,
    x == 1 ~ 1,
    TRUE ~ NA
  )
}

healthyBehaviors <-
  raw_yrbss |>
  select(
    Q1:Q3, "raceeth", Q58:Q89, Q92:Q99
  ) |>
  mutate(
    Sex = case_when(
      Q2 == 2 ~ "Male",
      Q2 == 1 ~ "Female",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(
    Race = case_when(
      raceeth == 1 ~ "Am Indian/Alaska Native",
      raceeth == 2 ~ "Asian",
      raceeth == 3 ~ "Black or African American",
      raceeth == 4 ~ "Native Hawaiian/Other PI",
      raceeth == 5 ~ "White",
      raceeth == 6 ~ "Hispanic/Latino",
      raceeth == 7 ~ "Multiple-Hispanic",
      raceeth == 8 ~ "Multiple-Non-Hispanic",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(
    Age = case_when(
      Q1 == 1 ~ 12L,
      Q1 == 2 ~ 13L,
      Q1 == 3 ~ 14L,
      Q1 == 4 ~ 15L,
      Q1 == 5 ~ 16L,
      Q1 == 6 ~ 17L,
      Q1 == 7 ~ 18L,
      TRUE ~ NA_integer_
    )
  ) |>
  mutate(
    Grade = case_when(
      Q3 == 1 ~ "9",
      Q3 == 2 ~ "10",
      Q3 == 3 ~ "11",
      Q3 == 4 ~ "12",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(
    SexOrientation = case_when(
      Q66 == 1 ~ "Heterosexual",
      Q66 == 2 ~ "Gay or Lesbian",
      Q66 == 3 ~ "Bisexual",
      Q66 == 4 ~ "Not sure",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(across(c(Q58, Q98), RecodeBinary)) |>
  mutate(across(Q62:Q63, RecodeNoYesNo)) |>
  mutate(across(c(Q84, Q85, Q87, Q94), RecodeYesNoNo)) |>
  mutate(across(c(Q58, Q98, Q62:Q63,Q84, Q82, Q85, Q87, Q94, Q97), as.factor)) |>
  mutate(across(c(Q65, Q67, Q68, Q89, Q99), as.character)) |>
  select(-c(Q2, Q1, Q3, Q66, raceeth)) |>
  rename(
    HadSex = Q58,
    AgeSex = Q59,
    SexPartners = Q60,
    SexPartners3Months = Q61,
    AlcoholOrDrugsSex = Q62,
    UseCondom = Q63,
    BirthControl = Q64,
    SexOfSexualPartner = Q65,
    DescribeWeight = Q67,
    WeightLoss = Q68,
    DrinkFruitJuice = Q69,
    EatFruit = Q70,
    EatSalad = Q71,
    EatPotatoes = Q72,
    EatCarrots = Q73,
    EatOtherVeggies = Q74,
    DrinkSoda = Q75,
    DrinkMilk = Q76,
    EatBreakfast = Q77,
    PhysicalActivity = Q78,
    HoursTV = Q79,
    HoursVideoGames = Q80,
    DaysPEClass = Q81,
    SportsTeam = Q82,
    ConcussionSports = Q83,
    HIVTested = Q84,
    STDTested = Q85,
    DentistVisit = Q86,
    HasAsthma = Q87,
    HoursSleep = Q88,
    GradesInSchool = Q89,
    SportsDrinks = Q92,
    DrinksWater = Q93,
    FoodAllergy = Q94,
    MuscleStrengthening = Q95,
    IndoorTanning = Q96,
    UseSunscreen = Q97,
    DifficultyConcentrating = Q98,
    EnglishProficiency = Q99
  ) |>
  select(Sex, Race, Age, Grade, SexOrientation, everything())

usethis::use_data(healthyBehaviors, overwrite = TRUE)
