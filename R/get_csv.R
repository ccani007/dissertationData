#' Save YRBS Data as CSV
#'
#' This function retrieves a specified YRBS dataset from the package, creates a
#' "data" directory in the working directory (if it does not exist), and saves
#' the dataset as a CSV file.
#'
#' @param dataset_name Character. The name of the YRBS dataset to retrieve
#'   (e.g., "yrbs_2017"). Must match the dataset name as stored in the package.
#'
#' @return Returns the file path of the saved CSV invisibly. The dataset is saved
#'   in the "data" directory within the current working directory.
#'
#' @examples
#' \dontrun{
#' save_data_to_csv("yrbs_2017")
#' }
#'
#' @export
save_data_to_csv <- function(dataset_name) {
  # Ensure dataset_name is a string
  if (!is.character(dataset_name) || length(dataset_name) != 1) {
    stop("Please provide a dataset name as a string, e.g., 'yrbs_2017'.")
  }

  # Load the dataset into the environment
  data(list = dataset_name, envir = environment())

  # Check if the dataset exists in the environment
  if (!exists(dataset_name, envir = environment())) {
    stop(paste("Dataset", dataset_name, "not found. Check the package documentation."))
  }

  # Retrieve the dataset
  dataset <- get(dataset_name, envir = environment())

  # Ensure the 'data' directory exists
  data_dir <- file.path(getwd(), "data")
  if (!dir.exists(data_dir)) {
    dir.create(data_dir)
  }

  # Define file path
  file_path <- file.path(data_dir, paste0(dataset_name, ".csv"))

  # Save dataset as CSV
  write.csv(dataset, file_path, row.names = FALSE)

  message(paste("Dataset saved successfully at:", file_path))

  invisible(file_path) # Return the file path invisibly
}
