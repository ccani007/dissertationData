# Cleaning the YRBS 2017 data
# Catalina Canizares
# 10-01-2023


# The following script aims to generate a clean data set for YRBS 2017 using the
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
    Q6, Q7, Q66, Q67, raceeth, starts_with("qn")
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
  # Item number changed, in 2019 and 2021 SexOrientation is Q66
  mutate(
    SexOrientation = case_when(
      Q67 == 1 ~ "Heterosexual",
      Q67 == 2 ~ "Gay or Lesbian",
      Q67 == 3 ~ "Bisexual",
      Q67 == 4 ~ "Not sure",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(across(c(Q4, QN8:QN99), RecodeBinary)) |>
  select(-c(Q1, Q2, Q3, Q67, raceeth)) |>
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
    WeaponCarrying = QN12,
    WeaponCarryingSchool = QN13,
    GunCarrying = QN14,
    UnsafeAtSchool = QN15,
    ThreatenedInSchool = QN16,
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
    EverAlcoholUse = QN40,
    FirstAlcoholBefore13 = QN41,
    CurrentlyAlcohol = QN42,
    SomeoneSourceAlcohol = QN43,
    CurrentlyBingeDrinking = QN44,
    MoreThan10Drinks = QN45,
    EverUsedMarihuana = QN46,
    FirstMarihuanaBefore13 = QN47,
    CurrentlyUseMarihuana = QN48,
    EverUsedCocaine = QN49,
    EverUsedInhalant = QN50,
    EverUsedHeroin = QN51,
    EverUsedMetha = QN52,
    EverUsedEcstasy = QN53,
    EverUsedSyntheticMarihuana = QN54, #QN48 in 2019 and 2021
    EverUsedSteroids = QN55,
    PainMedicine = QN56,
    EverUsedInjectedIllegalDrug = QN57,
    OfferedDrugsSchool = QN58,
    EverHadSex = QN59,
    SexBefore13 = QN60,
    Sex4OrMorePartners = QN61,
    SexuallyActive = QN62,
    AlcoholOrDrugsSex = QN63,
    UseCondom = QN64,
    BirthControl = QN65,
    SexofSexualContact = Q66,
    # QN67 sexual orientation
    VeryOverweight = QN68,
    WeightLoss = QN69,
    NoFruitJuice = QN70,
    NoFruit = QN71,
    NoSalad = QN72,
    NoPotatoes = QN73,
    NoCarrots = QN74,
    NoOtherVeggies = QN75,
    NoSoda = QN76,
    NoMilk = QN77,
    NoBreakfast = QN78,
    PhysicalActivity = QN79,
    ThreeOrMoreHoursTV = QN80,
    ThreeOrMoreHoursVideoGames = QN81, # Included in 2021 inside QN79
    AttendedPEClass = QN82,
    SportsTeam = QN83,
    ConcussionSports = QN84,
    HIVTested = QN85,
    DentistVisit = QN86,
    HasAsthma = QN87,
    EightorMoreHoursSleep = QN88,
    MostlyAGradesInSchool = QN89,
    DriveUsingMarijuana = QN90,
    EverHallucinogenicDrugs = QN91,
    NoSportsDrinks = QN92,
    NoDrinksWater = QN93,
    FoodAllergy = QN94,
    MuscleStrengthening = QN95,
    IndoorTanning = QN96,
    SunBurn = QN97,
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor))

usethis::use_data(clean_yrbs_2017, overwrite = TRUE)
# 13677 x 94
