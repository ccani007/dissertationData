# Cleaning the YRBS 2021 data
# Catalina Canizares
# 07-28-2023


# The following script aims to generate a clean data set for YRBS 2021 using the
## dichotomos variables

library(tidyverse)

load("data/raw2021.rda")
# 17232 X 237


raw_yrbss_2021_df <- tidyREDCap::drop_labels(raw2021)
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

clean_yrbs_2021 <-
  raw_yrbss_2021_df |>
  select(
    weight, stratum, psu, Q1, Q2, Q3, Q4,
    Q6, Q7, Q65, raceeth, starts_with("qn")
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
      Q65 == 1 ~ "Heterosexual",
      Q65 == 2 ~ "Gay or Lesbian",
      Q65 == 3 ~ "Bisexual",
      Q65 == 4 ~ "Not sure",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(across(c(QN8:QN99), RecodeBinary)) |>
  select(-c(Q1, Q2, Q3, Q65, raceeth)) |>
  select(
    weight, stratum, psu, Sex, Race, Age, Grade,
    SexOrientation, everything()
  ) |>
  rename(
    HispanicLatino = Q4,
    Height = Q6,
    Weight = Q7,
    SeatBealtUse = QN8,
    DrinkingDriver = QN9,
    DrivingDrinking = QN10,
    TextingDriving = QN11,
    WeaponCarryingSchool = QN12,
    GunCarrying = QN13,
    UnsafeAtSchool = QN14,
    InjuredInSchool = QN15,
    PhysicalFight = QN16,
    SchoolPhysicalFight = QN17,
    ForcedSexualIntercourse = QN19,
    SexualViolence = QN20,
    SexualAbuseByPartner = QN21,
    PhysicalDaitingViolence = QN22,
    Bullying = QN23,
    CyberBullying = QN24,
    Hopelessness = QN25,
    SuicideIdeation = QN26,
    SuicidePlan = QN27,
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
    CurrentlyAlcohol = QN41,
    CurrentlyBingeDrinking = QN42,
    MoreThan10Drinks = QN43,
    SomeoneSourceAlcohol = QN44,
    EverUsedMarihuana = QN45,
    FirstMarihuanaBefore13 = QN46,
    CurrentlyUseMarihuana = QN47,
    EverUsedSyntheticMarihuana = QN48,
    PainMedicine = QN49,
    EverUsedCocaine = QN50,
    EverUsedInhalant = QN51,
    EverUsedHeroin = QN52,
    EverUsedMetha = QN53,
    EverUsedEcstasy = QN54,
    # EverUsedSteroids = QN55,
    EverUsedInjectedIllegalDrug = QN55,
    OfferedDrugsSchool = QN56,
    EverHadSex = QN57,
    SexBefore13 = QN58,
    Sex4OrMorePartners = QN59,
    SexuallyActive = QN60,
    AlcoholOrDrugsSex = QN61,
    UseCondom = QN62,
    BirthControl = QN63,
    VeryOverweight = QN66,
    WeightLoss = QN67,
    NoFruitJuice = QN68,
    NoFruit = QN69,
    NoSalad = QN70,
    NoPotatoes = QN71,
    NoCarrots = QN72,
    NoOtherVeggies = QN73,
    NoSoda = QN74,
    NoMilk = QN75,
    NoBreakfast = QN76,
    PhysicalActivity = QN77,
    ThreeOrMoreHoursTV = QN78,
    # ThreeOrMoreHoursVideoGames  Eliminated, but it is aksed inside QN78
    AttendedPEClass = QN79,
    SportsTeam = QN80,
    ConcussionSports = QN81,
    HIVTested = QN82,
    # STDTested = QN83, not asked in 2017
    DentistVisit = QN84,
   # HasAsthma = QN87, Eliminated
    EightorMoreHoursSleep = QN86,
   # MostlyAGradesInSchool = QN89, Eliminated
    # CurrentPainMedicine = QN88,had to eliminate it because not asked in 2017
    EverHallucinogenicDrugs = QN89,
    NoSportsDrinks = QN90,
    NoDrinksWater = QN91,
    # FoodAllergy = QN94, Eliminated
    # MuscleStrengthening = QN95, Eliminated
    IndoorTanning = QN95,
    # UseSunscreen = QN97, Eliminated
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(ThreeOrMoreHoursVideoGames = ThreeOrMoreHoursTV) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor))
# Created this variable because in 2021 the same question asks for tv and
# videogames, while in 2019 it was two different questions.

usethis::use_data(clean_yrbs_2021, overwrite = TRUE)
# 17232 X 93
