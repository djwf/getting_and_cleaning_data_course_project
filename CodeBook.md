# Getting and Cleaning Data

## Course Project Code Book

### Description of variable and observation transformation and dataset merger.

The dataset provided herein is derived from a [wearable computing dataset][wcd] containing a variety of different measurements and summary measures of accelerometer data from a Samsung Galaxy S smartphone.  For the details of the original experiment, variable meanings, and variable names please refer to the `README.txt`, `features_info.txt`, and `features.txt` files (respectively) in the original dataset.

[wcd]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The train and test data from the original dataset were merged to create a single dataset.  During that process,

- the subject number was placed in the `subject` variable;
- the activity number was converted to the name of the activity, treated as a factor, and placed in the `activity` variable;
- and the 66 measurement variables were renamed by transforming the existing variable names such that they conformed to the `[Summary statistic].[Axis].[Domain].[Measure Name]` pattern.

As an example, the variable containing the mean of the X-axis time-domain data produced by the body on the accelerometer was renamed from `tBodyAcc-mean()-X` to `mean.X.freq.BodyAcc`.

The data was then grouped by subject and activity, and the mean of each summary statistic on each measurement was taken.  To continue the example, the mean of all `mean.X.freq.BodyAcc` observations for subject `1` performing the activity `WALKING` was calculated and placed in the variable `meanof.mean.X.freq.BodyAcc`.  The addition of the prefix `meanof.` indicates that the summary statistics used to summarize each measurement in the original dataset were again summarized.  Thus, all the instance of a variable for each combination of `subject` and `activity` would be summarized and placed in a variable named using the `meanof.[Summary statistic].[Axis].[Domain].[Measure Name]` pattern.

### Variable names, types, and descriptions.

| Variable Name                        | Type        | Summary Statistic  | Axis | Domain    | Component        | Description                              |
| -------------                        | ----        | -----------------  | ---- | ------    | ---------        | -----------                              |
| subject                              | Categorical | N/A                | N/A  | N/A       | N/A              | Unique ID of the subject                 |
| activity                             | Categorical | N/A                | N/A  | N/A       | N/a              | Activity measured                        |
| meanof.mean.X.time.BodyAcc           | Continuous  | Mean               | X    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.Y.time.BodyAcc           | Continuous  | Mean               | Y    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.Z.time.BodyAcc           | Continuous  | Mean               | Z    | Time      | Body             | Accelerometer readings                   |
| meanof.std.X.time.BodyAcc            | Continuous  | Standard deviation | X    | Time      | Body             | Accelerometer readings                   |
| meanof.std.Y.time.BodyAcc            | Continuous  | Standard deviation | Y    | Time      | Body             | Accelerometer readings                   |
| meanof.std.Z.time.BodyAcc            | Continuous  | Standard deviation | Z    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.X.time.GravityAcc        | Continuous  | Mean               | X    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.Y.time.GravityAcc        | Continuous  | Mean               | Y    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.Z.time.GravityAcc        | Continuous  | Mean               | Z    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.X.time.GravityAcc         | Continuous  | Standard deviation | X    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.Y.time.GravityAcc         | Continuous  | Standard deviation | Y    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.Z.time.GravityAcc         | Continuous  | Standard deviation | Z    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.X.time.BodyAccJerk       | Continuous  | Mean               | X    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.Y.time.BodyAccJerk       | Continuous  | Mean               | Y    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.Z.time.BodyAccJerk       | Continuous  | Mean               | Z    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.X.time.BodyAccJerk        | Continuous  | Standard deviation | X    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.Y.time.BodyAccJerk        | Continuous  | Standard deviation | Y    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.Z.time.BodyAccJerk        | Continuous  | Standard deviation | Z    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.X.time.BodyGyro          | Continuous  | Mean               | X    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.Y.time.BodyGyro          | Continuous  | Mean               | Y    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.Z.time.BodyGyro          | Continuous  | Mean               | Z    | Time      | Body             | Gyroscope readings                       |
| meanof.std.X.time.BodyGyro           | Continuous  | Standard deviation | X    | Time      | Body             | Gyroscope readings                       |
| meanof.std.Y.time.BodyGyro           | Continuous  | Standard deviation | Y    | Time      | Body             | Gyroscope readings                       |
| meanof.std.Z.time.BodyGyro           | Continuous  | Standard deviation | Z    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.X.time.BodyGyroJerk      | Continuous  | Mean               | X    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.Y.time.BodyGyroJerk      | Continuous  | Mean               | Y    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.Z.time.BodyGyroJerk      | Continuous  | Mean               | Z    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.X.time.BodyGyroJerk       | Continuous  | Standard deviation | X    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.Y.time.BodyGyroJerk       | Continuous  | Standard deviation | Y    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.Z.time.BodyGyroJerk       | Continuous  | Standard deviation | Z    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.time.BodyAccMag          | Continuous  | Mean               | N/A  | Time      | Body             | Magnitude of accelerometer readings      |
| meanof.std.time.BodyAccMag           | Continuous  | Standard deviation | N/A  | Time      | Body             | Magnitude of accelerometer readings      |
| meanof.mean.time.GravityAccMag       | Continuous  | Mean               | N/A  | Time      | Gravity          | Magnitude of accelerometer readings      |
| meanof.std.time.GravityAccMag        | Continuous  | Standard deviation | N/A  | Time      | Gravity          | Magnitude of accelerometer readings      |
| meanof.mean.time.BodyAccJerkMag      | Continuous  | Mean               | N/A  | Time      | Body             | Magnitude of accelerometer jerk readings |
| meanof.std.time.BodyAccJerkMag       | Continuous  | Standard deviation | N/A  | Time      | Body             | Magnitude of accelerometer jerk readings |
| meanof.mean.time.BodyGyroMag         | Continuous  | Mean               | N/A  | Time      | Body             | Magnitude of gyroscope readings          |
| meanof.std.time.BodyGyroMag          | Continuous  | Standard deviation | N/A  | Time      | Body             | Magnitude of gyroscope readings          |
| meanof.mean.time.BodyGyroJerkMag     | Continuous  | Mean               | N/A  | Time      | Body             | Magnitude of gyroscope jerk readings     |
| meanof.std.time.BodyGyroJerkMag      | Continuous  | Standard deviation | N/A  | Time      | Body             | Magnitude of gyroscope jerk readings     |
| meanof.mean.X.freq.BodyAcc           | Continuous  | Mean               | X    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.Y.freq.BodyAcc           | Continuous  | Mean               | Y    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.Z.freq.BodyAcc           | Continuous  | Mean               | Z    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.X.freq.BodyAcc            | Continuous  | Standard deviation | X    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.Y.freq.BodyAcc            | Continuous  | Standard deviation | Y    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.Z.freq.BodyAcc            | Continuous  | Standard deviation | Z    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.X.freq.BodyAccJerk       | Continuous  | Mean               | X    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.Y.freq.BodyAccJerk       | Continuous  | Mean               | Y    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.Z.freq.BodyAccJerk       | Continuous  | Mean               | Z    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.X.freq.BodyAccJerk        | Continuous  | Standard deviation | X    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.Y.freq.BodyAccJerk        | Continuous  | Standard deviation | Y    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.Z.freq.BodyAccJerk        | Continuous  | Standard deviation | Z    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.X.freq.BodyGyro          | Continuous  | Mean               | X    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.Y.freq.BodyGyro          | Continuous  | Mean               | Y    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.Z.freq.BodyGyro          | Continuous  | Mean               | Z    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.X.freq.BodyGyro           | Continuous  | Standard deviation | X    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.Y.freq.BodyGyro           | Continuous  | Standard deviation | Y    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.Z.freq.BodyGyro           | Continuous  | Standard deviation | Z    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.freq.BodyAccMag          | Continuous  | Mean               | N/A  | Frequency | Body             | Magnitude of accelerometer readings      |
| meanof.std.freq.BodyAccMag           | Continuous  | Standard deviation | N/A  | Frequency | Body             | Magnitude of accelerometer readings      |
| meanof.mean.freq.BodyBodyAccJerkMag  | Continuous  | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of accelerometer jerk read     |
| meanof.std.freq.BodyBodyAccJerkMag   | Continuous  | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of accelerometer jerk read     |
| meanof.mean.freq.BodyBodyGyroMag     | Continuous  | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope readings          |
| meanof.std.freq.BodyBodyGyroMag      | Continuous  | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope readings          |
| meanof.mean.freq.BodyBodyGyroJerkMag | Continuous  | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope jerk readings     |
| meanof.std.freq.BodyBodyGyroJerkMag  | Continuous  | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope jerk readings     |
