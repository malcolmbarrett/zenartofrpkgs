library(asciicast)
library(fs)
library(here)

here_svg <- function(...) {
  here("img", "svg", ...)
}

here_r <- function(...) {
  here("R", ...)
}

record_quietly <- purrr::quietly(record)

write_typing <- function(x, ..., typing_speed = 0.05, start_wait = .5, process = NULL) {
  cast <- record_quietly(here_r(path_ext_set(x, "R")), typing_speed = typing_speed, start_wait = start_wait, process = process)$result
  write_svg(cast, path = here_svg(path_ext_set(x, "svg")), window = FALSE, cursor = FALSE, theme = modifyList(default_theme(), list(font_size = 2.2)), ...)
}

with_process <- function(process, code) {
  process <- eval(process)
  on.exit(process$kill(), add = TRUE)
  force(code)
}

process <- asciicast_start_process(timeout = 10)
with_process(process, {
  write_typing("setup_pkg", typing_speed = .00001, process = process)
  write_typing("create_package", process = process)
  write_typing("setup_pkg2", typing_speed = .00001, process = process)
  write_typing("write_code", process = process)
  write_typing("use_r", process = process)
  write_typing("write_functions", process = process)
  write_typing("load_all", process = process)
  write_typing("write_library", process = process)
  write_typing("use_package", process = process)
  write_typing("use_package_code", process = process)
  write_typing("use_package_install", process = process)
  write_typing("test_prep", typing_speed = .00001, process = process)
  write_typing("fiddle", process = process)
  write_typing("use_test", process = process)
  write_typing("comment", process = process)
  write_typing("use_roxygen_rmd", process = process)
  write_typing("roxygen", typing_speed = .00001, process = process)
  write_typing("document", process = process)
  write_typing("use_data_raw", process = process)
  write_typing("use_data", process = process)
  write_typing("use_vignette", process = process)
  write_typing("use_inst", process = process)
  write_typing("use_toplevel", process = process)
  # write_typing("install", process = process) # seems to hang?
})

proj_process <- asciicast_start_process(timeout = 10)
with_process(proj_process, {
  write_typing("setup_proj", typing_speed = .00001, process = proj_process)
  write_typing("create_project", process = proj_process)
})

goodbye_process <- asciicast_start_process(timeout = 10)
with_process(goodbye_process, {
  write_typing("goodbye_setup", typing_speed = .00001, process = goodbye_process)
  write_typing("goodbye", typing_speed = .3, process = goodbye_process)
})



