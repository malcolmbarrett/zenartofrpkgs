iris2 <- janitor::clean_names(iris)
iris2$species <- as.character(iris2$species)
iris2 <- tibble::as_tibble(iris2)

use_data(iris2, overwrite = TRUE)
