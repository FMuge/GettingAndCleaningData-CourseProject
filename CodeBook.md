Getting and Cleaning Data - Course Project
==========================================

CodeBook
========

1- Merging the training and the test data to create one data set:
-----------------------------------------------------------------

File names to work on this project are as follows:

1.  `activity_labels.txt` (column names are set as `activity`, `activity_name`)
2.  `features.txt`
3.  `X_train.txt` (column names are obtained from second column of `features.txt` )
4.  `y_train.txt` (column name is set as `activity`)
5.  `subject_train.txt` (column name is set as `subject`)
6.  `X_test.txt` (column names are obtained from second column of `features.txt` )
7.  `y_test.txt` (column name is set as `activity`)
8.  `subject_test.txt` (column name is set as `subject`)

Data is merged as follows:

        (X_train + X_test),(y_train + y_test), (subject_train + subject_test) 

    * "+" shows row binding  
    * paranthesis shows column binding  

2- Extracting only the measurements on the mean and standard deviation for each measurement:
--------------------------------------------------------------------------------------------

The list of variable names containing "mean" and "std" is as follows:

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tGravityAcc-mean()-X
8 tGravityAcc-mean()-Y
9 tGravityAcc-mean()-Z
10 tGravityAcc-std()-X
11 tGravityAcc-std()-Y
12 tGravityAcc-std()-Z
13 tBodyAccJerk-mean()-X
14 tBodyAccJerk-mean()-Y
15 tBodyAccJerk-mean()-Z
16 tBodyAccJerk-std()-X
17 tBodyAccJerk-std()-Y
18 tBodyAccJerk-std()-Z
19 tBodyGyro-mean()-X
20 tBodyGyro-mean()-Y
21 tBodyGyro-mean()-Z
22 tBodyGyro-std()-X
23 tBodyGyro-std()-Y
24 tBodyGyro-std()-Z
25 tBodyGyroJerk-mean()-X
26 tBodyGyroJerk-mean()-Y
27 tBodyGyroJerk-mean()-Z
28 tBodyGyroJerk-std()-X
29 tBodyGyroJerk-std()-Y
30 tBodyGyroJerk-std()-Z
31 tBodyAccMag-mean()
32 tBodyAccMag-std()
33 tGravityAccMag-mean()
34 tGravityAccMag-std()
35 tBodyAccJerkMag-mean()
36 tBodyAccJerkMag-std()
37 tBodyGyroMag-mean()
38 tBodyGyroMag-std()
39 tBodyGyroJerkMag-mean()
40 tBodyGyroJerkMag-std()
41 fBodyAcc-mean()-X
42 fBodyAcc-mean()-Y
43 fBodyAcc-mean()-Z
44 fBodyAcc-std()-X
45 fBodyAcc-std()-Y
46 fBodyAcc-std()-Z
47 fBodyAccJerk-mean()-X
48 fBodyAccJerk-mean()-Y
49 fBodyAccJerk-mean()-Z
50 fBodyAccJerk-std()-X
51 fBodyAccJerk-std()-Y
52 fBodyAccJerk-std()-Z
53 fBodyGyro-mean()-X
54 fBodyGyro-mean()-Y
55 fBodyGyro-mean()-Z
56 fBodyGyro-std()-X
57 fBodyGyro-std()-Y
58 fBodyGyro-std()-Z
59 fBodyAccMag-mean()
60 fBodyAccMag-std()
61 fBodyBodyAccJerkMag-mean()
62 fBodyBodyAccJerkMag-std()
63 fBodyBodyGyroMag-mean()
64 fBodyBodyGyroMag-std()
65 fBodyBodyGyroJerkMag-mean()
66 fBodyBodyGyroJerkMag-std()

3- Setting descriptive activity names to name the activities in the data set:
-----------------------------------------------------------------------------

Activity label values are merged with the data:

| `activity` | `activity_name`     |
|------------|---------------------|
| 1          | WALKING             |
| 2          | WALKING\_UPSTAIRS   |
| 3          | WALKING\_DOWNSTAIRS |
| 4          | SITTING             |
| 5          | STANDING            |
| 6          | LAYING              |

4- Labeling the data set with descriptive variable names:
---------------------------------------------------------

t : time
f : frequency
Acc : Accelerometer
Gyro : Gyroscope
Mag : Magnitude
BodyBody: Body

Final variable names of the result table are as follows:

1 | `subject`
2 | `activity`
3 | `activity_name`
4 | timeBodyAccelerometer-mean()-X
5 | timeBodyAccelerometer-mean()-Y
6 | timeBodyAccelerometer-mean()-Z
7 | timeBodyAccelerometer-std()-X
8 | timeBodyAccelerometer-std()-Y
9 | timeBodyAccelerometer-std()-Z
10 | timeGravityAccelerometer-mean()-X
11 | timeGravityAccelerometer-mean()-Y
12 | timeGravityAccelerometer-mean()-Z
13 | timeGravityAccelerometer-std()-X
14 | timeGravityAccelerometer-std()-Y
15 | timeGravityAccelerometer-std()-Z
16 | timeBodyAccelerometerJerk-mean()-X
17 | timeBodyAccelerometerJerk-mean()-Y
18 | timeBodyAccelerometerJerk-mean()-Z
19 | timeBodyAccelerometerJerk-std()-X
20 | timeBodyAccelerometerJerk-std()-Y
21 | timeBodyAccelerometerJerk-std()-Z
22 | timeBodyGyroscope-mean()-X
23 | timeBodyGyroscope-mean()-Y
24 | timeBodyGyroscope-mean()-Z
25 | timeBodyGyroscope-std()-X
26 | timeBodyGyroscope-std()-Y
27 | timeBodyGyroscope-std()-Z
28 | timeBodyGyroscopeJerk-mean()-X
29 | timeBodyGyroscopeJerk-mean()-Y
30 | timeBodyGyroscopeJerk-mean()-Z
31 | timeBodyGyroscopeJerk-std()-X
32 | timeBodyGyroscopeJerk-std()-Y
33 | timeBodyGyroscopeJerk-std()-Z
34 | timeBodyAccelerometerMagnitude-mean()
35 | timeBodyAccelerometerMagnitude-std()
36 | timeGravityAccelerometerMagnitude-mean()
37 | timeGravityAccelerometerMagnitude-std()
38 | timeBodyAccelerometerJerkMagnitude-mean()
39 | timeBodyAccelerometerJerkMagnitude-std()
40 | timeBodyGyroscopeMagnitude-mean()
41 | timeBodyGyroscopeMagnitude-std()
40 | timeBodyGyroscopeJerkMagnitude-mean()
43 | timeBodyGyroscopeJerkMagnitude-std()
44 | frequencyBodyAccelerometer-mean()-X
45 | frequencyBodyAccelerometer-mean()-Y
46 | frequencyBodyAccelerometer-mean()-Z
47 | frequencyBodyAccelerometer-std()-X
48 | frequencyBodyAccelerometer-std()-Y
49 | frequencyBodyAccelerometer-std()-Z
50 | frequencyBodyAccelerometerJerk-mean()-X
51 | frequencyBodyAccelerometerJerk-mean()-Y
52 | frequencyBodyAccelerometerJerk-mean()-Z
53 | frequencyBodyAccelerometerJerk-std()-X
54 | frequencyBodyAccelerometerJerk-std()-Y
55 | frequencyBodyAccelerometerJerk-std()-Z
56 | frequencyBodyGyroscope-mean()-X
57 | frequencyBodyGyroscope-mean()-Y
58 | frequencyBodyGyroscope-mean()-Z
59 | frequencyBodyGyroscope-std()-X
60 | frequencyBodyGyroscope-std()-Y
61 | frequencyBodyGyroscope-std()-Z
62 | frequencyBodyAccelerometerMagnitude-mean()
63 | frequencyBodyAccelerometerMagnitude-std()
64 | frequencyBodyAccelerometerJerkMagnitude-mean()
65 | frequencyBodyAccelerometerJerkMagnitude-std()
66 | frequencyBodyGyroscopeMagnitude-mean()
67 | frequencyBodyGyroscopeMagnitude-std()
68 | frequencyBodyGyroscopeJerkMagnitude-mean()
69 | frequencyBodyGyroscopeJerkMagnitude-std()

5- Tidy data set with the average of each variable for each activity and each subject:
--------------------------------------------------------------------------------------

Calculation of mean values grouping by "subject" and "activity" is stored in "tidydata.txt" file.
