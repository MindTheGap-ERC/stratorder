test_that("MOM values are 1 for perfectly ordered strata", {
  no_fa = 4 # >2
  s = stratcols::as_stratcol(runif(10 * no_fa), rep(1:no_fa, 10))
  m = transition_matrix(s)
  mom = get_mom(m)
  expect_equal(mom, 1)
})
