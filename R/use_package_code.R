plot_iris <- function() {
  iris %>%
    dplyr::group_by(Species) %>%
    dplyr::summarize(
      mean_sepal_length = mean(Sepal.Length)
    ) %>%
    ggplot2::ggplot(
      ggplot2::aes(mean_sepal_length, Species)
    ) +
      ggplot2::geom_point()
}
