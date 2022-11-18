
<!-- README.md is generated from README.Rmd. Please edit that file -->

# groupsummary package

<!-- badges: start -->
<!-- badges: end -->

The **groupsummary** package is an R package that contains the
summary_function() in the **R folder** that allows one to easily supply
the function with a dataset, a column in the dataset by which the data
should be grouped by, and a variable from the same dataset for which
summary statistics (count, mean, median, minimum, maximum, and standard
deviation) should be produced.

Follow below for installation and usage instructions.

## Installation

You can install the development version of summaries like so:

``` r
library(devtools)
#> Loading required package: usethis

devtools::install_github("stat545ubc-2022/assignment-b1-and-b2-halabis/groupsummary")
#> Downloading GitHub repo stat545ubc-2022/assignment-b1-and-b2-halabis@HEAD
#> 
#> * checking for file ‘/private/var/folders/v1/hm0zf5vd6mzdf0kztxmrw1fh0000gn/T/Rtmp11biCs/remotes24d354788a49/stat545ubc-2022-assignment-b1-and-b2-halabis-fcce7be/groupsummary/DESCRIPTION’ ... OK
#> * preparing ‘groupsummary’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘groupsummary_0.1.0.tar.gz’
#> Installing package into '/private/var/folders/v1/hm0zf5vd6mzdf0kztxmrw1fh0000gn/T/RtmpGDd8xG/temp_libpath20d821135154'
#> (as 'lib' is unspecified)
```

## Usage Examples

Below is a basic example which shows you how to conduct a common
computation:

``` r
library(groupsummary)

summary_function(datateachr::cancer_sample, diagnosis, radius_mean)
#> # A tibble: 2 × 7
#>   diagnosis     n  mean median   min   max    sd
#>   <chr>     <int> <dbl>  <dbl> <dbl> <dbl> <dbl>
#> 1 B           357  12.1   12.2  6.98  17.8  1.78
#> 2 M           212  17.5   17.3 11.0   28.1  3.20
```

## Tests Folder

The **tests** folder includes several tests executed for the function
including tests that confirm output is a tibble of summary statistics,
tests that throw errors where expected, and errors that demonstrate that
the function outputs an identical output compared to the longer, manual
version of the function made of several functions.

## Data Folder

The **data** folder contains all data sets used in documentation,
examples, and tests. They are not fundamental requirements for the use
of the function.
