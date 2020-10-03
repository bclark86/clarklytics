context("Calculating present value of an investment")

test_that("present value calculates correctly", {
    expect_equal(present_value(1050, 0.05, 1), 1000)
    expect_equal(present_value(1360.49, 0.08, 4), 1000, tolerance = 1e-3)
})
