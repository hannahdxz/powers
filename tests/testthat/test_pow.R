context("Powering numerics")

test_that("numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(pow(numeric(0),6), numeric(0))
  expect_identical(pow(num_vec,5), num_vec^5)
})

test_that("NA removed successfully", {
  vec <- c(1,2,NA)
  expect_identical(pow(vec, 3, na.omit=TRUE), c(1,8))
  expect_identical(pow(vec,3), c(1,8,NA))

})

# Failing test:
test_that("other type of input does not work", {
  num_vec <- c(0, -4.6, 3.4, "a")
  expect_equal(pow(num_vec), "invalid input")
})
