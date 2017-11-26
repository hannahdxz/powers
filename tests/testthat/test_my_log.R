context("perform log transformation on numerics")

test_that("numeric values work.", {
  num_vec <- c(0, 8,64)
  expect_identical(my_log(num_vec,2), c(0,3,6))
  expect_identical(my_log(0,2), 0)
})

test_that("NA removed successfully", {
  vec <- c(2,4,NA)
  expect_identical(my_log(vec, 2, na.omit=TRUE), c(1,2))
  expect_identical(my_log(vec,2), c(1,2,NA))

})

# Failing test:
test_that("other type of input does not work", {
  num_vec <- c(0, -4.6, 3.4, "a")
  num_vec2 <- c(0, -4.6, 3.4)

  expect_equal(my_log(num_vec,2), "invalid input")
  expect_equal(my_log(num_vec2,"2"), "invalid input")
})

test_that("can not calculate x > base^100", {
  num_vec <- c(0, 4.6, 900000000000000000)
  expect_equal(my_log(num_vec,1.5), "can not calculate")
})

test_that("x>=0", {
  num_vec <- c(0, -4.6, 9)
  expect_equal(my_log(num_vec,1.5), "x needs to be larger than 0")
})
