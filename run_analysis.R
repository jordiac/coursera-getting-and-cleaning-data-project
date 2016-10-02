#Load libraries
library(reshape2)


#check if zip file is in wd

main_file <- "getdata_projectfiles_UCI HAR Dataset.zip"
unzip_file <- "UCI HAR Dataset"

if (!file.exists(main_file)){
        dir <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(dir, destfile = main_file)
}

#Extract data from zip file in the wd if it doesnt exist
if (!file.exists(unzip_file)){
        unzip(zipfile=main_file)
}



#Read data sets
xtest_dir <- "./UCI HAR Dataset/test/X_test.txt"
ytest_dir <- "./UCI HAR Dataset/test/y_test.txt"

xtrain_dir <- "./UCI HAR Dataset/train/X_train.txt"
ytrain_dir <- "./UCI HAR Dataset/train/y_train.txt"

subtest_dir <- "./UCI HAR Dataset/test/subject_test.txt"
subtrain_dir <- "./UCI HAR Dataset/train/subject_train.txt"


xtest <- read.table(file = xtest_dir, header = FALSE)
ytest <- read.table(file = ytest_dir, header = FALSE)

xtrain <- read.table(file = xtrain_dir, header = FALSE)
ytrain <- read.table(file = ytrain_dir, header = FALSE)

subtest <- read.table(file = subtest_dir, header = FALSE)
subtrain <- read.table(file = subtrain_dir, header = FALSE)

#Merge training and test data sets

subtrain <- cbind(subtrain, ytrain, xtrain)
subtest <- cbind(subtest, ytest, xtest)

subQ1 <- rbind(subtrain, subtest)



#Appropriately labels the data set with descriptive variable names. 
feat_dir <- "./UCI HAR Dataset/features.txt"
feature <- read.table(file = feat_dir, header = FALSE)

vecname <- c("ID_subject", "Feature_label", as.character(feature[,2]))
colnames(subQ1) <- vecname



#Uses descriptive activity names to name activities in the data set
actLab_dir<- "./UCI HAR Dataset/activity_labels.txt"
actLab <- read.table(file = actLab_dir, header = FALSE)

subQ2 <- subQ1
subQ2$Feature_label<- actLab[subQ2$Feature_label,2]



#Extracts only the measurements on the mean and standard deviation for each measurement. 
#We select only columns containing mean and std words (and ID and Feature_label to keep 2 first cols)
subQ4 <- subQ2[,grep("ID|Feature_label|mean|std", names(subQ2))]




#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#subseting measurements mean and standard deviation 
subQ5 <- subQ1[,grep("ID|Feature_label|mean|std", names(subQ1))]

#Sort all variables depending on subjects and activities
subQ6 <- melt(subQ5, id=c("ID_subject", "Feature_label"))

#define the mean values of each variable for each activity and each subject 
SubMean <- dcast(subQ6, ID_subject + Feature_label ~ variable, mean)

#change columns names
colnames(SubMean)[1:2] <- c("subject", "Activities")

#reassign activity name to each value (1 to 6)
SubMean$Activities<- actLab[SubMean$Activities,2]

#Write a result file called "tidy_data"
write.table(SubMean, "tidy_data.txt", row.names = FALSE, quote = FALSE)