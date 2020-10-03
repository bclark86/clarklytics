# TIME VALUE OF MONEY ----


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
