lansing_woods_ss <- spatstat.data::lansing

lansing_woods <- tibble::tibble(
  x = lansing_woods_ss$x,
  y = lansing_woods_ss$y,
  type = lansing_woods_ss$marks)

source("helper-functions/t_col.r")
pallete <- vapply(1:6, FUN = t_col,FUN.VALUE = "c", percent = 50)

with(
  data = lansing_woods,
  expr = {
    plot(x = x,
         y = y,
         col = pallete[lansing_woods$type],
         pch = 16)
})

readr::write_csv(lansing_woods, "data/lansing_woods.csv")
