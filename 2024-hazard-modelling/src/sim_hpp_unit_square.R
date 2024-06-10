#' Simulate a Homogeneous Poisson process on the unit square
#'
#' @param lambda Expected number of events per unit area
#' @param seed Optional seed used when generating
#'
#' @return data frame of simulated `x` and `y` locations
#' @export
#'
#' @examples
sim_hpp_unit_square <- function(lambda, seed = NULL){
  if(!is.null(seed)){base::set.seed(seed)}

  n_events <- stats::rpois(n = 1, lambda = lambda)

  hpp <- data.frame(
    x = stats::runif(n_events),
    y = stats::runif(n_events)
  )

  return(hpp)
}
