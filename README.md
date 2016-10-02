# Getting and Cleaning Data - Course Project
============================================
`run_analysis.R` script version 1.0.0 02/10/2016

This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", available in coursera.


##General usage notes

-This script can be loaded directly in R program

-The main operations undertaken by the script are:
		-Check if data set is in the Working Directory (WD) and download it if it's not.
		-Load training and test measurement data sets, as well as subject data.
		-Bind rows fo both test and training sets into `subQ1` object.
		-Labels variables of the dataset.
		-Replace Activities numeric values by name values.
		-Extracts the mean and standard deviation for each measurement and store data in `subQ4`.
		-Creates a new tidy data set with the average of each variable for each activity and each subject called `SubMean`.
		-Creates `tidy_data.txt` file containing `SubMean` data.


##Dependencies

The script `run_analysis.R` depends on the library `reshape2`.

		
##Codebook

The information about the variables is provided in `CodeBook.md` .


##Code

The script `run_analysis.R`  contains comments explaining the different steps followed to obtain the `tidy_data.txt` results file.