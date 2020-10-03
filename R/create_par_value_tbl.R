#' Present value of investment at various years of maturity
#'
#' @param face_value Value of money at time t0.
#' @param rate Interest rate.
#' @param years_to_maturity Number of periods.
#' @return Tibble with present value for each year of maturity
#' @examples
#' create_par_value_tbl(1000, 0.05)
#' create_par_value_tbl(1000, 0.10, 0:20)
#' @export
create_par_value_tbl <- function(face_value, rate, years_to_maturity = 0:10) {

    value_tbl <- tibble::tibble(years_to_maturity = years_to_maturity)

    value_tbl$par_value <- present_value(face_value,
                                         rate,
                                         value_tbl$years_to_maturity)

    value_tbl$rate <- rate

    return(value_tbl)
}
