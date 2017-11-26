context("Squaring numerics")

test_that("numeric values work.", {
  num_vec <- c(0, 2.6, 3.4)
  expect_identical(box_cox(1,1,2), 0)
  expect_equal(box_cox(num_vec,3,5), c(-0.3333333,5.5253333,12.7680000))
})

test_that("NA removed successfully", {
  vec <- c(1,2,NA)
  expect_identical(box_cox(vec, 2, 2,na.omit=TRUE), c(0.0,1.5))
  expect_identical(box_cox(vec,2,2), c(0.0,1.5,NA))

})

# Failing test:
test_that("other type of input does not work", {
  num_vec <- c(0, -4.6, 3.4, "a")
  num_vec2 <- c(0, -4.6, 3.4)

  expect_equal(box_cox(num_vec,2,5), "invalid input")
  expect_equal(box_cox(num_vec2,"2",5), "invalid input")
})

test_that("lambda1 needs to be between -5 to 5 ", {
  num_vec <- c(0, -4.6, 3.4)
  expect_equal(box_cox(num_vec,6,5), "invalid value of lambda1")
})


test_that("lambda2 needs to be larger than -y", {
  num_vec <- c(0, -4.6, 3.4)
  expect_equal(box_cox(num_vec,2,2), "invalid value of lambda2")
})
