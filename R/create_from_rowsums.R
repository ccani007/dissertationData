#' Create a Binary Indicator from Row Sums
#'
#' This function transforms selected columns in a dataframe to numeric,
#' calculates their row-wise sums, and then creates a binary indicator column.
#' The binary column is determined by whether the row sum is equal to or
#' greater than 1. It dynamically generates the names for the row sum and binary
#' columns based on input parameters.
#'
#' @param df A dataframe containing the columns to be transformed and summed.
#' @param col_names Vector of column names to be converted to numeric and summed.
#' @param risk_behavior The name to be assigned to the binary indicator column.
#'
#' @return A modified dataframe with the original columns replaced by a binary
#' indicator column, reflecting the presence (1) or absence (0) of the aggregated
#' risk behavior, based on the sum of the specified columns.
#'
#' @details
#' The function performs the following steps:
#' 1. Converts the specified columns (col_names) to numeric.
#' 2. Calculates the row-wise sum of these columns, handling NA values.
#' 3. Creates a binary indicator column (risk_behavior) where 1 indicates
#'    a row sum >= 1, and 0 indicates a row sum < 1.
#' 4. Removes the original columns used for row sums, retaining only the binary
#'    indicator and other existing dataframe columns.
#'
#' @importFrom dplyr select
#' @importFrom dplyr mutate
#' @importFrom dplyr filter
#' @export


# Define the function to add a binary sum column with a dynamic row sum column name
create_from_rowsums <- function(df, col_names, risk_behavior) {
  # Step 1: Convert factors within the specified columns to numeric
  df <- df %>%
    mutate(across(all_of(col_names), ~ as.numeric(as.character(.))))

  # Create the name for the row sum column based on the input column names
  row_sum_col_name <- paste("row_sum", paste(col_names, collapse = "_to_"), sep = "_")

  # Step 2: Add a column with the row sums of the specified columns, handling NA values
  df <- df %>%
    mutate(!!row_sum_col_name := ifelse(rowSums(!is.na(select(., all_of(col_names)))) == 0, NA,
                                        rowSums(select(., all_of(col_names)), na.rm = TRUE)))

  # Step 3: Add a binary column based on the row sums
  binary_col_name <- risk_behavior
  df <- df %>%
    mutate(!!binary_col_name := ifelse(!!sym(row_sum_col_name) >= 1, 1, 0))

  # Step 4: Remove the original columns used for row sums and the row sum column
  df <- df %>%
    select(-all_of(col_names), -!!sym(row_sum_col_name))

  return(df)
}
