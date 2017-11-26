context("Squaring numerics")

test_that("numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(square(numeric(0)), numeric(0))
  expect_identical(square(num_vec), num_vec^2)
})

test_that("NA removed successfully", {
  vec <- c(1,2,NA)
  expect_identical(square(vec, na.omit=TRUE), c(1,4))
  expect_identical(square(vec), c(1,4,NA))

})

# Failing test:
test_that("other type of input does not work", {
  num_vec <- c(0, -4.6, 3.4, "a")
  expect_equal(square(num_vec), "invalid input")
})
