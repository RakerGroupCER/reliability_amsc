################################################################################
##       Confirmatory Factor Analysis                                         ##
##       for the Academic Motivation Scale - Chemistry                        ##
################################################################################

## Author: Jeffrey R. Raker
## Released: 2022
## Last Updated: 2022-10-22

################################################################################

### THIS SECTION IS FOR LOADING NECESSARY PACKAGES ###

## Install packages (and dependencies) if necessary
# install.packages("readxl", dependencies = TRUE)

## The "readxl" package is used to input data from an .xlsx file
library (readxl)

## The "psych" package is used to generate descriptive statistics
library(psych)

## The "userfriendlyscience" package is used to renaming columns in dataframe
library(userfriendlyscience)

################################################################################

### THIS SECTION READS IN THE DATA FROM AN .XLSX FILE ###

## Data file should be in the working directory.
# Example file name is "data.xls"; change it match actual data file name.
my_data <- read_excel(file.choose())

################################################################################