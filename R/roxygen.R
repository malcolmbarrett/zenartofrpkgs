writeLines("#\' Plot mean sepal length by species
#\'
#\' @param size the size of the points
#\'
#\' @return a ggplot
#\' @export
#\'
#\' @examples
#\'
#\' plot_iris2()
#\'
plot_iris2 <- function(size = 2) {
  iris %>%
    dplyr::group_by(Species) %>%
    dplyr::summarize(mean_sepal_length = mean(Sepal.Length)) %>%
    ggplot2::ggplot(ggplot2::aes(mean_sepal_length, Species)) +
    ggplot2::geom_point(size = 2)
}
", "R/plot_iris.R")
