# Getting and Cleaning Data Course Project Code Book

The dataset provided herein is derived from a [wearable computing dataset][wcd] containing a variety of different measurements and summary measures of accelerometer data from a Samsung Galaxy S smartphone.

[wcd]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The variables were renamed by transforming the existing variable names to conform to the following pattern.

[Summary statistic].[Dimension].[Domain].[Measure Name]

For example, the mean of the magnitude of the X-axis frequency produced by the Body Accelerometer would be in the `mean.X.freq.BodyAccMag` variable.

Once merged and with renamed variables, the data was grouped by subject and activity, and the mean of each summary statistic on each measurement was taken.  For example, the mean of all `mean.X.freq.BodyAccMag` observations for subject `1` and activity `WALKING` would be taken.  The resultant variables are prefixed with `mean.` to indicate another that the summary statistics were again summarized.
