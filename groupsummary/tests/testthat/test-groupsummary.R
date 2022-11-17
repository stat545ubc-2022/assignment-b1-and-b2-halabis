#I will first run my test functions on several datasets at once to demonstrate the variety of things that can occur with my summary function (expected errors, expected identical outputs, expected tibble output)
#Using datateachr package: vancouver_trees, building_permits, and cancer_sample datasets

test_that("This is a test for my summary function", {
  expect_error(summary_function(vancouver_trees, tree_id, genus_name)) #Test whether an error message is given if variable is non-numeric
  expect_equal((summary_function(cancer_sample, diagnosis, radius_mean)),
               (cancer_sample %>%
                  dplyr::group_by(diagnosis) %>%
                  dplyr::summarise(n=dplyr::n(), mean = mean(radius_mean), median = median(radius_mean), min = min(radius_mean), max = max(radius_mean), sd = sd(radius_mean)))) #Test whether the function gives identical result as manual input
  expect_true(tibble::is_tibble(summary_function(cancer_sample, diagnosis, radius_mean)))
}) #Test that the output is a tibble table



#If I am testing all on the same dataset, let's try gapminder data with the same expect_() functions from the above chunk

test_that("This is a test for my summary function on gapminder data", {
  expect_error(summary_function(gapminder, continent, country))#Test whether an error message is given if variable is non-numeric
  expect_equal((summary_function(gapminder, continent, lifeExp)),
               (gapminder %>%
                  dplyr::group_by(continent) %>%
                  dplyr::summarise(n=dplyr::n(), mean = mean(lifeExp), median = median(lifeExp), min = min(lifeExp), max = max(lifeExp), sd = sd(lifeExp)))) #Test whether the function gives identical result as manual input)
  expect_true(tibble::is_tibble(summary_function(gapminder, continent, lifeExp))) #Test that the output is a tibble table
})
