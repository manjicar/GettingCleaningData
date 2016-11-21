# Read the data sets
xTrain <- read.table("X_train.txt")
yTrain <- read.table("y_train.txt")
subjectTrain <- read.table("subject_train.txt")
xTest <- read.table("X_test.txt")
yTest <- read.table("y_test.txt")
subjectTest <- read.table("subject_test.txt")
features <- read.table("features.txt")
activityLabels <- read.table("activity_labels.txt")

# Combine Train and Test for x, y and subject
xAll <- rbind(xTrain, xTest)
yAll <- rbind(yTrain, yTest)
subjectAll <- rbind(subjectTrain, subjectTest)

#Change variables' names 
colnames(xAll) <- features$V2
colnames(yAll) <- "Activity"
colnames(subjectAll) <- "Subject"

# Change activity values to activity names in yAll
yAll[, 1] <- activityLabels[yAll[, 1], 2]

# Select columns with mean and std in xAll
mean_std <- grep(".*mean.*|.*std.*", features[,2])
xAllMeanStd <- xAll[,mean_std]

# Combine yAll, subjectAll and xAllMeanStd 
Final <- cbind(subjectAll, yAll, xAllMeanStd)

# Create final table
write.table(Final, "final.txt", row.name = FALSE)


