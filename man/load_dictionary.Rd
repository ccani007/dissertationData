% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_dictionary.R
\name{load_dictionary}
\alias{load_dictionary}
\title{Load YRBS Dictionary}
\usage{
load_dictionary(year)
}
\arguments{
\item{year}{A character string specifying the year (e.g., "2015", "2016", ..., "2021")
or "comparison" to load the cross-year dictionary.}
}
\value{
A data frame containing the selected dictionary.
}
\description{
This function loads the variable dictionary for a specific year (2015–2021)
or the comparative dictionary across all years.
}
\examples{
dict_comparison <- load_dictionary("combined")

}
