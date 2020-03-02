library(dplyr)

iris %>%
  dplyr::group_by(Species) %>%
  dplyr::summarise_all(mean)

# Here is another command:

starwars %>%
  group_by(species) %>%
  summarise(
    n = n(),
    mass = mean(mass, na.rm = TRUE)
  ) %>%
  filter(n > 1, mass > 50)
