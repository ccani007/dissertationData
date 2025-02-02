library(testthat)
library(withr)  # for with_tempdir()

test_that("get_raw_data validates inputs correctly", {
  # Test invalid year format
  expect_error(
    get_raw_data("not a year"),
    "Years available are 2015, 2017, 2019, 2021, 2023"
  )
  
  # Test year not in allowed set (e.g., 2011)
  expect_error(
    get_raw_data(2011),
    "Years available are 2015, 2017, 2019, 2021, 2023"
  )
  
  # Test invalid format
  expect_error(
    get_raw_data(2017, format = "invalid"),
    "should be one of"
  )
})

test_that("get_raw_data handles missing files appropriately", {
  # Test with a year that doesn't exist in the allowed set (e.g., 2030)
  expect_error(
    get_raw_data(2030),
    "Years available are 2015, 2017, 2019, 2021, 2023"
  )
})

test_that("get_raw_data handles directory creation correctly in non-interactive mode", {
  # Skip this test if running interactively
  skip_if(interactive(), "Skipping interactive mode test for directory creation")
  
  # Create a temporary directory for testing
  temp_dir <- file.path(tempdir(), "test_yrbs_data")
  on.exit(unlink(temp_dir, recursive = TRUE))
  
  # This call should create the directory in non-interactive mode and produce a message
  expect_message(
    get_raw_data(2017, dest_dir = temp_dir, load = FALSE, simulate_interactive = FALSE),
    "Directory '.*' created \\(non-interactive mode\\)"
  )
  
  # Now that the directory exists, calling the function again should produce a warning
  expect_warning(
    get_raw_data(2017, dest_dir = temp_dir, load = FALSE, simulate_interactive = FALSE),
    "Directory '.*' already exists"
  )
})

test_that("get_raw_data returns correct object types", {
  # Skip if test data not available
  if (system.file("extdata", "yrbs2017.sav", package = "dissertationData") == "") {
    skip("Test data not available")
  }
  
  # Test with load = TRUE (should return a data frame)
  result <- get_raw_data(2017, load = TRUE)
  expect_s3_class(result, "data.frame")
  
  # Test with load = FALSE (should return a file path and the file should exist)
  temp_dir <- file.path(tempdir(), "test_yrbs_data2")
  on.exit(unlink(temp_dir, recursive = TRUE))
  
  path <- get_raw_data(2017, dest_dir = temp_dir, load = FALSE, simulate_interactive = FALSE)
  expect_type(path, "character")
  expect_true(file.exists(path))
})