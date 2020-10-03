#' Calculate the number of periods until maturity for an investment
#'
#' @param present_value Value of money at time t0.
#' @param future_value Value at maturity.
#' @param rate Interest rate.
#' @return Number of periods until maturity
#' @examples
#' time_to_maturity(1000, 1050, 0.05)
#' time_to_maturity(1000, 2000, 0.07)
#' @export
time_to_maturity <- function(present_value, future_value, rate) {

    t <- log(future_value / present_value) / log(1 + rate)

    return(t)
}
