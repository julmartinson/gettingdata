## gettingdata
This is repository for course project for Getting and cleaning data (Coursera, Jan 2015)

Repository contains:

- **run_analysis.R**: R script for processing signal measurements collected using accelerometer and gyroscope embedded into cell phone during various activities performed by test subject who was wearing the phone. Experimental dataset is cleaned and transformed into tidy dataset with averages of selected measurements
- **README.md**: description of steps performed in the script
- **CodeBook.md**: description of the measurements and resulting variables

## Steps performed in run_analysis.R script

Data files used for analysis:
Original dataset is available in UCI HAR Dataset subfolder in R workspace. Dataset includes the following files:
```
--------------------------------------------------------------------
| File                    | Descrption
|-------------------------|-----------------------------------------
| features.txt            | measured variables names
| features_info.txt       | description of measured variables
| activity_labels.txt     | labels for activity numbers 
| test/subject_test.txt   | test set: subject for each measurement
| test/X_test.txt         | test set: measured values
| test/y_test.txt         | test set: activity number for each measurement
| train/subject_train.txt | training set: subject for each measurement
| train/X_train.txt       | training set: measured values
| train/y_train.txt       | training set: activity number for each measurement
---------------------------------------------------------------------
```

Analysis steps:

1. Ensure the package *plyr* is loaded into workspace using *require* function. Function *ddply* from this package is used for calculating averages in step 7
2. Read original datasets into training and test data using *read.table* function
3. Create training set S1 - combine training subject, values and activity and test set S2 - combine test subject, values and activity using *cbind* function. Combine S1 and S2 sets into one full datset using *rbind* function.
4. Read variable names from *features.txt* into *cols* list, remove or replace characters like `( ) - ,` for better readability and further lookup using *gsub* function. Add Subject and Activity columns and assign *cols* list to column names in full dataset.
5. Create extracted dataset with only Subject and Activity columns and columns that contain mean and standard deviation measurements (originally mean() transformed into mean_ and std() transformed into std_) using *grep* function. 
6. Read activity labels from *activity_labels.txt* into labels dataset and combine labels and extracted datasets together using *merge* function. First column in labels dataset and column Activity in extracted dataset are used for merge. Remove column with activity numbers from resulting dataset and leave only activity labels
7. Calculate averages by Subject and Activity for each measurement in the extracted dataset using *ddply* function. Store calculation results as new dataset - tidy dataset.
8. Clean up column names in tidy dataset using *gsub* function. Remove double underscores, underscores at the end of the name, double names like "BodyBody". Add "AVG" identifier to the beginning of each variable name to indicate that this is average of the original measurement 
9. Store resulting tidy data set as TidyData.txt file in the workspace using *write.table* function with tab delimiter and without row names. 

-----------------------------


