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

## The "userfriendlyscience" package is used to calculate 
## reliability coefficients
# Package not available on CRAN.
# Install via... devtools::install_github("matherion/userfriendlyscience")
library(userfriendlyscience)

################################################################################

### THIS SECTION READS IN THE DATA FROM AN .XLSX FILE ###

## Data file should be in the working directory.
# Example file name is "data.xls"; change it match actual data file name.
my_data <- read_excel(file.choose())

################################################################################

### THIS SECTION DETERMINES THE RELIABILITY COEFFICIENTS ###

# The AMS-C, as commonly used, is comprised of seven factors.
# Reliability coefficients are determined for each factors, as if each
# factor is a single construct.

AMOT <- c("amsc_5", "amsc_12", "amsc_19", "amsc_26")
EEXT <- c("amsc_1", "amsc_8", "amsc_15", "amsc_22")
EINT <- c("amsc_7", "amsc_14", "amsc_21", "amsc_28")
EIDN <- c("amsc_3", "amsc_10", "amsc_17", "amsc_24")
IEXP <- c("amsc_4", "amsc_11", "amsc_18", "amsc_25")
IACM <- c("amsc_6", "amsc_13", "amsc_20", "amsc_27")
IKNW <- c("amsc_2", "amsc_9", "amsc_16", "amsc_23")

scaleStructure(my_data[,AMOT])
scaleStructure(my_data[,EEXT])
scaleStructure(my_data[,EINT])
scaleStructure(my_data[,EIDN])
scaleStructure(my_data[,IEXP])
scaleStructure(my_data[,IACM])
scaleStructure(my_data[,IKNW])

################################################################################