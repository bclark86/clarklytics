# TIME VALUE OF MONEY ----

#' @export
future_value <- function(present_value, rate, periods) {

    fv <- present_value * (1 + rate) ^ periods

    return(fv)
}

#' @export
present_value <- function(future_value, rate, periods) {

    pv <- future_value / (1 + rate) ^ periods

    return(pv)
}

#' @export
interal_rate_return <- function(present_value, future_value, periods = 1) {

    ytm <- (future_value / present_value) ^ (1 / periods) - 1

    return(ytm)
}

#' @export
time_to_maturity <- function(present_value, future_value, rate) {

    t <- log(future_value / present_value) / log(1 + rate)

    return(t)
}

#' @export
par_value <- function(face_value, rate) {

    value_tbl <- tibble::tibble(years_to_maturity = 0:10) %>%
        dplyr::mutate(
            par_value = present_value(face_value,
                                      rate,
                                      periods = years_to_maturity)) %>%
        tibble::add_column(rate = rate)

    return(value_tbl)
}

#' @export
present_value_factor <- function(rate, periods) {

    pvf <- ((1 - 1 / (1 + rate) ^ periods) / rate)

    return(pvf)
}

#' @export
present_value_annuity <- function(payment_c, rate, periods) {

    pv <- payment_c * present_value_factor(rate, periods)

    return(pv)
}
