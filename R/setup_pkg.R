#' Title: Simple asciicast example
#' Depends: processx (>= 3.4.0), dplyr
library(usethis)
library(tidyverse)

options(tibble.width = 60, tibble.print_max = 10)

pkg_dir <- paste0(tempfile(), "/zenartrpkgs")
if (fs::file_exists(pkg_dir)) fs::dir_delete(pkg_dir)
fs::dir_create(pkg_dir)

setwd(pkg_dir)

edit_file <- function(path) {
  ui_todo("Modify {ui_path(path)}")
  invisible()
}

interactive <- function() FALSE

assignInNamespace("edit_file", edit_file, ns = "usethis")
assignInNamespace("interactive", interactive, ns = "base")

