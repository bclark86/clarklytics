#' Present value of an annuity is the current value of future payments from an annuity
#'
#' @param payment_c Aount of future payments.
#' @param rate Interest rate.
#' @param periods Number of periods.
#' @return Present value per dollar that is received in the future
#' @examples
#' present_value_annuity(1000, 0.05, 20)
#' present_value_annuity(5000, 0.10, 7)
#' @export
present_value_annuity <- function(payment_c, rate, periods) {

    pv <- payment_c * annuity_present_value_factor(rate, periods)

    return(pv)
}
