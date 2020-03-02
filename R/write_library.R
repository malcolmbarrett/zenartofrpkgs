library(dplyr)
library(ggplot2)

plot_iris <- function() {
  iris %>%
    group_by(Species) %>%
    summarize(mean_sepal_length = mean(Sepal.Length)) %>%
    ggplot(aes(mean_sepal_length, Species)) +
      geom_point()
}
