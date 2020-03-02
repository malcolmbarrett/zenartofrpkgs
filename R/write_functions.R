# in 'R/summarize_data.R'
summarize_iris <- function() {
  iris %>%
    group_by(Species) %>%
    summarize(mean_sepal_length = mean(Sepal.Length))
}
