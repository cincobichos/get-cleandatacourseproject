==================================================================
Course project - Getting and Cleaning Data

==================================================================

This Course Project consists in a exercise usisng the "Human Activity Recognition Using Smartphones Dataset - Version 1.0", by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto, available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original README file explains the experiments. This modified README.md describes the transformations performed by the script, following the five steps of the assignment. The comments in the script help the reader to know which part of the assignment is being performed.

The script must be sourced from a directory which contains the original files and directories from the UCI HAR Dataset.
First, the necessary packages are loaded.
Then, files of the two directories of the original data set are read (with fread function) and the training and the test sets, along with its subject numbers and activity labels, are merged to create one data set (total_data) using rbind and cbind.
Subsequently, the names are assigned to the variables (# Assigning names to variables) by reading the original “features.txt” file and tidying the variable names of uppercases, commas, brackets and minus signals using gsub function. These operations create an updated “total_data” object, with the new tidy variable names.
It then proceeds to step two (#2.Extracts only the measurements on the mean and standard deviation for each measurement), using the select function to extract only the columns containing mean and standard  deviation measures, and the cbind function to form a new object (meanstd) containing only these measures. In this step, it also creates a “variable” object, which is a vector of variable names to be used in step #5. Finally, cbind is used to join the subject and activity label columns to this data set and rename is used to name them accordingly.  This step ends with a data set contaning the means and standard deviations of each of the variables, a column of subject numbers and a column of activity labels.
The third step  uses the cut fuction to assign names for each of the activities and the select function to remove the activitylabel column. This step ends with an object, “meanstd2” which contains the means and standard deviations and which variables have already desciptive names, so step #4 is already done. 
Finally, in step #5, the melt function is used to transform meanstd2 in a tidy data set containing one column for the activities, one for the subjects, one for the variable names, and one for the values. Then the group_by is used to perform nested groupings of the first three columns and the summarize function is used to take the mean of each variable for each activity and each subject. 
This is written to an independent data set, “averages.txt”, using the write.table function.

The modified data set includes the following files:
=========================================

- 'README.md.txt'

- 'Codebook_md.txt': List of all variable names and transformations performed on the variables listed in the original "features.txt" file.


