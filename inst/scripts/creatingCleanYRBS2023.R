# Cleaning the YRBS 2023 data
# Catalina Canizares
# 01-24-2025


# The following script aims to generate a clean data set for YRBS 2023 using the
# dichotomos variables. This dataset will contain ALL of the variables and are
# in line with the data dictionary, which is different from the clean_yrbs
# created in the script creatingCleanYRBS2021.R.


library(tidyverse)
library(haven)

raw_yrbs_2023 <- read_sav("inst/extData/yrbs2023.sav")

raw_yrbss_2023_df <- tidyREDCap::drop_labels(raw_yrbs_2023)
# 20103x250

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

clean_yrbs_2023 <-
  raw_yrbss_2023_df |>
  select(
    weight, stratum, psu, Q1, Q2, Q3, Q4,
    Q6, Q7, Q63, Q64, Q65, raceeth, starts_with("qn")
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
      Q64 == 1 ~ "Heterosexual",
      Q64 == 2 ~ "Gay or Lesbian",
      Q64 == 3 ~ "Bisexual",
      Q64 == 4 ~ "Some other identity",
      Q64 == 5 ~ "Questioning identity",
      Q64 == 6 ~ "I do not understand this question",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(
    SexSexualContact = case_when(
      Q63 == 1 ~ "Never had sex",
      Q63 == 2 ~ "Females",
      Q63 == 3 ~ "Males",
      Q63 == 4 ~ "Both",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(
    Transgender = case_when(
      Q65 == 1 ~ "No",
      Q65 == 2 ~ "Yes",
      Q65 == 3 ~ "Not sure",
      Q65 == 4 ~ "I do not understand this question",
      TRUE ~ NA_character_
    )
  ) |>
  mutate(across(c(QN8:QN99), RecodeBinary)) |>
  select(-c(Q1, Q2, Q3, Q64, Q63, Q65, raceeth)) |>
  select(
    weight, stratum, psu, Sex, Race, Age, Grade,
    SexOrientation, everything()
  ) |>
  rename(
    HispanicLatino = Q4,
    Height = Q6,
    Weight = Q7,
    SeatBeltUse = QN8,
    DrinkingDriver = QN9,
    DrivingDrinking = QN10,
    TextingDriving = QN11,
    WeaponCarryingSchool = QN12,
    GunCarrying = QN13,
    UnsafeAtSchool = QN14,
    InjuredInSchool = QN15,
    PhysicalFight = QN16,
    SchoolPhysicalFight = QN17,
    AttackedInNeighborhood = QN18,
    ForcedSexualIntercourse = QN19,
    SexualViolence = QN20,
    SexualAbuseByPartner = QN21,
    PhysicalDatingViolence = QN22,
    TreatedUnfairlyRace = QN23,
    Bullying = QN24,
    CyberBullying = QN25,
    Hopelessness = QN26,
    SuicideIdeation = QN27,
    SuicidePlan = QN28,
    SuicideAttempts = QN29,
    SuicideInjuryMedicalAttention = QN30,
    EverTriedCigarette = QN31,
    FirstCigaretteBefore13 = QN32,
    CurrentlySmokingCigarette = QN33,
    MoreThan10CigarettesPerDay = QN34,
    EverTriedVaping = QN35,
    CurrentlyVaping = QN36,
    StoreSourceVaping = QN37,
    CurrentlySmokelessTobacco = QN38,
    CurrentlySmokingCigar = QN39,
    QuitTobacco = QN40,
    FirstAlcoholBefore13 = QN41,
    CurrentlyAlcohol = QN42,
    CurrentlyBingeDrinking = QN43,
    MoreThan10Drinks = QN44,
    SomeoneSourceAlcohol = QN45,
    EverUsedMarijuana = QN46,
    FirstMarijuanaBefore13 = QN47,
    CurrentlyUsingMarijuana = QN48,
    # EverUsedSyntheticMarijuana = QN48,
    PainMedicine = QN49,
    EverUsedCocaine = QN50,
    EverUsedInhalant = QN51,
    EverUsedHeroin = QN52,
    EverUsedMethamphetamine = QN53,
    EverUsedEcstasy = QN54,
    EverInjectedIllegalDrug = QN55,
    # OfferedDrugsSchool = QN56,
    EverHadSex = QN56,
    SexBefore13 = QN57,
    Sex4OrMorePartners = QN58,
    SexuallyActive = QN59,
    AlcoholOrDrugsSex = QN60,
    UsedCondom = QN61,
    BirthControl = QN62,
    VeryOverweight = QN66,
    WeightLoss = QN67,
    NoFruitJuice = QN68,
    NoFruit = QN69,
    NoSalad = QN70,
    NoPotatoes = QN71,
    NoCarrots = QN72,
    NoOtherVeggies = QN73,
    NoSoda = QN74,
    # NoMilk = QN75,
    NoBreakfast = QN75,
    PhysicalActivity = QN76,
    # ThreeOrMoreHoursTV = QN78,
    AttendedPEClass = QN77,
    SportsTeam = QN78,
    ConcussionSports = QN79,
    SocialMedia = QN80,
    HIVTested = QN81,
    STDTested = QN82,
    DentistVisit = QN83,
    NotGoodMentalHealth = QN84,
    EightOrMoreHoursSleep = QN85,
    Homelessness = QN86,
    GradesSchool = QN87,
    SexualAbuseByOlderPerson = QN88,
    ParentalEmotionalAbuse = QN89,
    ParentalPhysicalAbuse = QN90,
    ParentalDomesticViolence = QN91,
    CurrentMisusePainMedicine = QN92,
    EverHallucinogenicDrugs = QN93,
    AskedForConsent = QN94,
    NoSportsDrinks = QN95,
    NoDrinksWater = QN96,
    ExcerciseMuscles = QN97,
    Sunburn = QN98,
    AdultMeetingBasicNeeds = QN99,
    ParentSubstanceUse = QN100,
    ParentMentalIllness = QN101,
    ParentIncarceration = QN102,
    SchoolConnectedness = QN103,
    ParentalMonitoring = QN104,
    UnfairDisciplineAtSchool = QN105,
    DifficultyConcentrating = QN106,
    EnglishProficiency = QN107
  ) |>
  select(-starts_with("qn")) |>
  mutate(across(c(HispanicLatino, SeatBeltUse:EnglishProficiency), factor))


usethis::use_data(clean_yrbs_2023, overwrite = TRUE)
# 20103 X 110
