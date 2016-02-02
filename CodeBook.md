# Getting and Cleaning Data

## Course Project Code Book

### Variable and observation transformation and dataset merger

The dataset provided herein is derived from a [wearable computing dataset][wcd] containing a variety of different measurements and summary measures of accelerometer data from a Samsung Galaxy S smartphone.  For the details of the original experiment, variable meanings, and variable names please refer to the `README.txt`, `features_info.txt`, and `features.txt` files (respectively) in the original dataset.

[wcd]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The train and test data from the original dataset were merged to create a single dataset.  During that process,

- the subject number was placed in the `subject` variable;
- the activity number was converted to the name of the activity, treated as a factor, and placed in the `activity` variable;
- and the 66 measurement variables were renamed by transforming the existing variable names such that they conformed to the `[Summary statistic].[Axis].[Domain].[Measure Name]` pattern.

As an example, the variable containing the mean of the X-axis time-domain data produced by the body on the accelerometer was renamed from `tBodyAcc-mean()-X` to `mean.X.freq.BodyAcc`.

The data was then grouped by subject and activity, and the mean of each summary statistic on each measurement was taken.  To continue the example, the mean of all `mean.X.freq.BodyAcc` observations for subject `1` performing the activity `WALKING` was calculated and placed in the variable `meanof.mean.X.freq.BodyAcc` for the observation of subject `1` performing the activity `WALKING`.  The addition of the prefix `meanof.` indicates that the summary statistics used to summarize each measurement in the original dataset were again summarized.  Thus, all the instances of a variable for each combination of `subject` and `activity` would be summarized and placed in a variable named using the `meanof.[Summary statistic].[Axis].[Domain].[Measure Name]` pattern.

### Variable names, types, and descriptions.

Note that the first two variables (`subject` and `activity`) are categorical, while the rest of the variables are continuous.

| Variable Name                        | Summary Statistic  | Axis | Domain    | Component        | Description                              |
| -------------                        | -----------------  | ---- | ------    | ---------        | -----------                              |
| subject                              | N/A                | N/A  | N/A       | N/A              | Unique ID of the subject                 |
| activity                             | N/A                | N/A  | N/A       | N/A              | Activity measured                        |
| meanof.mean.X.time.BodyAcc           | Mean               | X    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.Y.time.BodyAcc           | Mean               | Y    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.Z.time.BodyAcc           | Mean               | Z    | Time      | Body             | Accelerometer readings                   |
| meanof.std.X.time.BodyAcc            | Standard deviation | X    | Time      | Body             | Accelerometer readings                   |
| meanof.std.Y.time.BodyAcc            | Standard deviation | Y    | Time      | Body             | Accelerometer readings                   |
| meanof.std.Z.time.BodyAcc            | Standard deviation | Z    | Time      | Body             | Accelerometer readings                   |
| meanof.mean.X.time.GravityAcc        | Mean               | X    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.Y.time.GravityAcc        | Mean               | Y    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.Z.time.GravityAcc        | Mean               | Z    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.X.time.GravityAcc         | Standard deviation | X    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.Y.time.GravityAcc         | Standard deviation | Y    | Time      | Gravity          | Accelerometer readings                   |
| meanof.std.Z.time.GravityAcc         | Standard deviation | Z    | Time      | Gravity          | Accelerometer readings                   |
| meanof.mean.X.time.BodyAccJerk       | Mean               | X    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.Y.time.BodyAccJerk       | Mean               | Y    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.Z.time.BodyAccJerk       | Mean               | Z    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.X.time.BodyAccJerk        | Standard deviation | X    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.Y.time.BodyAccJerk        | Standard deviation | Y    | Time      | Body             | Accelerometer jerk readings              |
| meanof.std.Z.time.BodyAccJerk        | Standard deviation | Z    | Time      | Body             | Accelerometer jerk readings              |
| meanof.mean.X.time.BodyGyro          | Mean               | X    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.Y.time.BodyGyro          | Mean               | Y    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.Z.time.BodyGyro          | Mean               | Z    | Time      | Body             | Gyroscope readings                       |
| meanof.std.X.time.BodyGyro           | Standard deviation | X    | Time      | Body             | Gyroscope readings                       |
| meanof.std.Y.time.BodyGyro           | Standard deviation | Y    | Time      | Body             | Gyroscope readings                       |
| meanof.std.Z.time.BodyGyro           | Standard deviation | Z    | Time      | Body             | Gyroscope readings                       |
| meanof.mean.X.time.BodyGyroJerk      | Mean               | X    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.Y.time.BodyGyroJerk      | Mean               | Y    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.Z.time.BodyGyroJerk      | Mean               | Z    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.X.time.BodyGyroJerk       | Standard deviation | X    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.Y.time.BodyGyroJerk       | Standard deviation | Y    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.std.Z.time.BodyGyroJerk       | Standard deviation | Z    | Time      | Body             | Gyroscope jerk readings                  |
| meanof.mean.time.BodyAccMag          | Mean               | N/A  | Time      | Body             | Magnitude of accelerometer readings      |
| meanof.std.time.BodyAccMag           | Standard deviation | N/A  | Time      | Body             | Magnitude of accelerometer readings      |
| meanof.mean.time.GravityAccMag       | Mean               | N/A  | Time      | Gravity          | Magnitude of accelerometer readings      |
| meanof.std.time.GravityAccMag        | Standard deviation | N/A  | Time      | Gravity          | Magnitude of accelerometer readings      |
| meanof.mean.time.BodyAccJerkMag      | Mean               | N/A  | Time      | Body             | Magnitude of accelerometer jerk readings |
| meanof.std.time.BodyAccJerkMag       | Standard deviation | N/A  | Time      | Body             | Magnitude of accelerometer jerk readings |
| meanof.mean.time.BodyGyroMag         | Mean               | N/A  | Time      | Body             | Magnitude of gyroscope readings          |
| meanof.std.time.BodyGyroMag          | Standard deviation | N/A  | Time      | Body             | Magnitude of gyroscope readings          |
| meanof.mean.time.BodyGyroJerkMag     | Mean               | N/A  | Time      | Body             | Magnitude of gyroscope jerk readings     |
| meanof.std.time.BodyGyroJerkMag      | Standard deviation | N/A  | Time      | Body             | Magnitude of gyroscope jerk readings     |
| meanof.mean.X.freq.BodyAcc           | Mean               | X    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.Y.freq.BodyAcc           | Mean               | Y    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.Z.freq.BodyAcc           | Mean               | Z    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.X.freq.BodyAcc            | Standard deviation | X    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.Y.freq.BodyAcc            | Standard deviation | Y    | Frequency | Body             | Accelerometer readings                   |
| meanof.std.Z.freq.BodyAcc            | Standard deviation | Z    | Frequency | Body             | Accelerometer readings                   |
| meanof.mean.X.freq.BodyAccJerk       | Mean               | X    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.Y.freq.BodyAccJerk       | Mean               | Y    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.Z.freq.BodyAccJerk       | Mean               | Z    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.X.freq.BodyAccJerk        | Standard deviation | X    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.Y.freq.BodyAccJerk        | Standard deviation | Y    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.std.Z.freq.BodyAccJerk        | Standard deviation | Z    | Frequency | Body             | Accelerometer jerk readings              |
| meanof.mean.X.freq.BodyGyro          | Mean               | X    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.Y.freq.BodyGyro          | Mean               | Y    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.Z.freq.BodyGyro          | Mean               | Z    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.X.freq.BodyGyro           | Standard deviation | X    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.Y.freq.BodyGyro           | Standard deviation | Y    | Frequency | Body             | Gyroscope readings                       |
| meanof.std.Z.freq.BodyGyro           | Standard deviation | Z    | Frequency | Body             | Gyroscope readings                       |
| meanof.mean.freq.BodyAccMag          | Mean               | N/A  | Frequency | Body             | Magnitude of accelerometer readings      |
| meanof.std.freq.BodyAccMag           | Standard deviation | N/A  | Frequency | Body             | Magnitude of accelerometer readings      |
| meanof.mean.freq.BodyBodyAccJerkMag  | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of accelerometer jerk read     |
| meanof.std.freq.BodyBodyAccJerkMag   | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of accelerometer jerk read     |
| meanof.mean.freq.BodyBodyGyroMag     | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope readings          |
| meanof.std.freq.BodyBodyGyroMag      | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope readings          |
| meanof.mean.freq.BodyBodyGyroJerkMag | Mean               | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope jerk readings     |
| meanof.std.freq.BodyBodyGyroJerkMag  | Standard deviation | N/A  | Frequency | Body<sup>2</sup> | Magnitude of gyroscope jerk readings     |
