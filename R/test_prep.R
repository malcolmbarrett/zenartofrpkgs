clean_data <- function(.data) {
  if (identical(iris, .data)) stop("Something went wrong", call. = FALSE)

  tibble::as_tibble(mtcars)
}
