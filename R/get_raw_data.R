#' Get Raw YRBS Data
#'
#' @param year numeric. The year of YRBS data to retrieve (e.g., 2017)
#' @param format character. Format of the data file: "spss", "parquet", or "rds"
#' @param dest_dir character. Optional destination directory to copy the file to.
#'   If not provided and load = FALSE, the file is copied to a default folder named "downloaded_raw_data".
#' @param load logical. Whether to load the data into R (TRUE) or just return the file path / copy it (FALSE)
#' @param simulate_interactive logical. (Undocumented) For testing only. Overrides interactive() behavior.
#' @param ... Additional arguments passed to the respective reading functions.
#'
#' @return Depending on parameters:
#'   - If load = TRUE: returns the loaded dataset.
#'   - If load = FALSE and dest_dir is specified (or defaulted): returns the destination file path invisibly.
#'   - Otherwise, returns the file path within the package.
#'
#' @importFrom haven read_sav
#' @importFrom arrow read_parquet
#' @import cli
#' @export
get_raw_data <- function(year, 
                         format = "spss", 
                         dest_dir = NULL, 
                         load = TRUE, 
                         simulate_interactive = interactive(), 
                         ...) {
  # Validate year against allowed values (include 2015 as well)
  allowed_years <- c(2015, 2017, 2019, 2021, 2023)
  if (!is.numeric(year) || !(year %in% allowed_years)) {
    cli::cli_abort("Years available are 2015, 2017, 2019, 2021, 2023")
  }
  
  format <- match.arg(format, choices = c("spss", "parquet", "rds"))
  
  # Construct file name based on year and format
  file_name <- switch(format,
                      spss = paste0("yrbs", year, ".sav"),
                      parquet = paste0("yrbs", year, ".parquet"),
                      rds = paste0("yrbs", year, ".rds"))
  
  # Locate file in extdata
  file_path <- system.file("extdata", file_name, package = "dissertationData")
  
  # Debug information if file not found
  if (file_path == "") {
    cli::cli_alert_info("Debug info:")
    cli::cli_alert_info("- Looking for file: {file_name}")
    cli::cli_alert_info("- Package root: {system.file(package = 'dissertationData')}")
    cli::cli_alert_info("- Expected path: {file.path(system.file(package = 'dissertationData'), 'extdata', file_name)}")
    cli::cli_abort("Dataset for year {year} not found in {format} format.")
  }
  
  # If the user does not want to load data and hasn't specified a destination, use the default folder name
  if (is.null(dest_dir) && !load) {
    dest_dir <- "downloaded_raw_data"
  }
  
  # If a destination directory is provided (or defaulted), copy the file there
  if (!is.null(dest_dir)) {
    dest_path <- file.path(dest_dir, file_name)
    
    if (!dir.exists(dest_dir)) {
      # Inform the user that a new folder will be created
      if (simulate_interactive) {
        cli::cli_alert_warning("The folder '{dest_dir}' does not exist and will be created on your machine.")
        answer <- readline(prompt = paste0("Would you like to proceed with creating '{dest_dir}'? (y/n): "))
        if (tolower(answer) %in% c("y", "yes")) {
          dir.create(dest_dir, recursive = TRUE)
          cli::cli_alert_success("Directory '{dest_dir}' created.")
        } else {
          cli::cli_abort("Directory creation was declined. Aborting file copy.")
        }
      } else {
        dir.create(dest_dir, recursive = TRUE)
        cli::cli_alert_info("Directory '{dest_dir}' created (non-interactive mode).")
      }
    } else {
      cli::cli_warn("Directory '{dest_dir}' already exists.")
    }
    
    tryCatch({
      file.copy(file_path, dest_path, overwrite = TRUE)
      cli::cli_alert_success("File copied to {dest_path}")
    }, error = function(e) {
      cli::cli_abort("Failed to copy file to destination: {e$message}")
    })
    # If load is FALSE, return the destination path invisibly.
    if (!load) {
      return(invisible(dest_path))
    }
  }
  
  # If load is TRUE, load the data into R (using the original file in inst/extdata)
  if (load) {
    tryCatch({
      data <- switch(format,
                     spss = haven::read_sav(file_path, ...),
                     parquet = arrow::read_parquet(file_path, ...),
                     rds = readRDS(file_path))
      return(data)
    }, error = function(e) {
      cli::cli_abort("Failed to load data: {e$message}")
    })
  } else {
    # If not loading and no download was requested, return the file path from the package.
    return(file_path)
  }
}