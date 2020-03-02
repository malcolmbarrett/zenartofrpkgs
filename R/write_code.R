iris %>%
  group_by(Species) %>%
  summarize(mean_sepal_length = mean(Sepal.Length))
