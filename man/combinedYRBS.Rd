% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combinedYRBS.R
\docType{data}
\name{combinedYRBS}
\alias{combinedYRBS}
\title{combinedYRBS}
\format{
A tibble with 45,674 and 93 variables
}
\usage{
data(combinedYRBS)
}
\description{
This dataset represents a consolidated compilation of data from
three distinct YRBS surveys, primarily from the years 2017, 2019, and 2021.
It retains only those variables that are consistently present across all
three years. Any variable that was omitted in any of the years has been
excluded from this comprehensive dataset. If you require access to the
complete dataset, please consult the cleaned versions specific to the
individual years included in this dataset.
This dataset serves as a surveillance tool for monitoring priority
health risk behaviors that significantly contribute to the primary
causes of death, disability, and societal issues among both youth and
adults in the United States.

This dataset exclusively comprises questions sourced from Appendix A of the
YRBS 2017, 2019, and 2021, specifically focusing on the QN dichotomous
variables. For comprehensive information, please refer to the documentation
provided in the 2017, 2019, and 2021 National YRBS Data Users Guide. In this
dataset, each variable follows a binary pattern: a value of 1 indicates the
presence of the specified behavior, while a value of 0 signifies its absence.
For instance, with regard to Suicide Attempts, a value of 1 signifies that
adolescents responded affirmatively to having made suicide attempts, whereas
0 indicates a negative response.

These broad categories are:
\itemize{
\item Behaviors that contribute to unintentional injuries and violence
\item Sexual behaviors that contribute to unintended pregnancy and
sexually transmitted diseases, including HIV infection
\item Alcohol and other drug use
\item Tobacco use
\item Unhealthy dietary behaviors
\item Inadequate physical activity
}
}
\details{
Youth Risk Behavior Surveillance System 2017-2019-2021
}
\keyword{datasets}
