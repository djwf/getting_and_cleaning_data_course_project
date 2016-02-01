# Getting and Cleaning Data Course Project Code Book

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

### List of variables and descriptions.

| Variable Name                 | Description |
| -------------                 | ----------- |
| subject                       |             |
| activity                      |             |
| mean.X.time.BodyAcc           |             |
| mean.Y.time.BodyAcc           |             |
| mean.Z.time.BodyAcc           |             |
| std.X.time.BodyAcc            |             |
| std.Y.time.BodyAcc            |             |
| std.Z.time.BodyAcc            |             |
| mean.X.time.GravityAcc        |             |
| mean.Y.time.GravityAcc        |             |
| mean.Z.time.GravityAcc        |             |
| std.X.time.GravityAcc         |             |
| std.Y.time.GravityAcc         |             |
| std.Z.time.GravityAcc         |             |
| mean.X.time.BodyAccJerk       |             |
| mean.Y.time.BodyAccJerk       |             |
| mean.Z.time.BodyAccJerk       |             |
| std.X.time.BodyAccJerk        |             |
| std.Y.time.BodyAccJerk        |             |
| std.Z.time.BodyAccJerk        |             |
| mean.X.time.BodyGyro          |             |
| mean.Y.time.BodyGyro          |             |
| mean.Z.time.BodyGyro          |             |
| std.X.time.BodyGyro           |             |
| std.Y.time.BodyGyro           |             |
| std.Z.time.BodyGyro           |             |
| mean.X.time.BodyGyroJerk      |             |
| mean.Y.time.BodyGyroJerk      |             |
| mean.Z.time.BodyGyroJerk      |             |
| std.X.time.BodyGyroJerk       |             |
| std.Y.time.BodyGyroJerk       |             |
| std.Z.time.BodyGyroJerk       |             |
| mean.time.BodyAccMag          |             |
| std.time.BodyAccMag           |             |
| mean.time.GravityAccMag       |             |
| std.time.GravityAccMag        |             |
| mean.time.BodyAccJerkMag      |             |
| std.time.BodyAccJerkMag       |             |
| mean.time.BodyGyroMag         |             |
| std.time.BodyGyroMag          |             |
| mean.time.BodyGyroJerkMag     |             |
| std.time.BodyGyroJerkMag      |             |
| mean.X.freq.BodyAcc           |             |
| mean.Y.freq.BodyAcc           |             |
| mean.Z.freq.BodyAcc           |             |
| std.X.freq.BodyAcc            |             |
| std.Y.freq.BodyAcc            |             |
| std.Z.freq.BodyAcc            |             |
| mean.X.freq.BodyAccJerk       |             |
| mean.Y.freq.BodyAccJerk       |             |
| mean.Z.freq.BodyAccJerk       |             |
| std.X.freq.BodyAccJerk        |             |
| std.Y.freq.BodyAccJerk        |             |
| std.Z.freq.BodyAccJerk        |             |
| mean.X.freq.BodyGyro          |             |
| mean.Y.freq.BodyGyro          |             |
| mean.Z.freq.BodyGyro          |             |
| std.X.freq.BodyGyro           |             |
| std.Y.freq.BodyGyro           |             |
| std.Z.freq.BodyGyro           |             |
| mean.freq.BodyAccMag          |             |
| std.freq.BodyAccMag           |             |
| mean.freq.BodyBodyAccJerkMag  |             |
| std.freq.BodyBodyAccJerkMag   |             |
| mean.freq.BodyBodyGyroMag     |             |
| std.freq.BodyBodyGyroMag      |             |
| mean.freq.BodyBodyGyroJerkMag |             |
| std.freq.BodyBodyGyroJerkMag  |             |
