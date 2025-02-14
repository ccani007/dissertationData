#' List Available Datasets in a Package
#'
#' This function retrieves and lists all available datasets within a specified package.
#'
#' @param package_name Character. The name of the package to check for datasets.
#'
#' @return A character vector containing the names of available datasets in the package.
#'   If the package is not installed or contains no datasets, an informative message is displayed.
#'
#' @examples
#' \dontrun{
#' list_package_datasets("datasets")
#' list_package_datasets("dissertationData")
#' }
#'
#' @export
list_package_datasets <- function(package_name) {
  # Ensure the input is a valid package name
  if (!is.character(package_name) || length(package_name) != 1) {
    stop("Please provide a valid package name as a string.")
  }

  # Check if the package is installed
  if (!requireNamespace(package_name, quietly = TRUE)) {
    stop(paste("Package", package_name, "is not installed. Please install it first."))
  }

  # Get available datasets
  datasets_info <- data(package = package_name)$results

  # Extract dataset names
  dataset_names <- datasets_info[, "Item"]

  if (length(dataset_names) == 0) {
    message(paste("No datasets found in package", package_name))
    return(character(0))  # Return empty character vector
  }

  return(dataset_names)
}

# Example Usage:
# list_package_datasets("datasets")
# list_package_datasets("dissertationData")
