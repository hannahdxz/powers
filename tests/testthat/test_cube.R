context("cube numerics")

test_that("numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(cube(numeric(0)), numeric(0))
  expect_identical(cube(num_vec), num_vec^3)
})

test_that("NA removed successfully", {
  vec <- c(1,2,NA)
  expect_identical(cube(vec, na.omit=TRUE), c(1,8))
  expect_identical(cube(vec), c(1,8,NA))
})

# Failing test:
test_that("other type of input does not work", {
  num_vec <- c(0, -4.6, 3.4, "a")
  expect_equal(cube(num_vec), "invalid input")
})
