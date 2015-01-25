## Getting and Cleaning data course project - analysis of data in Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The collected data have been provided as two sets:

- **test set** *subject_test.txt* with subject identifiers, *X_test.txt* with signal measurements and *y_test.txt* with activity data 
- **training set** *subject_train.txt* with subject identifiers, *X_train.txt* with signal measurements and *y_train.txt* with activity date

List of measurement names and their description have been provided as *feautures.txt* and *features_info.txt*  

## Steps performed during analysis of the collected data 
### (see README.md for more details):
1. subject, activity and signal measurements are combined for each set
2. training and test sets are combined together
3. measurement names derived from *feature.txt* are applied to resulting combined dataset
4. measurements of mean (mean() function in the measurements name) and standard deviation (std() in measurement name) are extracted for further analysis
5. activity identifiers are replaced by activity labels to improve readability
6. average of each measurement extracted in step 4 is calculated by subject and activity
7. resulting data with subject, activity and calculated averages for each measurement is saved as tidy data set


## Variables in the resulting tidy data set:
*Identifiers of suject and activity* (2 varialbles)

 - **Subject** numeric identifier for subject, values from 1 to 30
 - **Activity** activity labes, 6 values (LAYING, STANDING, SITTING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
 
*Averages by subject and activity of means and standard deviations for selected measurements* (66 variables)

 - **AVG_tBodyAcc_mean_X** average of mean of accelerometer raw signal, X measurement
 - **AVG_tBodyAcc_mean_Y** average of mean of accelerometer raw signal, Y measurement
 - **AVG_tBodyAcc_mean_Z** average of mean of accelerometer raw signal, Z measurement
 - **AVG_tBodyAcc_std_X** average of standard deviation of accelerometer raw signal, X measurement
 - **AVG_tBodyAcc_std_Y** average of standard deviation of accelerometer raw signal, Y measurement
 - **AVG_tBodyAcc_std_Z** average of standard deviation of accelerometer raw signal, Z measurement
 - **AVG_tGravityAcc_mean_X** average of mean of gravity acceleration, X measurement
 - **AVG_tGravityAcc_mean_Y** average of mean of gravity acceleration, Y measurement
 - **AVG_tGravityAcc_mean_Z** average of mean of gravity acceleration, Z measurement
 - **AVG_tGravityAcc_std_X** average of standard deviation of gravity acceleration, X measurement
 - **AVG_tGravityAcc_std_Y** average of standard deviation of gravity acceleration, Y measurement
 - **AVG_tGravityAcc_std_Z** average of standard deviation of gravity acceleration, Z measurement
 - **AVG_tBodyAccJerk_mean_X** average of mean of acceleration Jerk signal, X measurement
 - **AVG_tBodyAccJerk_mean_Y** average of mean of acceleration Jerk signal, Y measurement
 - **AVG_tBodyAccJerk_mean_Z** average of mean of acceleration Jerk signal, Z measurement
 - **AVG_tBodyAccJerk_std_X** average of standard deviation of acceleration Jerk signal, X measurement
 - **AVG_tBodyAccJerk_std_Y** average of standard deviation of acceleration Jerk signal, Y measurement
 - **AVG_tBodyAccJerk_std_Z** average of standard deviation of acceleration Jerk signal, Z measurement
 - **AVG_tBodyGyro_mean_X** average of mean of gyroscope raw signal, X measurement
 - **AVG_tBodyGyro_mean_Y** average of mean of gyroscope raw signal, Y measurement
 - **AVG_tBodyGyro_mean_Z** average of mean of gyroscope raw signal, Z measurement
 - **AVG_tBodyGyro_std_X** average of standard deviation of gyroscope raw signal, X measurement
 - **AVG_tBodyGyro_std_Y** average of standard deviation of gyroscope raw signal, Y measurement
 - **AVG_tBodyGyro_std_Z** average of standard deviation of gyroscope raw signal, Z measurement
 - **AVG_tBodyGyroJerk_mean_X** average of mean of gyroscope Jerk signal, X measurement
 - **AVG_tBodyGyroJerk_mean_Y** average of mean of gyroscope Jerk signal, Y measurement
 - **AVG_tBodyGyroJerk_mean_Z** average of mean of gyroscope Jerk signal, Z measurement
 - **AVG_tBodyGyroJerk_std_X** average of standard deviation of gyroscope Jerk signal, X measurement
 - **AVG_tBodyGyroJerk_std_Y** average of standard deviation of gyroscope Jerk signal, Y measurement
 - **AVG_tBodyGyroJerk_std_Z** average of standard deviation of gyroscope Jerk signal, Z measurement
 - **AVG_tBodyAccMag_mean** average of acceleration magnitude mean
 - **AVG_tBodyAccMag_std** average of acceleration magnitude standard deviation
 - **AVG_tGravityAccMag_mean** average of gravity acceleration magnitude mean
 - **AVG_tGravityAccMag_std** average of gravity acceleration magnitude standard deviation
 - **AVG_tBodyAccJerkMag_mean** average of acceleration Jerk magnitude mean
 - **AVG_tBodyAccJerkMag_std** average of acceleration Jerk magnitude standard deviation
 - **AVG_tBodyGyroMag_mean** average of gyroscope magnitude mean
 - **AVG_tBodyGyroMag_std** average of gyroscope magnitude standard deviation
 - **AVG_tBodyGyroJerkMag_mean** average of gyroscope Jerk magnitude mean
 - **AVG_tBodyGyroJerkMag_std** average of gyroscope Jerk magnitude standard deviation
 - **AVG_fBodyAcc_mean_X** average of mean of accelerometer FFT signal, X measurement
 - **AVG_fBodyAcc_mean_Y** average of mean of accelerometer FFT signal, Y measurement
 - **AVG_fBodyAcc_mean_Z** average of mean of accelerometer FFT signal, Z measurement
 - **AVG_fBodyAcc_std_X** average of standard deviation of accelerometer FFT signal, X measurement
 - **AVG_fBodyAcc_std_Y** average of standard deviation of accelerometer FFT signal, Y measurement
 - **AVG_fBodyAcc_std_Z** average of standard deviation of accelerometer FFT signal, Z measurement
 - **AVG_fBodyAccJerk_mean_X** average of mean of acceleration Jerk FFT signal, X measurement
 - **AVG_fBodyAccJerk_mean_Y** average of mean of acceleration Jerk FFT signal, Y measurement
 - **AVG_fBodyAccJerk_mean_Z** average of mean of acceleration Jerk FFT signal, Z measurement
 - **AVG_fBodyAccJerk_std_X** average of standard deviation of acceleration Jerk FFT signal, X measurement
 - **AVG_fBodyAccJerk_std_Y** average of standard deviation of acceleration Jerk FFT signal, Y measurement
 - **AVG_fBodyAccJerk_std_Z** average of standard deviation of acceleration Jerk FFT signal, Z measurement
 - **AVG_fBodyGyro_mean_X** average of mean of gyroscope FFT signal, X measurement
 - **AVG_fBodyGyro_mean_Y** average of mean of gyroscope FFT signal, Y measurement
 - **AVG_fBodyGyro_mean_Z** average of mean of gyroscope FFT signal, Z measurement
 - **AVG_fBodyGyro_std_X** average of standard deviation of gyroscope FFT signal, X measurement
 - **AVG_fBodyGyro_std_Y** average of standard deviation of gyroscope FFT signal, Y measurement
 - **AVG_fBodyGyro_std_Z** average of standard deviation of gyroscope FFT signal, Z measurement
 - **AVG_fBodyAccMag_mean** average of FFT acceleration magnitude mean
 - **AVG_fBodyAccMag_std** average of FFT acceleration magnitude standard deviation
 - **AVG_fBodyAccJerkMag_mean** average of FFT acceleration Jerk magnitude mean
 - **AVG_fBodyAccJerkMag_std** average of FFT acceleration Jerk magnitude standard deviation
 - **AVG_fBodyGyroMag_mean** average of FFT gyroscope magnitude mean
 - **AVG_fBodyGyroMag_std** average of FFT gyroscope magnitude standard deviation
 - **AVG_fBodyGyroJerkMag_mean** average of FFT gyroscope Jerk magnitude mean
 - **AVG_fBodyGyroJerkMag_std** average of FFT gyroscope Jerk magnitude standard deviation



