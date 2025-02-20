#' Youth Risk Behavior Surveillance System 2017
#'
#' @title clean_yrbs_2017
#'
#' @docType data
#'
#' @usage data(clean_yrbs_2017)
#'
#' @description This is the imported and cleaned 2017 YRBS Data.
#'     This data set monitors priority health risk behaviors that contribute
#'     markedly to the leading causes of death, disability, and social problems
#'     among youth and adults in the United States.
#'     These behaviors, often include:
#'
#'
#'@format A tibble with 17,232 and 102 variables
#'
#' This dataset exclusively comprises questions sourced from Appendix A of the
#' YRBS 2017, specifically focusing on the QN dichotomous variables.
#' For comprehensive information, please refer to the documentation
#' provided in the 2017 National YRBS Data Users Guide. In this dataset,
#' each variable follows a binary pattern: a value of 1 indicates the
#' presence of the specified behavior, while a value of 0 signifies its
#' absence. For instance, with regard to Suicide Attempts, a value of 1
#' signifies that adolescents responded affirmatively to having made
#' suicide attempts, whereas 0 indicates a negative response.
#'
#' These broad categories are:
#' \itemize{
#'   \item Behaviors that contribute to unintentional injuries and violence
#'   \item Sexual behaviors that contribute to unintended pregnancy and
#'     sexually transmitted diseases, including HIV infection
#'   \item Alcohol and other drug use
#'   \item Tobacco use
#'   \item Unhealthy dietary behaviors
#'   \item Inadequate physical activity
#' }
#'
#'
"clean_yrbs_2017"
