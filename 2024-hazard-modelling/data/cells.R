cells_ss <- spatstat.data::cells

cells <- tibble::tibble(
  x = cells_ss$x,
  y = cells_ss$y)

data_path <- here::here("data/cells.csv")
readr::write_csv(x = cells, file = data_path)

opar <- par()
par(mar = c(0,0,0,0))
plot(
  cells,
  xlim = c(0, 1),
  ylim = c(0, 1),
  pch = 16,
  col = rgb(0,0,0,0.7),
  asp = 1,
  bty = "n",
  xlab = "",
  ylab = "",
  axes = FALSE)
rect(0, 0, 1, 1, lwd = 2)
par(mar = opar$mar)
