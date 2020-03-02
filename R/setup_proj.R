#' Title: Simple asciicast example
#' Depends: processx (>= 3.4.0), dplyr
library(usethis)

proj_dir <- paste0(tempfile(), "/zenartrpkgs")
if (fs::file_exists(proj_dir)) fs::dir_delete(proj_dir)
fs::dir_create(proj_dir)

