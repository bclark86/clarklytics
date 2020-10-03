context("Calculating rate of return for an investment")

test_that("compound annual growth rate calculates correctly", {
    expect_equal(cagr(1000, 2200, 4), 0.21788, tolerance = 1e-3)
})
