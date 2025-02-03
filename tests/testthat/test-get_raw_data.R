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