#' Present value factor
#'
#' @param rate Interest rate.
#' @param periods Number of periods.
#' @return Present value per dollar that is received in the future
#' @examples
#' present_value_factor(0.05, 2)
#' present_value_factor(0.10, 7)
#' @export
present_value_factor <- function(rate, periods) {

    pvf <- ((1 - 1 / (1 + rate) ^ periods) / rate)

    return(pvf)
}
