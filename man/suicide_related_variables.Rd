% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/suicide_related_variables.R
\docType{data}
\name{suicide_related_variables}
\alias{suicide_related_variables}
\title{suicide_related_variables}
\format{
A tibble with 14765 rows and 27 variables:

\describe{
This dataset exclusively comprises questions sourced from Appendix A of the
YRBS 2017, specifically focusing on the QN dichotomous variables.
For comprehensive information, please refer to the documentation
provided in the 2017 National YRBS Data Users Guide. In this dataset,
each variable follows a binary pattern: a value of 1 indicates the
presence of the specified behavior, while a value of 0 signifies its
absence. For instance, with regard to Suicide Attempts, a value of 1
signifies that adolescents responded affirmatively to having made
suicide attempts, whereas 0 indicates a negative response.
}
}
\usage{
data(suicide_related_variables)
}
\description{
This dataset comprises 27 variables specifically associated
with suicide attempts using the YRBSS 2017.
The selection of these predictors was guided by
insights from previous research and the interpersonal model for suicide.
For detailed information on the selection process and criteria,
please refer to the file 'inst/scripts/creatingApriori.qmd'.

\itemize{
\item{weight}
\item{stratum}
\item{psu}
\item{Sex}
\item{Age}
\item{SexOrientation}
\item{GunCarrying}
\item{ThreatenedInSchool}
\item{PhysicalFight}
\item{ForcedSexualIntercourse}
\item{Bullying}
\item{CyberBullying}
\item{Hopelessness}
\item{SuicideIdeation}
\item{SuicidePlan}
\item{SuicideAttempts}
\item{CurrentlySmokingCigarette}
\item{CurrentlyVaping}
\item{CurrentlyAlcohol}
\item{CurrentlyUseMarihuana}
\item{Sex4OrMorePartners}
\item{PainMedicine}
\item{EightorMoreHoursSleep}
\item{HardDrugsUse}
\item{SportAndActivity}
\item{RiskDrivingBehaviors}
\item{RaceEthnicity}
}
}
\details{
Dataset with Suicide Related Predictors Using the 2017 YRBSS data
}
\keyword{datasets}
