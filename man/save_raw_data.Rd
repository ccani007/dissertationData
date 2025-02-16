% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_raw_data.R
\name{save_raw_data}
\alias{save_raw_data}
\title{Save Raw YRBS Data}
\usage{
save_raw_data(
  year,
  format = "csv",
  dest_dir = "downloaded_raw_data",
  load = TRUE,
  ...
)
}
\arguments{
\item{year}{Numeric. The year of YRBS data to retrieve (e.g., 2017).}

\item{format}{Character. The format to save the data: "csv", "spss", "parquet", or "rds".}

\item{dest_dir}{Character. Destination directory to store the file (default: "downloaded_raw_data").}

\item{load}{Logical. Whether to load the dataset into R (TRUE) or just save it (FALSE).}

\item{...}{Additional arguments passed to the respective saving functions.}
}
\value{
If \code{load = TRUE}, returns the dataset. Otherwise, returns the file path invisibly.
}
\description{
This function retrieves a YRBS dataset by year, creates a directory if needed,
and saves it in the specified format.
}
