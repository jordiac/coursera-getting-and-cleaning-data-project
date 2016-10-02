# Code Book

This code book summarizes the main information about the variables of the script:  `run_analysis.R` , provided in this repository.


## Main variables

###subject
	Volunteers identification number
		1....30  .Unique identifier assigned to each person
	
	Total ====> 10299

	
###Activities
	Activities performed by volunteers
		1 WALKING : subject was walking during the test
		2 WALKING_UPSTAIRS : subject was walking up a staircase during the test
		3 WALKING_DOWNSTAIRS : subject was walking down a staircase during the test
		4 SITTING : subject was sitting during the test
		5 STANDING : subject was standing during the test
		6 LAYING : subject was laying down during the test
	
	Total ====> 10299

###Measurement variables

		tBodyAccMeanX		
		tBodyAccMeanY		
		tBodyAccMeanZ		
		tBodyAccStdX		
		tBodyAccStdY		
		tBodyAccStdZ		
		tGravityAccMeanX
		tGravityAccMeanY
		tGravityAccMeanZ
		tGravityAccStdX
		tGravityAccStdY
		tGravityAccStdZ
		tBodyAccJerkMeanX
		tBodyAccJerkMeanY
		tBodyAccJerkMeanZ
		tBodyAccJerkStdX
		tBodyAccJerkStdY
		tBodyAccJerkStdZ
		tBodyGyroMeanX
		tBodyGyroMeanY
		tBodyGyroMeanZ
		tBodyGyroStdX
		tBodyGyroStdY
		tBodyGyroStdZ
		tBodyGyroJerkMeanX
		tBodyGyroJerkMeanY
		tBodyGyroJerkMeanZ
		tBodyGyroJerkStdX
		tBodyGyroJerkStdY
		tBodyGyroJerkStdZ
		tBodyAccMagMean
		tBodyAccMagStd
		tGravityAccMagMean
		tGravityAccMagStd
		tBodyAccJerkMagMean
		tBodyAccJerkMagStd
		tBodyGyroMagMean
		tBodyGyroMagStd
		tBodyGyroJerkMagMean
		tBodyGyroJerkMagStd
		fBodyAccMeanX
		fBodyAccMeanY
		fBodyAccMeanZ
		fBodyAccStdX
		fBodyAccStdY
		fBodyAccStdZ
		fBodyAccMeanFreqX
		fBodyAccMeanFreqY
		fBodyAccMeanFreqZ
		fBodyAccJerkMeanX
		fBodyAccJerkMeanY
		fBodyAccJerkMeanZ
		fBodyAccJerkStdX
		fBodyAccJerkStdY
		fBodyAccJerkStdZ
		fBodyAccJerkMeanFreqX
		fBodyAccJerkMeanFreqY
		fBodyAccJerkMeanFreqZ
		fBodyGyroMeanX
		fBodyGyroMeanY
		fBodyGyroMeanZ
		fBodyGyroStdX
		fBodyGyroStdY
		fBodyGyroStdZ
		fBodyGyroMeanFreqX
		fBodyGyroMeanFreqY
		fBodyGyroMeanFreqZ
		fBodyAccMagMean
		fBodyAccMagStd
		fBodyAccMagMeanFreq
		fBodyBodyAccJerkMagMean
		fBodyBodyAccJerkMagStd
		fBodyBodyAccJerkMagMeanFreq
		fBodyBodyGyroMagMean
		fBodyBodyGyroMagStd
		fBodyBodyGyroMagMeanFreq
		fBodyBodyGyroJerkMagMean
		fBodyBodyGyroJerkMagStd
		fBodyBodyGyroJerkMagMeanFreq
		
	Total ====> (10299 x 79)
	
		Notes: 
		-The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
		-'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
		
		The set of variables that were estimated from these signals are: 
			-mean(): Mean value
			-std(): Standard deviation
			-meanFreq(): Weighted average of the frequency components to obtain a mean frequency
		
		- Features are normalized and bounded within [-1,1].
		
		
## Original Set

	The original data set is obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
	Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

	[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

	This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

	Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
