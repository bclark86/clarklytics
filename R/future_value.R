#' Calculate future value of an investment after one or more periods
#'
#' @param present_value Value of money at time t0.
#' @param rate Interest rate for money.
#' @param periods Number of periods.
#' @return Future value (FV) of the investment.
#' @examples
#' future_value(1000, 0.05, 3)
#' future_value(1000, 0.07, 2)

#' @export
future_value <- function(present_value, rate, periods) {

    fv <- present_value * (1 + rate) ^ periods

    return(fv)
}
