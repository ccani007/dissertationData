test_that("binary_to_text correctly converts single values", {
  # Test basic conversions
  expect_equal(binary_to_text(0), "No")
  expect_equal(binary_to_text(1), "Yes")
})

test_that("binary_to_text correctly handles vectors", {
  input <- c(0, 1, 0, 1)
  expected <- c("No", "Yes", "No", "Yes")
  expect_equal(binary_to_text(input), expected)
})

test_that("binary_to_text correctly handles NA values", {
  # Single NA
  expect_true(is.na(binary_to_text(NA)))
  
  # Vector with NAs
  input <- c(0, NA, 1, NA)
  expected <- c("No", NA, "Yes", NA)
  expect_equal(binary_to_text(input), expected)
})

test_that("binary_to_text correctly handles invalid inputs", {
  # Test non-binary numbers
  expect_true(is.na(binary_to_text(2)))
  expect_true(is.na(binary_to_text(-1)))
  
  # Test mixed valid and invalid inputs
  input <- c(0, 2, 1, -1, 0.5)
  expected <- c("No", NA, "Yes", NA, NA)
  expect_equal(binary_to_text(input), expected)
})
