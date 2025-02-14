#' Load YRBS Dictionary
#'
#' @description This function loads the variable dictionary for a specific year (2015–2021)
#' or the comparative dictionary across all years.
#'
#' @param year A character string specifying the year (e.g., "2015", "2016", ..., "2021")
#' or "comparison" to load the cross-year dictionary.
#'
#' @return A data frame containing the selected dictionary.
#' @export
#'
#' @examples
#' dict_comparison <- load_dictionary("combined")
#'
load_dictionary <- function(year) {
  valid_years <- as.character(2015:2023)

  if (year %in% valid_years) {
    data_name <- paste0("dictionary_", year)
  } else if (year == "combined") {
    data_name <- "combined_dictionary"
  } else {
    stop("Invalid input. Please provide a year between 2015 and 2021 or use 'comparison'.")
  }

  # Load the data into the function's environment
  data(list = data_name, package = "dissertationData", envir = environment())

  # Return the dataset without placing it in the global environment
  get(data_name, envir = environment())
}

