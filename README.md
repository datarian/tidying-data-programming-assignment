# tidying-data-programming-assignment

## Overview
This repository contains an assignment that is part of the Data Science specialisation by Johns Hopkins University on Coursera.

The data that is being worked on originates in an experiment called "Human Activity Recognition Using Smartphones Data Set". The data has been tidied in this project for further analysis.

## Folder structure
Input data as well as the resulting tidy dataset can be found in the folder `data/`.

## Running the code and what it does
The script `run_analysis.R` will load data and tidy it up. It concludes by saving the tidy data to `data/activity_mean_sensor_values.csv`. If data is drawn in from another folder outside this repo's clone, the directory path can be adjusted in the top part of the script. Further documentation of the code can be found directly inside the R script.

The code merges togehter test data and training data to create a single, tidy file with only a subset of the original variables. It does so in 5 steps: (1) Merge training and test datasets (2) Extract mean and std for each measurement. (3) use descriptive activity names (4) renmae variables to descriptive names (5) Create a second, independent dataset with only average values for each variable, grouped by activity and subject.


## Input- / Output data
Input is taken from several files under the `data/test and data/train` directories. It includes descriptive files with activity and variable names, and two files (for test and train respectively) with the actual data in them.
Refer to `data/README.txt` for the original documentation.

The output file's structure is explained in `CodeBook.md` in this repo's main folder.
