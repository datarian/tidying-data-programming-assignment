activity_sensor_mean_values.csv 
=================

This dataset originates from a study where 30 individuals wore Samsung Galaxy III smartphones and recorded sensor data while performing certain activities.
(Source: UCI machine learning)[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#]

The file holds a subset of the orignal data, only representing the mean values for the individual sensor variables.

The variables in the dataset are:


|Variable name| Data type |description
-----------------------|---------------------------|------------------------
subject| Factor, levels 1 ... 30| The study subject's ID
activity| Factor, levels "walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying"|The 6 activities recorded
bodyacc mean() x|Numerical | Mean value for acceleration in x direction
bodyacc mean() y|Numerical | Mean value for acceleration in y direction
bodyacc mean() z|Numerical | Mean value for acceleration in z direction
 gravityacc mean() x|Numerical | Mean value for
 gravityacc mean() y|Numerical | Mean value for
 gravityacc mean() z| Numerical | Mean value for
 bodyaccjerk mean() x| Numerical | Mean value for
 bodyaccjerk mean() y| Numerical | Mean value for
 bodyaccjerk mean() z| Numerical | Mean value for
 bodygyro mean() x| Numerical | Mean value for
 bodygyro mean() y| Numerical | Mean value for
 bodygyro mean() z| Numerical | Mean value for
 bodygyrojerk mean() x| Numerical | Mean value for
 bodygyrojerk mean() y| Numerical | Mean value for
 bodygyrojerk mean() z| Numerical | Mean value for
 bodyaccmag mean()| Numerical | Mean value for
 gravityaccmag mean()| Numerical | Mean value for
 bodyaccjerkmag mean()| Numerical | Mean value for
 bodygyromag mean()| Numerical | Mean value for
 bodygyrojerkmag mean()| Numerical | Mean value for
 fbodyacc mean() x| Numerical | Mean value for
 fbodyacc mean() y| Numerical | Mean value for
 fbodyacc mean() z| Numerical | Mean value for
 fbodyaccjerk mean() x| Numerical | Mean value for
 fbodyaccjerk mean() y| Numerical | Mean value for
 fbodyaccjerk mean() z| Numerical | Mean value for
 fbodygyro mean() x| Numerical | Mean value for
 fbodygyro mean() y| Numerical | Mean value for
 fbodygyro mean() z| Numerical | Mean value for
 fbodyaccmag mean()| Numerical | Mean value for
 fbodybodyaccjerkmag mean()| Numerical | Mean value for
 fbodybodygyromag mean()| Numerical | Mean value for
 fbodybodygyrojerkmag mean()| Numerical | Mean value for


There were 30 indivdual subjects in the study

The tidied dataset contains the mean values of the following variables:

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation