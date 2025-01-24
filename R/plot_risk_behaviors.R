#' Plot Risk Behaviors Related to Suicide Attempts
#'
#' This function takes a dataset and produces a bar plot that visualizes the
#' proportion of responses for different risk behavior variables in relation to
#' suicide attempt status. It allows customization of plot titles and fill colors.
#'
#' @param data A dataframe containing the variables of interest.
#' @param behavior_vars A character vector of column names in 'data' representing
#'        different risk behaviors.
#' @param suicide_var The name of the column in 'data' that indicates suicide
#'        attempt status.
#' @param plot_title Title for the plot.
#' @param fill_colors A character vector of length 2 providing the colors to use
#'        for the bars in the plot. Default colors are set to "#24bccb" and "#4e2d86".
#'
#' @return A ggplot object representing the bar plot.
#'
#'
#' @export
plot_risk_behaviors <- function(data,
                                behavior_vars,
                                suicide_var,
                                plot_title,
                                fill_colors = c("#24bccb", "#4e2d86")) {


  data %>%
    select(all_of(c(behavior_vars, suicide_var))) %>%
    drop_na() %>%
    pivot_longer(
      cols = all_of(behavior_vars), # Columns to pivot into longer format
      names_to = "Variable",        # New column name for 'Variable'
      values_to = "Answer"          # New column name for 'Answer'
    ) %>%
    mutate(
      Answer = as.numeric(as.character("Answer")),
      SuicideAttempts = as.factor(.[[suicide_var]])
    ) %>%
    summarize(mean = mean(Answer, na.rm = TRUE), .by = c(Variable, SuicideAttempts)) %>%
    mutate(
      mean = mean * 100,
      Variable = str_wrap(Variable, 15)
    ) %>%
    ggplot(aes(x = Variable, y = mean, group = SuicideAttempts, fill = SuicideAttempts)) +
    geom_bar(position = "dodge", stat = "identity") +
    geom_text(
      aes(label = paste0(sprintf("%.1f", mean), "%")),
      position = position_dodge(width = 0.9),
      vjust = -0.5,
      size = 3
    ) +
    labs(
      title = plot_title,
      x = "",
      y = "Proportion",
      fill = "Suicide Attempt Status"
    ) +
    scale_fill_manual(values = fill_colors, labels = c("Not Attempted", "Attempted")) +
    theme_classic() +
    theme(
      legend.position = "top",
      axis.title.y = element_blank(),
      axis.text.y = element_blank(),
      axis.ticks.y = element_blank(),
      axis.text.x = element_text(angle = 45, hjust = 1)
    )
}
