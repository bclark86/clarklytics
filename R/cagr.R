#' Calculate the compound annual/periodic growth rate
#'
#' @param present_value Value of money at time t0.
#' @param future_value Value at maturity.
#' @param periods Number of periods.
#' @return Compound annual/periodic growth rate (CAGR)
#' @examples
#' cagr(1000, 1050)
#' cagr(1000, 2000, 5)

#' @export
cagr <- function(present_value, future_value, periods = 1) {

    cagr <- (future_value / present_value) ^ (1 / periods) - 1

    return(cagr)
}
