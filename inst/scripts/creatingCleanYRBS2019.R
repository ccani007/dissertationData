# Cleaning the YRBS 2019 data
# Catalina Canizares
# 07-26-2023


# The following script aims to generate a clean data set for YRBS 2019 using the
## dichotomos variables

library(tidyverse)

load("inst/extData/raw2019.rda")

raw_yrbss_2019_df <- tidyREDCap::drop_labels(raw2019)
# 13677x235

### This function is created to recode binary factors from 1 and 2 to 0 and 1.
RecodeBinary <- function(x) {
  x <- case_when(
    x == 1 ~ 1,
    x == 2 ~ 0,
    TRUE ~ NA
  )
}

# The predictors will be the Dichotomous variables from the YRBS.
#  The dichotomous variables present the percentage of students answering the
#  predetermined response(s) of interest (ROI). Students answering the ROI(s)
#  are in the numerator. The denominator is either all students or a subset of
#  students who have indicated they participate in a selected activity or behavior.
#  Students must have provided valid data to be included in any dichotomous
#  variable calculations.


clean_yrbs_2019_df <-
  raw_yrbss_2019_df |>
  select(
    weight, stratum, psu, Q1, Q2, Q3, Q4,
    Q6, Q7, Q66, raceeth, starts_with("qn")) |>
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
  mutate(across(c(QN8:QN99), RecodeBinary)) |>
  select(-c(Q1, Q2, Q3, Q66, raceeth, qn65, qn66 )) |>
  select(weight, stratum, psu, Sex, Race, Age, Grade,
         SexOrientation, everything()) |>
  rename(
    SeatBealtUse = QN8,
    DrinkingDriver = QN9,
    DrivingDrinking = QN10,
    TextingDriving = QN11,
    WeaponCarrying = QN12,
    WeaponCarryingSchool = QN13,
    GunCarrying = QN14,
    UnsafeAtSchool = QN15,
    InjuredInSchool = QN16,
    PhysicalFight = QN17,
    SchoolPhysicalFight = QN18,
    ForcedSexualIntercourse = QN19,
    SexualViolence= Q20,
    SexualAbuseByPartner = Q21,
    PhysicalDaitingViolence = QN22,
    Bullying = Q23,
    CyberBullying = Q24,
    Hopelessness = QN25,
    SuicideIdeation = QN26,
    SuidicePlan = QN27,
    SuicideAttempts = QN28,
    SuicideInjuryMedicalAttention = QN29,
    EverTriedCigarrette = QN30,
    FirstCigBefore13 = QN31,
    CurrentlySmokingCigarette = QN32,
    MoreThan10CigPerDay = QN33,
    EverTriedVaping = QN34,
    CurrentlyVaping = QN35,
    StoreSourceVaping = QN36,
    CurrentlySmokelessTobacco = QN37,
    CurrentlySmokingCigar = QN38,
    QuitTobbaco = QN39,
    FirstAlcoholBefore13 = QN40,
    CurrentlyAlcohol = Q41,
    CurrentlyBingeDrinking = Q42,
    MoreThan10Drinks = Q43,
    SomeoneSourceAlcohol = Q44,
    EverUsedMarihuana = Q45,
    FirstMarihuanaBefore13 = Q46,
    CurrentlyUseMarihuana = Q47,
    EverUsedSyntheticMarihuana = Q48,
    PainMedicine = Q49,
    EverUsedCocaine = Q50,
    EverUsedInhalant = Q51,
    EverUsedHeroin = Q52,
    EverUsedMetha = Q53,
    EverUsedEcstasy = Q54,
    EverUsedSteroids = Q55,
    EverUsedInjectedIllegalDrug = Q56,
    OfferedDrugsSchool = Q57,
    EverHadSex = Q58,
    SexBefore13 = Q59,
    Sex4OrMorePartners = Q60,
    SexuallyActive = Q61,
    AlcoholOrDrugsSex = Q62,
    UseCondom = Q63,
    BirthControl = Q64,
    VeryOverweight = QN67,
    WeightLoss = Q68,
    NoFruitJuice = Q69,
    NoFruit = Q70,
    NoSalad = Q71,
    NoPotatoes = Q72,
    NoCarrots = Q73,
    NoOtherVeggies = Q74,
    NoSoda = Q75,
    NoMilk = Q76,
    NoBreakfast = Q77,
    PhysicalActivity = Q78,
    ThreeOrMoreHoursTV = Q79,
    ThreeOrMoreHoursVideoGames = Q80,
    AttendedPEClass = Q81,
    SportsTeam = Q82,
    ConcussionSports = Q83,
    HIVTested = Q84,
    STDTested = Q85,
    DentistVisit = Q86,
    HasAsthma = Q87,
    EightorMoreHoursSleep = Q88,
    MostlyAGradesInSchool = Q89,
    CurrentPainMedicine = QN90,
    EverHallucinogenicDrugs = Q91,
    NoSportsDrinks = Q92,
    NoDrinksWater = Q93,
    FoodAllergy = Q94,
    MuscleStrengthening = Q95,
    IndoorTanning = Q96,
    UseSunscreen = Q97,
    DifficultyConcentrating = Q98,
    EnglishProficiency = Q99
  )

usethis::use_data(healthyBehaviors, overwrite = TRUE)
