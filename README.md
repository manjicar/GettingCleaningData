## Getting and Cleaning Data: Course Final Project

## Introduction
This repository contains the files corresponding to the final project of the Coursera course "Getting and Cleaning Data". The main purpose of this project is to create a tidy data set -ready to be analyzed- from a collection of text files.

## Original datasets
The data sets were obtained from the website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones (UCI Machine Learning Repository). Namely, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (accelerometers from the Samsung Galaxy S smartphone). 
Those original data sets consist of train, test, activity and features text files.

## Files in this repository

'run_analysis.R' contains the code that performs the following operations on the original datasets (All original files must be in the same folder as the script for the code to run properly):

1. Combination of train and test data frames. 

2. Change of variable names and activity labels.

3. Selection of variables containing mean and standard deviation.

4. Combination of all the processed data into one single data frame.

5. Creation of a tidy dataset named "final.txt".

'CodeBook.md' describes the variables and the transformations performed on the original data.

'final.txt' is the final product of this project. This text file is a tidy data set ready to be analyzed. 
