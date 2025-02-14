#' Save Raw YRBS Data
#'
#' This function retrieves a YRBS dataset by year, creates a directory if needed,
#' and saves it in the specified format.
#'
#' @param year Numeric. The year of YRBS data to retrieve (e.g., 2017).
#' @param format Character. The format to save the data: "csv", "spss", "parquet", or "rds".
#' @param dest_dir Character. Destination directory to store the file (default: "downloaded_raw_data").
#' @param load Logical. Whether to load the dataset into R (TRUE) or just save it (FALSE).
#' @param ... Additional arguments passed to the respective saving functions.
#'
#' @return If `load = TRUE`, returns the dataset. Otherwise, returns the file path invisibly.
#'
#' @importFrom haven write_sav
#' @importFrom arrow write_parquet
#' @importFrom utils data write.csv
#' @import cli
#' @export
save_raw_data <- function(year, format = "csv", dest_dir = "downloaded_raw_data", load = TRUE, ...) {
  # Validate input year
  allowed_years <- c(2015, 2017, 2019, 2021, 2023)
  if (!is.numeric(year) || !(year %in% allowed_years)) {
    cli::cli_abort("Years available are 2015, 2017, 2019, 2021, 2023.")
  }

  # Validate format
  format <- match.arg(format, choices = c("csv", "spss", "parquet", "rds"))

  # Construct dataset name dynamically
  dataset_name <- paste0("raw", year)

  # Load the dataset
  data(list = dataset_name, envir = environment())

  # Check if dataset exists
  if (!exists(dataset_name, envir = environment())) {
    cli::cli_abort("Dataset {dataset_name} not found. Check package documentation.")
  }

  # Retrieve dataset
  dataset <- get(dataset_name, envir = environment())

  # Ensure the destination directory exists before defining the path
  if (!dir.exists(dest_dir)) {
    dir.create(dest_dir, recursive = TRUE)
  }

  # Define the file path
  file_path <- file.path(dest_dir, paste0(dataset_name, ".", format))

  # Save dataset in the chosen format
  tryCatch({
    switch(format,
           csv = write.csv(dataset, file_path, row.names = FALSE, ...),
           spss = haven::write_sav(dataset, file_path, ...),
           parquet = arrow::write_parquet(dataset, file_path, ...),
           rds = saveRDS(dataset, file_path))

    # Normalize the path after the file is written successfully
    absolute_path <- normalizePath(file_path, winslash = "/")

    cli::cli_alert_success("Dataset saved successfully at: {absolute_path}")

  }, error = function(e) {
    cli::cli_abort("Failed to save dataset: {e$message}")
  })

  # If load is TRUE, return the dataset; otherwise, return the absolute file path invisibly
  if (load) {
    return(dataset)
  } else {
    return(invisible(absolute_path))
  }
}





