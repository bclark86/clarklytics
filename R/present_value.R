#' Calculate present value of an investment after one or more periods
#'
#' @param future_value Value of money at maturity.
#' @param rate Interest rate for money.
#' @param periods Number of periods.
#' @return Present value (PV) of the investment.
#' @examples
#' present_value(1000, 0.05, 3)
#' present_value(1000, 0.07, 2)

#' @export
present_value <- function(future_value, rate, periods) {

    pv <- future_value / (1 + rate) ^ periods

    return(pv)
}
