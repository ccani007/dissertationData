% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combined_dictionary.R
\docType{data}
\name{combined_dictionary}
\alias{combined_dictionary}
\title{YRBS Dictionary Combined}
\format{
An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) with 274 rows and 6 columns.
}
\usage{
data(combined_dictionary)
}
\description{
This dataset provides a comparative dictionary for the YRBS datasets from 2015 to 2021.
It allows users to track how survey variables have changed over the years, including changes in question wording and structure.
}
\details{
Youth Risk Behavior Surveillance System (YRBS) Dictionary - Combined Years

The dictionary is structured as a data frame with six columns:
\itemize{
\item \strong{Variable Name} - The name of the variable as it appears in the datasets.
\item \strong{2015–2021} - Columns representing each year, indicating the question associated with the variable for that specific year.
}

This dictionary is useful for researchers who need to ensure consistency across years
when analyzing trends, as some questions may have been renamed, modified, or removed in different survey waves.
}
\keyword{datasets}
