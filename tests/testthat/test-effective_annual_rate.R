context("Calculating effective annual rate")

test_that("effective annual rate calculates correctly", {
    expect_equal(effective_annual_rate(0.10, 2), .1025, tolerance = 1e-3)
})
