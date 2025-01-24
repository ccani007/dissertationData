#' Plot Risk Behaviors
#'
#' @param data A data frame containing the variables for plotting.
#' @param behavior_vars A vector of column names for risk behavior variables.
#' @param suicide_var The column name for the suicide attempt variable.
#' @param plot_title The title of the plot.
#' @param fill_colors A character vector of colors for the plot fill.
#'
#' @return A ggplot object.
#' @importFrom dplyr select mutate summarize group_by all_of
#' @importFrom tidyr pivot_longer drop_na
#' @importFrom ggplot2 ggplot aes geom_bar geom_text labs scale_fill_manual theme_classic theme element_blank element_text position_dodge
#' @importFrom stringr str_wrap
#' @importFrom rlang .data
#' @export
plot_risk_behaviors <- function(data,
                                behavior_vars,
                                suicide_var,
                                plot_title,
                                fill_colors = c("#24bccb", "#4e2d86")) {
  data %>%
    dplyr::select(dplyr::all_of(c(behavior_vars, suicide_var))) %>%
    tidyr::drop_na() %>%
    tidyr::pivot_longer(
      cols = dplyr::all_of(behavior_vars), # Columns to pivot into longer format
      names_to = "Variable",              # New column name for 'Variable'
      values_to = "Answer"                # New column name for 'Answer'
    ) %>%
    dplyr::mutate(
      Answer = as.numeric(as.character(.data$Answer)),
      SuicideAttempts = as.factor(.data[[suicide_var]])
    ) %>%
    dplyr::group_by(.data$Variable, .data$SuicideAttempts) %>%
    dplyr::summarize(mean = mean(.data$Answer, na.rm = TRUE), .groups = "drop") %>%
    dplyr::mutate(
      mean = mean * 100,
      Variable = stringr::str_wrap(.data$Variable, 15)
    ) %>%
    ggplot2::ggplot(ggplot2::aes(x = .data$Variable, y = .data$mean, group = .data$SuicideAttempts, fill = .data$SuicideAttempts)) +
    ggplot2::geom_bar(position = "dodge", stat = "identity") +
    ggplot2::geom_text(
      ggplot2::aes(label = paste0(sprintf("%.1f", .data$mean), "%")),
      position = ggplot2::position_dodge(width = 0.9),
      vjust = -0.5,
      size = 3
    ) +
    ggplot2::labs(
      title = plot_title,
      x = "",
      y = "Proportion",
      fill = "Suicide Attempt Status"
    ) +
    ggplot2::scale_fill_manual(values = fill_colors, labels = c("Not Attempted", "Attempted")) +
    ggplot2::theme_classic() +
    ggplot2::theme(
      legend.position = "top",
      axis.title.y = ggplot2::element_blank(),
      axis.text.y = ggplot2::element_blank(),
      axis.ticks.y = ggplot2::element_blank(),
      axis.text.x = ggplot2::element_text(angle = 45, hjust = 1)
    )
}

