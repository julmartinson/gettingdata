##### Getting and Cleaning Data (Coursera, January 2015)    ##########
## Course project -  run_analysis.R
## data files are located in "UCI HAR Dataset" folder in the workspace

## 1) install packages used in the script
# package plyr - needed to use function ddply in step 7
if(!require("plyr")) {
        install.packages("plyr")
        require("plyr")
}
library(plyr)

## 2) read original data files
# training set s1
s1Subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
s1Measure <- read.table("./UCI HAR Dataset/train/X_train.txt")
s1Activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
# test set s2 
s2Subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
s2Measure <- read.table("./UCI HAR Dataset/test/X_test.txt")
s2Activity <- read.table("./UCI HAR Dataset/test/y_test.txt")

## 3) merge training and test sets into one dataset
# merge subject, activity and measurements for training set
set1 <- cbind(s1Subject, s1Activity, s1Measure)
# merge subject, activity and measurements for test set
set2 <- cbind(s2Subject, s2Measure, s2Activity)
# merge training and test together
fullSet <- rbind(set1, set2)

## 4) add column names to the dataset
# read measurement names from features.txt
vars <- read.table("./UCI HAR Dataset/features.txt")
cols <- vars[,2]
# replace some characters for better readability
cols<-gsub("\\(", "_", cols)
cols<-gsub("\\)", "", cols)
cols<-gsub("-", "_", cols)
cols<-gsub(",", "-", cols)
# add Subject and Activity columns
cols <- c("Subject", "Activity", cols)
# set names in full dataset to these column names
names(fullSet)<-cols

## 5) extract columns with measurements on the mean (mean_ token)  
## and standard deviation (std_ token) from full dataset 
## and Subject and Activity columns
extractSet <- fullSet[, grep("Subject|Activity|mean_|std_", cols)]

## 6) replace activity values by descriptive labels
# read labels from activity_labels file
aLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(aLabels) <- c("value", "Activity")
# merge dataset extracted in step 5 with labels for Activity column
extractSetL <- merge(aLabels, extractSet, by.x="value", by.y="Activity")
# remove activity value column, leave only activity labels
extractSetL$value <- NULL

## 7) calculate average for each measurement 
# by Subject and Activity using ddply function
# store calculation result in new independent set - tidy dataset
tidySet <- ddply(extractSetL, .(Subject,Activity), colwise(mean))

## 8) clean column names in tidy dataset, add AVG to measurement names
names(tidySet) <- gsub("^t", "AVG_t", names(tidySet))
names(tidySet) <- gsub("^f", "AVG_f", names(tidySet))
names(tidySet) <- gsub("__", "_", names(tidySet))
names(tidySet) <- gsub("_$", "", names(tidySet))

## 9) save tidy dataset into text file, columns separated by tab
write.table(tidySet,"TidyData.txt",row.names = FALSE, sep="\t", quote = FALSE)







