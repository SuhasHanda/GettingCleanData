# Explanation of experiment and Variables used for exercise

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data was sourced from UCI website from the link (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#### tBodyAcc-XYZ
#### tGravityAcc-XYZ
#### tBodyAccJerk-XYZ
#### tBodyGyro-XYZ
#### tBodyGyroJerk-XYZ
#### tBodyAccMag
#### tGravityAccMag
#### tBodyAccJerkMag
#### tBodyGyroMag
#### tBodyGyroJerkMag
#### fBodyAcc-XYZ
#### fBodyAccJerk-XYZ
#### fBodyGyro-XYZ
#### fBodyAccMag
#### fBodyAccJerkMag
#### fBodyGyroMag
#### fBodyGyroJerkMag

Additionaly two variables were added to create the tidy data with complete information
subjectflag: indicator of subject who has done the activity (1-30)
activitydesc: description of activity (Levels: LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS) for which the the axial measurement as stated above were done

Out of the set of variables that were estimated from these signals as stated below for this exercise only mean() & Standard Deviation were used: 
## Used for the course project
#### *mean(): Mean value*
#### *std(): Standard deviation*

## Not used for the course project
#### mad(): Median absolute deviation 
#### max(): Largest value in array
#### min(): Smallest value in array
#### sma(): Signal magnitude area
#### energy(): Energy measure. Sum of the squares divided by the number of values. 
#### iqr(): Interquartile range 
#### entropy(): Signal entropy
#### arCoeff(): Autorregresion coefficients with Burg order equal to 4
#### correlation(): correlation coefficient between two signals
#### maxInds(): index of the frequency component with largest magnitude
#### meanFreq(): Weighted average of the frequency components to obtain a mean frequency
#### skewness(): skewness of the frequency domain signal 
#### kurtosis(): kurtosis of the frequency domain signal 
#### bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
#### angle(): Angle between to vectors.


