#' Summary function that bundles group_by function and summarize function to compute summary statistics
#'
#' @description This is a function that takes inputs of your dataset of interest, a column in the dataset by which you want to group data, and a variable in the dataset for which you want to run summary statistics. I have also added a custom error message if the inputted variable is not numeric.
#'
#' @param data dataset which includes all required variables for the function
#' @param col column name by which other variables will be grouped by
#' @param var variable for which we want to obtain summary statistics
#' @param na.rm set default as FALSE and can be specified with TRUE as needed
#'
#' @return The function will return a tibble including the count of the variable per group of the col param, as well as columns for each summary statistics in the function per group.
#' @examples
#' summary_function(cancer_sample, diagnosis, radius_mean) #expect summary tibble for radius_mean per diagnosis group
#'
#' summary_function(gapminder, continent, lifeExp) #expect summary tibble of lifeExp per continent group
#'
#' @export

summary_function <- function(data, col, var, na.rm = FALSE) {
  if(!is.numeric(data %>% dplyr::pull({{var}}))){
    stop("Sorry! Variable must be numeric!")
  }
  data %>%
    dplyr::group_by({{col}}) %>%
    dplyr::summarise(n=dplyr::n(), mean = mean({{var}}, na.rm = na.rm), median = median({{var}}, na.rm = na.rm), min = min({{var}}, na.rm = na.rm), max = max({{var}}, na.rm = na.rm), sd= sd({{var}}, na.rm = na.rm))
}
