run_analysis <- function () {

    ##load required libraries
    library(dplyr) # for fancy data table manipulations and organization
    
    ##download and unzip the data
    if(!file.exists("./UCI HAR Dataset")) {
        fileURL<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL,"CourseProject")
        dataDir<-unz(description = "Course Project", filename="CourseProject")
            }
    ##read master files
    activity_labels<-read.table( "./UCI HAR Dataset/activity_labels.txt",sep=" ",header=FALSE)
    colnames(activity_labels)<-c("activity","activity_name")
    features <- read.table("./UCI HAR Dataset/features.txt",sep = " ")
    
    ##reading test files
    x_test<-read.table( "./UCI HAR Dataset/test/X_test.txt", header = FALSE )
    y_test <- read.table( "./UCI HAR Dataset/test/y_test.txt", header = FALSE )
    subject_test <- read.table( "./UCI HAR Dataset/test/subject_test.txt",header = FALSE )
    
    ##reading train files
    x_train <-read.table( "./UCI HAR Dataset/train/X_train.txt", header = FALSE )
    y_train <- read.table( "./UCI HAR Dataset/train/y_train.txt", header = FALSE )
    subject_train <- read.table( "./UCI HAR Dataset/train/subject_train.txt", header = FALSE )
    
    ##1- Merging the training and the test sets to create one data set.
    data <- rbind(x_train, x_test)
    activity <- rbind(y_train, y_test)
    subject <- rbind(subject_train, subject_test)
    
    names(subject)<-c("subject")
    names(activity)<- c("activity")
    names(data)<- features$V2
    
    all_data<-cbind(subject,activity)
    all_data<-cbind(all_data,data)
    
    ## 2- Extracting only the measurements on the mean and standard deviation for each measurement. 
    selectedfeatures<-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
    selectednames<-c("subject", "activity",as.character(selectedfeatures))
    subset_data <-subset(all_data,select=selectednames)
    
    ## 3- Setting descriptive activity names to name the activities in the data set
    merged_data<-merge(subset_data,activity_labels,by.x="activity",by.y="activity")
    merged_data
    
    ## 4- Labeling the data set with descriptive variable names
    names(merged_data)<-gsub("^t", "time", names(merged_data))
    names(merged_data)<-gsub("^f", "frequency", names(merged_data))
    names(merged_data)<-gsub("Acc", "Accelerometer", names(merged_data))
    names(merged_data)<-gsub("Gyro", "Gyroscope", names(merged_data))
    names(merged_data)<-gsub("Mag", "Magnitude", names(merged_data))
    names(merged_data)<-gsub("BodyBody", "Body", names(merged_data))
    
    ## 5- Tidy data set with the average of each variable for each activity and each subject
    rs<-aggregate(. ~subject + activity + activity_name, merged_data, mean, na.rm=TRUE)
    rs<-arrange(rs,subject,activity)
    write.table(rs, file = "./UCI HAR Dataset/tidydata.txt",row.name=FALSE)
 
    ##clean variables
    rm(list = ls(all=TRUE))  
}