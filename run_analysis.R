# Clean the environment.
rm(list=ls())

# Decide whether to keep the data directory.
KEEP = F

# Load any required libraries.
library(dplyr)

# Set the data directory.
ddir = 'data'

# Create the data directory (this will create it if it does not exist, and will
# ignore any errors if it already exists).
dir.create(ddir, showWarnings = FALSE, recursive = TRUE)

# Set the URL and local path of the data file.
fileURL = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
zfile = 'UCI_HAR_Dataset.zip'
zpath = file.path(ddir, zfile)
unzpath = file.path(ddir, 'UCI HAR Dataset')

# If the data file is not already on disk, then download the data file.
if (!file.exists(zpath))
  download.file(fileURL, destfile = zpath)
# If the unzip path is not already created, then unzip the data file.
if (!dir.exists(unzpath))
  unzip(zpath, exdir = ddir)

# Read in the activity labels (factor names in activity column).
activity_labels = read.table(file.path(unzpath, 'activity_labels.txt'),
                             col.names = c('activity_number', 'activity'))

# Read in the feature labels (column names in X).
feature_labels = read.table(file.path(unzpath, 'features.txt'),
                            col.names = c('feature_column', 'feature_name'))

merge_sam = function(long_name){
  # Merge subject, activity, and measurements into a single data frame.

  # Read in the subjects.
  subject = read.table(file.path(unzpath, long_name,
                                 paste('subject_', long_name, '.txt', sep='')),
                           col.names = 'subject')

  # Read in the activity labels for the measurements and subjects.
  y = read.table(file.path(unzpath, long_name,
                           paste('y_', long_name, '.txt', sep='')),
                     col.names = 'activity')

  # Convert activity numbers to the names (and treat as factors).
  # Found: http://stackoverflow.com/a/22476326
  y$activity = activity_labels[match(y$activity, activity_labels[,1]),2]

  # Read in the measurements using feature names as the column names.
  X = read.table(file.path(unzpath, long_name,
                           paste('X_', long_name, '.txt', sep='')),
                     col.names = feature_labels$feature_name)

  X = X[,grep('-(std|mean)\\(\\)', feature_labels$feature_name)]

  # Create single data frame.
  cbind(subject, y, X)
}

# Merge training and testing to one dataset.
all = rbind(merge_sam('train'), merge_sam('test'))

columns = colnames(all)
columns = sub('^([tf])', '\\1.', columns)
columns = sub('^([tf])\\.(.+)...([XYZ])$', '\\3.\\1.\\2', columns)
columns = sub('^([XYZ]\\.[tf])\\.(.+)\\.([^\\.]+)$', '\\3.\\1.\\2', columns)
columns = sub('^([tf])\\.(.+)\\.([^\\.]+)\\.\\.$', '\\3.\\1.\\2', columns)
columns = sub('\\.+$', '', columns)
columns = sub('\\.t\\.', '.time.', columns)
columns = sub('\\.f\\.', '.freq.', columns)
colnames(all) = columns

tidy = summarize_each(group_by(all, subject, activity), funs(mean))
colnames(tidy) = sub('^(me|st)', 'meanof.\\1', colnames(tidy))

write.table(tidy, 'tidy.csv', sep=',')

if (!KEEP)
  unlink(ddir, recursive = TRUE)
