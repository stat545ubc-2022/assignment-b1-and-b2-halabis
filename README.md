# STAT545 B Assignments 

## Assignment B1

### Description
This repository contains **Assignment B1** which required us to write a function and test it. I have written a function that easily outputs several summary statistics (*count, mean, median, minimum, maximum, and standard deviation*) of a variable of interest in a dataset, and I have also bundled the function so that you can simple input the column name by which you would like to group the data by. This function then becomes a simple-to-use function for statistics with only 3 parameters required including the data you want to use, the column by which the data should be grouped, as well as the variable of interest for the summary statistics. Furthermore, I customized an error message so that when one attempts to input a non-numeric variable into the "var" parameter, they will get the message *"Sorry! Variable must be numeric!"*.

I conducted some examples using two data packages: **gapminder** and **datateachr**. I then conducted a test sequence using the functions expect_equal(), expect_identical(), expect_error(), and expect_true() to ensure that all tests passed, which they did.

### Folders and Files

In the folder labelled **Assignment B1**, there is an Rmd file containing the codes I used in the assignment, as well as an Md file with the knitted version of the code. There will also be a README file in each folder of the repository.

### Repository Access

Follow the blow steps to access the repository on your local machine (assuming Mac):

```{r}
$ git init
```

```{r}
$ git clone https://github.com/stat545ubc-2022/assignment-b1-and-b2-halabis.git
```


### Usage

To replicate the Rmd file, you must first attach the following packages:

```{r}
library(tidyverse)
library(styler)
library(lintr)
library(roxygen2)
library(datateachr)
library(testthat)
library(gapminder)
```

Once installed, all functions of the package should work. Remember, if the libraries do not attach, you must install them first. Note that the data used for examples and testing were retrieved from the libraries **datateachr** and **gapminder**!

## Assignment B2

### Description

In **Assignment B2** we will be creating a package that contains the function and documentation produced in **Assignment B1**. Please find the package in the folder **groupsummary**.
