# This script must be sourced from a directory which contains the original files and directories from the UCI HAR Dataset
library (dplyr)
library (tidyr)
library (stringr)
library (data.table)
library (reshape2)

#1. Merging the training and the test sets to create one data set

# Reading files and constructing the total data set
subject_train <- fread ("./train/subject_train.txt")
x_train <- fread ("./train/x_train.txt")
y_train <- fread ("./train/y_train.txt")
subject_test <- fread ("./test/subject_test.txt")
x_test <- fread ("./test/x_test.txt")
y_test <- fread ("./test/y_test.txt")
core_data <- data.table ()
core_data <- rbind (x_train, x_test)
total_y <- rbind (y_train, y_test)
subject <- rbind (subject_train, subject_test)
total_data <- cbind (total_y, subject, core_data)

# Assigning names to variables
corenames <- fread ("features.txt")
corevect <- corenames$V2
corevector <- tolower(corevect)
var_names <- c ("activity", "subject", corevector  )
var_names <- gsub ("\\,", "", var_names)
var_names <- gsub ("\\(", "", var_names)
var_names <- gsub ("\\)", "", var_names)
var_names <- gsub ("\\-", "", var_names)
total_data <- setnames (total_data, var_names)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
total_data <-data.frame (total_data)
t2 <-select (total_data, contains ("mean"))
t3 <- select (total_data, contains ("std"))
meanstd <- cbind(t2,t3)
variable <-names (meanstd) # creates a vector of variable names to be used in step #5
meanstd <- cbind(total_y,  meanstd)
meanstd <- rename (meanstd,  activitylabel =V1)
meanstd <-  cbind(subject, meanstd)
meanstd <- rename (meanstd, subject = V1)

#3. Uses descriptive activity names to name the activities in the data set
activity <- cut (meanstd$activitylabel, 6, labels = c("walking", "walkingupstairs", "walkingdownstairs", "sitting","standing", "laying"))
meanstd2 <- cbind (activity, meanstd)
meanstd2 <- select (meanstd2, -activitylabel)

#4.Appropriately labels the data set with descriptive variable names.
#Already done during steps 1:3

#5. From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
mdf <- melt (meanstd2, id = c("activity", "subject"), measure.vars = variable)
mdf <- mdf  %>% group_by(activity) %>% group_by (subject, add= TRUE) %>% group_by(variable, add=TRUE)
averages <- summarize (mdf, average = mean (value))
write.table (averages, "averages.txt", row.name = FALSE, sep = ",")

