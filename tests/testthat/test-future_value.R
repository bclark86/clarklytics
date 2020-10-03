context("Calculating future value of an investment")

test_that("future value calculates correctly", {
    expect_equal(future_value(1000, 0.05, 1), 1050)
    expect_equal(future_value(1000, 0.08, 4), 1360.489, tolerance = 1e-3)
})
