#' Recode variables 0-1 to No-Yes
#'
#' This function takes a numeric vector with binary values (0 and 1) and
#' converts it into a character vector with 'No' for 0 and 'Yes' for 1.
#' Any value other than 0 or 1 is converted to NA.
#'
#' @param x A numeric vector containing binary values (0 or 1).
#'
#' @return A character vector where 0 is replaced with 'No', 1 is replaced with 'Yes',
#' and all other values are replaced with NA.
#'
#' @export
binary_to_text <- function(x) {
  as.character(x)
  dplyr::case_when(
    x == 0 ~ "No",
    x == 1 ~ "Yes",
    TRUE ~ NA_character_
  )
}
