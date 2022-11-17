testthat::test_that("This is a test for my summary function", {
  tinytest::expect_error(summary_function(datateachr::vancouver_trees, tree_id, genus_name)) #Test whether an error message is given if variable is non-numeric
  tinytest::expect_error(summary_function(datateachr::building_permits, type_of_work, property_use)) #Another error test
  tinytest::expect_equal((summary_function(datateachr::cancer_sample, diagnosis, radius_mean)),
               (datateachr::cancer_sample %>%
                  dplyr::group_by(diagnosis) %>%
                  dplyr::summarise(n=dplyr::n(), mean = mean(radius_mean), median = median(radius_mean), min = min(radius_mean), max = max(radius_mean), sd = sd(radius_mean)))) #Test whether the function gives identical result as manual input
  tinytest::expect_true(tibble::is_tibble(summary_function(datateachr::cancer_sample, diagnosis, radius_mean))) #Test that the output is a tibble table
})
