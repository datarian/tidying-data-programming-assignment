activity_sensor_mean_values.csv 
=================

This dataset originates from an experiment where 30 individuals wore Samsung Galaxy S II smartphones and recorded sensor data while performing certain activities [1].

The file holds a subset of the orignal data, only showing mean values for the individual sensor variables and mean values for Fourier transformations of the registered variables.

The observations are grouped by activity and subject id.

Each observation in the dataset has the following variables:

*subject*: A numerical id representing one of the 30 subjects in the experiment.

*activity*: One of "walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying", denoting the carried-out activity during measurement

*bodyacc mean() x/y/z*: The estimated acceleration of the subject's body in the respective direction, in [g] m/s^2.

*gravityacc mean() x/y/z*: The total acceleration in the respecitve direction, in [g] m/s^2.

*bodyaccjerk mean() x/y/z*: derivative in time for body acceleration, resulting in [jerk] m/s^3

*bodygyro mean() x/y/z*: Estimated angular velocity of the body, s^-1

*bodygyrojerk mean() x/y/z*: Estimated angular jerk, derivative in time of angular velocity, s^-2

*bodyaccmag/gravityaccmag/bodyaccjerkmag/bodygyromag/bodygyrojerkmag mean()*: Magnitude of the respective variables explained above

*Variables with preceding 'f'*: Fast Fourier Transforms (FFT) of the respective variables already explained above.




[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.