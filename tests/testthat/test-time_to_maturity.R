context("Calculating time until maturity")

test_that("time until maturity calculates correctly", {
    expect_equal(time_to_maturity(1000, 1791, 0.06), 10, tolerance = 1e-3)
})
