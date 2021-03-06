context("test-edit_tags.R")
# This file is for testing the applications in the inst/ directory.
library("shinytest")

test_that("edit_tags works", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  skip_on_travis()
  # Use compareImages=FALSE because the expected image screenshots were created
  # on a Mac, and they will differ from screenshots taken on the CI platform,
  # which runs on Linux.
  appdir <- system.file(package = "blogyaml", "shiny")
  expect_pass(testApp(appdir, compareImages = FALSE))
})
