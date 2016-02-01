# Getting and Cleaning Data

## Course Project Code Book

### Description of variable and observation transformation and dataset merger.

The dataset provided herein is derived from a [wearable computing dataset][wcd] containing a variety of different measurements and summary measures of accelerometer data from a Samsung Galaxy S smartphone.  For the details of the original experiment, variable meanings, and variable names please refer to the `README.txt`, `features_info.txt`, and `features.txt` files (respectively) in the original dataset.

[wcd]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The train and test data from the original dataset were merged to create a single dataset.  During that process,

- the subject number was placed in the `subject` variable;
- the activity number was converted to the name of the activity, treated as a factor, and placed in the `activity` variable;
- and the 79 measurement variables were renamed by transforming the existing variable names such that they conformed to the `[Summary statistic].[Dimension].[Domain].[Measure Name]` pattern.

As an example, the variable containing the mean of the X-axis time-domain data produced by the body on the accelerometer was renamed from `tBodyAcc-mean()-X` to `mean.X.freq.BodyAcc`.

The data was then grouped by subject and activity, and the mean of each summary statistic on each measurement was taken.  For example, the mean of all `mean.X.freq.BodyAccMag` observations for subject `1` performing the activity `WALKING` was calculated.  The resultant variables are prefixed with `meanof.` to indicate that the summary statistics used to summarize each measurement in the original dataset were again summarized.

Thus, the variable `mean.X.freq.BodyAccMag` would be renamed `meanof.mean.X.freq.BodyAccMag`.

### Variable names, types, and descriptions.

| Variable Name                 | Type        | Description |
| -------------                 | ----        | ----------- |
| subject                       | Categorical |             |
| activity                      | Categorical |             |
| mean.X.time.BodyAcc           | Continuous  |             |
| mean.Y.time.BodyAcc           | Continuous  |             |
| mean.Z.time.BodyAcc           | Continuous  |             |
| std.X.time.BodyAcc            | Continuous  |             |
| std.Y.time.BodyAcc            | Continuous  |             |
| std.Z.time.BodyAcc            | Continuous  |             |
| mean.X.time.GravityAcc        | Continuous  |             |
| mean.Y.time.GravityAcc        | Continuous  |             |
| mean.Z.time.GravityAcc        | Continuous  |             |
| std.X.time.GravityAcc         | Continuous  |             |
| std.Y.time.GravityAcc         | Continuous  |             |
| std.Z.time.GravityAcc         | Continuous  |             |
| mean.X.time.BodyAccJerk       | Continuous  |             |
| mean.Y.time.BodyAccJerk       | Continuous  |             |
| mean.Z.time.BodyAccJerk       | Continuous  |             |
| std.X.time.BodyAccJerk        | Continuous  |             |
| std.Y.time.BodyAccJerk        | Continuous  |             |
| std.Z.time.BodyAccJerk        | Continuous  |             |
| mean.X.time.BodyGyro          | Continuous  |             |
| mean.Y.time.BodyGyro          | Continuous  |             |
| mean.Z.time.BodyGyro          | Continuous  |             |
| std.X.time.BodyGyro           | Continuous  |             |
| std.Y.time.BodyGyro           | Continuous  |             |
| std.Z.time.BodyGyro           | Continuous  |             |
| mean.X.time.BodyGyroJerk      | Continuous  |             |
| mean.Y.time.BodyGyroJerk      | Continuous  |             |
| mean.Z.time.BodyGyroJerk      | Continuous  |             |
| std.X.time.BodyGyroJerk       | Continuous  |             |
| std.Y.time.BodyGyroJerk       | Continuous  |             |
| std.Z.time.BodyGyroJerk       | Continuous  |             |
| mean.time.BodyAccMag          | Continuous  |             |
| std.time.BodyAccMag           | Continuous  |             |
| mean.time.GravityAccMag       | Continuous  |             |
| std.time.GravityAccMag        | Continuous  |             |
| mean.time.BodyAccJerkMag      | Continuous  |             |
| std.time.BodyAccJerkMag       | Continuous  |             |
| mean.time.BodyGyroMag         | Continuous  |             |
| std.time.BodyGyroMag          | Continuous  |             |
| mean.time.BodyGyroJerkMag     | Continuous  |             |
| std.time.BodyGyroJerkMag      | Continuous  |             |
| mean.X.freq.BodyAcc           | Continuous  |             |
| mean.Y.freq.BodyAcc           | Continuous  |             |
| mean.Z.freq.BodyAcc           | Continuous  |             |
| std.X.freq.BodyAcc            | Continuous  |             |
| std.Y.freq.BodyAcc            | Continuous  |             |
| std.Z.freq.BodyAcc            | Continuous  |             |
| mean.X.freq.BodyAccJerk       | Continuous  |             |
| mean.Y.freq.BodyAccJerk       | Continuous  |             |
| mean.Z.freq.BodyAccJerk       | Continuous  |             |
| std.X.freq.BodyAccJerk        | Continuous  |             |
| std.Y.freq.BodyAccJerk        | Continuous  |             |
| std.Z.freq.BodyAccJerk        | Continuous  |             |
| mean.X.freq.BodyGyro          | Continuous  |             |
| mean.Y.freq.BodyGyro          | Continuous  |             |
| mean.Z.freq.BodyGyro          | Continuous  |             |
| std.X.freq.BodyGyro           | Continuous  |             |
| std.Y.freq.BodyGyro           | Continuous  |             |
| std.Z.freq.BodyGyro           | Continuous  |             |
| mean.freq.BodyAccMag          | Continuous  |             |
| std.freq.BodyAccMag           | Continuous  |             |
| mean.freq.BodyBodyAccJerkMag  | Continuous  |             |
| std.freq.BodyBodyAccJerkMag   | Continuous  |             |
| mean.freq.BodyBodyGyroMag     | Continuous  |             |
| std.freq.BodyBodyGyroMag      | Continuous  |             |
| mean.freq.BodyBodyGyroJerkMag | Continuous  |             |
| std.freq.BodyBodyGyroJerkMag  | Continuous  |             |
