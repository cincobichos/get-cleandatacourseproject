The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

From these only the variables referring to means and standard deviations were used. Since the assignment did not specified wether to use ALL means or anly the "-mean () - " variables, I opted for using all means.
The script extracts these variables from the data and removes all uppercases, commas, brackets and minus signals.
Therefore, the 86 variables below correspond to the mean and standard deviation of the signals (n=70); plus the meanfreq, which is the weighted average of the frequency components to obtain a mean frequency (n=13); and measures of angle gravity mean for each axis  (X,Y,Z) (n=3).

1,tbodyaccmeanx
2,tbodyaccmeany
3,tbodyaccmeanz
4,tgravityaccmeanx
5,tgravityaccmeany
6,tgravityaccmeanz
7,tbodyaccjerkmeanx
8,tbodyaccjerkmeany
9,tbodyaccjerkmeanz
10,tbodygyromeanx
11,tbodygyromeany
12,tbodygyromeanz
13,tbodygyrojerkmeanx
14,tbodygyrojerkmeany
15,tbodygyrojerkmeanz
16,tbodyaccmagmean
17,tgravityaccmagmean
18,tbodyaccjerkmagmean
19,tbodygyromagmean
20,tbodygyrojerkmagmean
21,fbodyaccmeanx
22,fbodyaccmeany
23,fbodyaccmeanz
24,fbodyaccmeanfreqx
25,fbodyaccmeanfreqy
26,fbodyaccmeanfreqz
27,fbodyaccjerkmeanx
28,fbodyaccjerkmeany
29,fbodyaccjerkmeanz
30,fbodyaccjerkmeanfreqx
31,fbodyaccjerkmeanfreqy
32,fbodyaccjerkmeanfreqz
33,fbodygyromeanx
34,fbodygyromeany
35,fbodygyromeanz
36,fbodygyromeanfreqx
37,fbodygyromeanfreqy
38,fbodygyromeanfreqz
39,fbodyaccmagmean
40,fbodyaccmagmeanfreq
41,fbodybodyaccjerkmagmean
42,fbodybodyaccjerkmagmeanfreq
43,fbodybodygyromagmean
44,fbodybodygyromagmeanfreq
45,fbodybodygyrojerkmagmean
46,fbodybodygyrojerkmagmeanfreq
47,angletbodyaccmeangravity
48,angletbodyaccjerkmeangravitymean
49,angletbodygyromeangravitymean
50,angletbodygyrojerkmeangravitymean
51,anglexgravitymean
52,angleygravitymean
53,anglezgravitymean
54,tbodyaccstdx
55,tbodyaccstdy
56,tbodyaccstdz
57,tgravityaccstdx
58,tgravityaccstdy
59,tgravityaccstdz
60,tbodyaccjerkstdx
61,tbodyaccjerkstdy
62,tbodyaccjerkstdz
63,tbodygyrostdx
64,tbodygyrostdy
65,tbodygyrostdz
66,tbodygyrojerkstdx
67,tbodygyrojerkstdy
68,tbodygyrojerkstdz
69,tbodyaccmagstd
70,tgravityaccmagstd
71,tbodyaccjerkmagstd
72,tbodygyromagstd
73,tbodygyrojerkmagstd
74,fbodyaccstdx
75,fbodyaccstdy
76,fbodyaccstdz
77,fbodyaccjerkstdx
78,fbodyaccjerkstdy
79,fbodyaccjerkstdz
80,fbodygyrostdx
81,fbodygyrostdy
82,fbodygyrostdz
83,fbodyaccmagstd
84,fbodybodyaccjerkmagstd
85,fbodybodygyromagstd
86,fbodybodygyrojerkmagstd
