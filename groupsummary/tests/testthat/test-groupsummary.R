test_that("multiplication works", {
  expect_error(summary_function(vancouver_trees, tree_id, genus_name))
  expect_equal((summary_function(cancer_sample, diagnosis, radius_mean)),
               (cancer_sample %>%
                  dplyr::group_by(diagnosis) %>%
                  dplyr::summarise(n=dplyr::n(), mean = mean(radius_mean), median = median(radius_mean), min = min(radius_mean), max = max(radius_mean), sd = sd(radius_mean))))
  expect_true(tibble::is_tibble(summary_function(cancer_sample, diagnosis, radius_mean)))
})
