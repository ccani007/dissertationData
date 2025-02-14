#' Load YRBS Data from the Package
#'
#' This function retrieves a dataset from the package and returns it as a fully evaluated object,
#' preventing lazy loading (promise objects).
#'
#' @param dataset_name Character. The name of the dataset to load (e.g., "raw2017").
#'
#' @return The requested dataset as a fully evaluated object.
#'
#' @importFrom utils data write.csv
#'
#' @examples
#' \dontrun{
#' my_data <- load_yrbs("raw2017")
#' }
#'
#' @export
load_yrbs <- function(dataset_name) {
  # Ensure input is a valid string
  if (!is.character(dataset_name) || length(dataset_name) != 1) {
    stop("dataset_name must be a single character string.")
  }

  # Load dataset into the environment
  utils::data(list = dataset_name, envir = environment())

  # Check if dataset exists
  if (!exists(dataset_name, envir = environment())) {
    stop(paste("Dataset", dataset_name, "not found in the package."))
  }

  # Retrieve and fully evaluate the dataset to avoid promise objects
  dataset <- get(dataset_name, envir = environment())

  # Return the dataset as a regular object
  return(dataset)
}

