#' Dataset with Suicide Related Predictors Using the 2017, 2019 and 2021 YRBSS data
#'
#'@title dissertation_data
#'
#' @docType data
#'
#' @usage data(dissertation_data)
#'
#' @description This dataset, curated specifically for training models in my
#'      dissertation, encompasses variables from the YRBS 2017, 2019, and 2021
#'      datasets. Additionally, several variables have been specifically
#'      constructed by combining common variables; for example,
#'      'RiskDrivingBehaviors' is a composite variable derived from
#'      'SeatBeltUse', 'TextingDriving', 'DrivingDrinking', and
#'      'DrinkingDriver'. The selection of variables is strategically focused
#'       on analyzing suicidality Rigorous curation ensured that each included
#'       variable has less than 80% missing data. The selection prioritizes
#'       variables that are pertinent to the analysis of suicidality.
#'       For details on the exclusion criteria and a list of removed variables,
#'       refer to 'inst/scripts/creatingCompleteDataset.qmd'.
#'       NOTE: Missing data for SuicideAttempts
#'
#'#' This dataset exclusively comprises questions sourced from Appendix A of the
#' YRBS 2017, 2019, and 2021, specifically focusing on the QN dichotomous variables.
#' For comprehensive information, please refer to the documentation
#' provided in the 2017, 2019, and 2021 National YRBS Data Users Guide. In this dataset,
#' each variable follows a binary pattern: a value of 1 indicates the
#' presence of the specified behavior, while a value of 0 signifies its
#' absence. For instance, with regard to Suicide Attempts, a value of 1
#' signifies that adolescents responded affirmatively to having made
#' suicide attempts, whereas 0 indicates a negative response.
#'
#' Variables in the dataset include:
#' \describe{
#'   \item{year}{Survey year (e.g., 2017, 2019, 2021).}
#'   \item{weight}{Weight variable for survey adjustment.}
#'   \item{Sex}{Participant's sex (Male/Female).}
#'   \item{Age}{Participant's age.}
#'   \item{Grade}{School grade (9th–12th).}
#'   \item{SexOrientation}{Sexual orientation of the participant.}
#'   \item{WeaponCarryingSchool}{Carrying a weapon on school property.}
#'   \item{GunCarrying}{Carrying a gun.}
#'   \item{UnsafeAtSchool}{Feeling unsafe at school.}
#'   \item{ThreatenedInSchool}{Being threatened at school.}
#'   \item{ForcedSexualIntercourse}{Having been forced into sexual intercourse.}
#'   \item{PhysicalDaitingViolence}{Experiencing physical dating violence.}
#'   \item{Bullying}{Being bullied.}
#'   \item{CyberBullying}{Being cyberbullied.}
#'   \item{Hopelessness}{Feeling hopeless for 2+ weeks.}
#'   \item{SuicideIdeation}{Considering suicide.}
#'   \item{SuicidePlan}{Making a suicide plan.}
#'   \item{SuicideAttempts}{Attempting suicide.}
#'   \item{CurrentlySmokingCigarette}{Currently smoking cigarettes.}
#'   \item{EverTriedVaping}{Ever tried vaping.}
#'   \item{CurrentlyVaping}{Currently vaping.}
#'   \item{CurrentlySmokelessTobacco}{Currently using smokeless tobacco.}
#'   \item{CurrentlySmokingCigar}{Currently smoking cigars.}
#'   \item{QuitTobbaco}{Attempted to quit tobacco use.}
#'   \item{FirstAlcoholBefore13}{Had first drink of alcohol before age 13.}
#'   \item{CurrentlyAlcohol}{Currently drinking alcohol.}
#'   \item{CurrentlyBingeDrinking}{Currently binge drinking.}
#'   \item{EverUsedMarihuana}{Ever used marijuana.}
#'   \item{FirstMarihuanaBefore13}{Used marijuana before age 13.}
#'   \item{CurrentlyUseMarihuana}{Currently using marijuana.}
#'   \item{EverUsedSyntheticMarihuana}{Ever used synthetic marijuana.}
#'   \item{PainMedicine}{Misusing prescription pain medicine.}
#'   \item{EverUsedInjectedIllegalDrug}{Ever injected illegal drugs.}
#'   \item{OfferedDrugsSchool}{Offered drugs on school property.}
#'   \item{EverHadSex}{Ever had sexual intercourse.}
#'   \item{SexBefore13}{Had sexual intercourse before age 13.}
#'   \item{Sex4OrMorePartners}{Had 4 or more sexual partners.}
#'   \item{SexuallyActive}{Currently sexually active.}
#'   \item{VeryOverweight}{Perceived as very overweight.}
#'   \item{NoSoda}{Does not drink soda.}
#'   \item{NoMilk}{Does not drink milk.}
#'   \item{NoBreakfast}{Does not eat breakfast.}
#'   \item{ThreeOrMoreHoursTV}{Spends 3+ hours watching TV.}
#'   \item{ThreeOrMoreHoursVideoGames}{Spends 3+ hours on video games.}
#'   \item{AttendedPEClass}{Attends physical education classes.}
#'   \item{ConcussionSports}{Experienced a concussion during sports.}
#'   \item{EightorMoreHoursSleep}{Gets 8+ hours of sleep.}
#'   \item{NoSportsDrinks}{Does not consume sports drinks.}
#'   \item{NoDrinksWater}{Does not drink water.}
#'   \item{DifficultyConcentrating}{Has difficulty concentrating.}
#'   \item{RaceEthnicity}{Race/ethnicity of the participant.}
#'   \item{HardDrugsUse}{Composite variable for hard drug use.}
#'   \item{SportAndActivity}{Composite variable for sports and physical activities.}
#'   \item{RiskDrivingBehaviors}{Composite variable for risky driving behaviors.}
#'   \item{SexualAbuse}{Composite variable for sexual abuse.}
#'   \item{TriedCigarrete}{Composite variable for trying cigarettes.}
#'   \item{NoFruitOrVeggies}{Composite variable for not eating fruits or vegetables.}
#'   \item{PhysicalFights}{Involvement in physical fights.}
#' }
#'
#' @format A tibble with 36779 rows and 58 variables:
#'
#'
'dissertation_data'
