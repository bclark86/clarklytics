#' Calculate the effective annual rate (EAR) of interest
#'
#' @param rate Interest rate per period
#' @param m Number of periods in a year
#' @return Effective annual rate
#' @examples
#' effective_annual_rate(.10, 2)
#' @export
effective_annual_rate <- function(rate, m) {

    ear <- (1 + rate / m) ^ m - 1

    return(ear)
}
