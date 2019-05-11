df <- data.frame(
  Response = LETTERS[1:5],
  Column1 = c(0.1,0.2,0.1,0.2,0.4),
  Column2 = c(1,3,4,2,3)
)

library(testthat)
library(ggplot2)

test_that("the plotme function returns a ggplot", {
  p <- plotme(df,2,3,1)
  expect_is(p,"ggplot")
  #expect_equal(df$Column,df$Column2)
})

test_that("Plot uses correct data", {
  p <- plotme(df,2,3,1)
  expect_that(df, equals(p$data))
})

test_that("the plotme2 function returns a ggplot", {
  p <- plotme2(df,2,1)
  expect_is(p,"ggplot")
})

test_that("Plot2 uses correct data", {
  p <- plotme2(df,2,1)
  expect_that(df, equals(p$data))
})
