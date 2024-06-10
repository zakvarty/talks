#' Plot a two dimensional point pattern on a unit square.
#'
#' @param pp_df data frame with columns `x` and `y`
#'
#' @return Base R plot of point pattern
#' @export
#'
#' @examples
plot_point_pattern_square <- function(pp_df){
  opar <- par()
  par(mar = c(0,0,0,0), bg = NA)
  plot(
    x = pp_df$x,
    y = pp_df$y,
    xlim = c(0, 1),
    ylim = c(0, 1),
    pch = 16,
    cex = 1.5,
    col = rgb(0,0,0,0.7),
    asp = 1,
    bty = "n",
    xlab = "",
    ylab = "",
    axes = FALSE)
  rect(0, 0, 1, 1, lwd = 2)
  par(mar = opar$mar)
}
