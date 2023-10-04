# Cleaning the YRBS 2017 data
# Catalina Canizares
# 10-01-2023
# Updated 10-03-2023


# The following script aims to generate a clean data set for YRBS 2017, 2018 and 2019 using the
## dichotomos variables to combine them in a single dataset.
# therefore, some variables will be eliminated because they where not asked in the three years.

library(tidyverse)

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


# YRBS 2017 ---------------------------------------------------------------
load("data/raw2017.rda")
# 14765 x 240

raw_yrbss_2017_df <- tidyREDCap::drop_labels(raw2017)
# 14765 x 240

combined_yrbs_2017 <-
  raw_yrbss_2017_df |>
  select(
    weight, stratum, psu, Q1, Q2, Q3, Q4,
    Q6, Q7, Q67, raceeth, starts_with("qn")
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
    # WeaponCarrying = QN12, Eliminated 2021
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
    # EverAlcoholUse = QN40, not asked in 2019 and 2021
    FirstAlcoholBefore13 = QN41,
    CurrentlyAlcohol = QN42,
    CurrentlyBingeDrinking = QN44,
    MoreThan10Drinks = QN45,
    SomeoneSourceAlcohol = QN43,
    EverUsedMarihuana = QN46,
    FirstMarihuanaBefore13 = QN47,
    CurrentlyUseMarihuana = QN48,
    EverUsedSyntheticMarihuana = QN54, #QN48 in 2019 and 2021
    PainMedicine = QN56,
    EverUsedCocaine = QN49,
    EverUsedInhalant = QN50,
    EverUsedHeroin = QN51,
    EverUsedMetha = QN52,
    EverUsedEcstasy = QN53,
    # EverUsedSteroids = QN55, Eliminated in 2021
    EverUsedInjectedIllegalDrug = QN57,
    OfferedDrugsSchool = QN58,
    EverHadSex = QN59,
    SexBefore13 = QN60,
    Sex4OrMorePartners = QN61,
    SexuallyActive = QN62,
    AlcoholOrDrugsSex = QN63,
    UseCondom = QN64,
    BirthControl = QN65,
    # SexofSexualContact = Q66,
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
    # STDTested = QN85, Not asked in 2017
    DentistVisit = QN86,
    # HasAsthma = QN87,
    EightorMoreHoursSleep = QN88,
    # MostlyAGradesInSchool = QN89,
    # DriveUsingMarijuana = QN90, in 2019 and 2021 the question is about pain killers
    EverHallucinogenicDrugs = QN91,
    NoSportsDrinks = QN92,
    NoDrinksWater = QN93,
    # FoodAllergy = QN94,
    MuscleStrengthening = QN95,
    # IndoorTanning = QN96,Eliminated 2021
    # SunBurn = QN97, not used in 2019 it asked for sunscreen use
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor)) |>
  mutate(year = 2017) |>
  select(year, everything())
# 14765 x 93

# YRBS 2019 ---------------------------------------------------------------

load("data/raw2019.rda")
# 13677 x 235

raw_yrbss_2019_df <- tidyREDCap::drop_labels(raw2019)
# 13677 x 235

combined_yrbs_2019 <-
  raw_yrbss_2019_df |>
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
    #SexofSexualContact = Q65,
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
    # STDTested = QN85, not asked 2017
    DentistVisit = QN86,
    # HasAsthma = QN87,
    EightorMoreHoursSleep = QN88,
    # MostlyAGradesInSchool = QN89,
    # CurrentPainMedicine = QN90, not asked in 2017
    EverHallucinogenicDrugs = QN91,
    NoSportsDrinks = QN92,
    NoDrinksWater = QN93,
    # FoodAllergy = QN94,
    MuscleStrengthening = QN95,
    # IndoorTanning = QN96, Eliminated 2021
    # UseSunscreen = QN97,
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor)) |>
  mutate(year = 2019) |>
  select(year, everything())
# 13677 x 93

# YRBS 2021 ---------------------------------------------------------------

load("data/raw2021.rda")
# 17232 X 237

raw_yrbss_2021_df <- tidyREDCap::drop_labels(raw2021)
# 13677x237

combined_yrbs_2021 <-
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
    ThreatenedInSchool = QN15,
    PhysicalFight = QN16,
    SchoolPhysicalFight = QN17,
    # ViolenceinNeighborhood = QN18 NEW
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
    # SexofSexualContact = Q65,
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
    # MostlyAGradesInSchool , Eliminated 2021
    # Homelessness = QN87,
    # CurrentPainMedicine = QN88,had to eliminate it because not asked in 2017
    EverHallucinogenicDrugs = QN89,
    NoSportsDrinks = QN90,
    NoDrinksWater = QN91,
    MuscleStrengthening = QN92,
    # MentalHealthCovid19 = QN93, NEW
    # FoodAllergy = QN94, Eliminated 2021
    # JobLossCovid19 = QN94, NEW
    # Sunburn = QN95, NEW
    # IndoorTanning = QN95, Eliminated 2021
    # ClosetoPeopleSchool = QN96 NEW
    # ParentalMonitoring = QN97 NEW
    # UseSunscreen = QN97, Eliminated 2021
    DifficultyConcentrating = QN98,
    EnglishProficiency = QN99
  ) |>
  select(-starts_with("qn")) |>
  mutate(ThreeOrMoreHoursVideoGames = ThreeOrMoreHoursTV) |>
  mutate(ThreeOrMoreHoursVideoGames = factor(ThreeOrMoreHoursVideoGames)) |>
  mutate(across(c(HispanicLatino, SeatBealtUse:EnglishProficiency), factor)) |>
  mutate(year = 2021) |>
  select(year, everything())
# Created this variable because in 2021 the same question asks for tv and
# videogames, while in 2019 it was two different questions.
# 17232 x 93

# Combined YRBS -----------------------------------------------------------

combinedYRBS <-
  bind_rows(combined_yrbs_2017, combined_yrbs_2019, combined_yrbs_2021)
# 45674 x 93

usethis::use_data(combinedYRBS, overwrite = TRUE)
