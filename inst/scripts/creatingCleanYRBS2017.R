# Cleaning the YRBS 2017 data
# Catalina Canizares
# 10-01-2023


# The following script aims to generate a clean data set for YRBS 2019 using the
## dichotomos variables

library(tidyverse)

load("data/raw2017.rda")

raw_yrbss_2017_df <- tidyREDCap::drop_labels(raw2017)
# 14765x235

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

# CONFIRM VARIABLES WITH DATA DICTORNARY THIS IS STILL A COPY OF 2019 SCRIPT
clean_yrbs_2017 <-
  raw_yrbss_2017_df |>
  select(
    weight, stratum, psu, Q1, Q2, Q3, Q4,
    Q6, Q7, Q66, raceeth, starts_with("qn")
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
  mutate(across(c(Q4, QN8:QN99), RecodeBinary)) |>
  select(-c(Q1, Q2, Q3, Q66, raceeth, QN65, QN66)) |>
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
    # WeaponCarrying = QN12, Eliminated 2021
    WeaponCarryingSchool = QN13,
    GunCarrying = QN14,
    UnsafeAtSchool = QN15,
    InjuredInSchool = QN16,
    PhysicalFight = QN17,
    SchoolPhysicalFight = QN18,
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
    # EverUsedSteroids = QN55, Eliminated in 2021
    EverUsedInjectedIllegalDrug = QN56,
    OfferedDrugsSchool = QN57,
    EverHadSex = QN58,
    SexBefore13 = QN59,
    Sex4OrMorePartners = QN60,
    SexuallyActive = QN61,
    AlcoholOrDrugsSex = QN62,
    UseCondom = QN63,
    BirthControl = QN64,
    VeryOverweight = QN67,
    WeightLoss = QN68,
    NoFruitJuice = QN69,
    NoFruit = QN70,
    NoSalad = QN71,
    NoPotatoes = QN72,
    NoCarrots = QN73,
    NoOtherVeggies = QN74,
    NoSoda = QN75,
    NoMilk = QN76,
    NoBreakfast = QN77,
    PhysicalActivity = QN78,
    ThreeOrMoreHoursTV = QN79,
    ThreeOrMoreHoursVideoGames = QN80, # Included in 2021 inside QN7
    AttendedPEClass = QN81,
    SportsTeam = QN82,
    ConcussionSports = QN83,
    HIVTested = QN84,
    STDTested = QN85,
    DentistVisit = QN86,
    # HasAsthma = QN87,
    EightorMoreHoursSleep = QN88,
    # MostlyAGradesInSchool = QN89,
    CurrentPainMedicine = QN90,
    EverHallucinogenicDrugs = QN91,
    NoSportsDrinks = QN92,
    NoDrinksWater = QN93,
    # FoodAllergy = QN94,
    # MuscleStrengthening = QN95,
    IndoorTanning = QN96,
    # UseSunscreen = QN97,
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor))

usethis::use_data(clean_yrbs_2017, overwrite = TRUE)
# 13677 x 94
