## Getting and Cleaning Data: Course Final Project

## The original data sets

'X_train.txt' is the training data set.

'X_test.txt' is the testing data set.

'y_train' and 'y_test' are the activity numerical labels for the training and testing data sets, respectively.

'features.txt' is a list of all features of the data sets.

'subject_train.txt' and 'subject_test.txt' are the subjects who performed the activities related to the training and testing data sets,
respectively.

'activity_labels.txt' links the activity numerical labels with their activity names.


## The script

'run_analysis.R' performs the following operations to the original data sets:

1. Loading of original data sets into the environment and creation of the variables: 

    'xTrain' and 'xTest': training and testing data frames, respectively.
    
    'yTrain' and 'yTest': activity numerical labels for the training and testing data sets, respectively.
    
    'subjectTrain' and 'subjectTest': subjects who performed the activities -represented by numerical values- for the training
    and testing data sets, respectively.
    
    'features': all the features corresponding to the data frames 'xTrain' and 'xTest'.
    
    'activityLabels': data frame connecting activity numerical lables to activity names. 

2. Combination of train and test data frames, using 'rbind', and creation of the variables:

    'xAll': training and testing data frames combined.
    
    'yAll': activity numerical labels for the training and testing data sets combined.
    
    'subjectAll': subjects who performed the activities for the training and testing data sets combined.

3. Change of variable names and activity labels.

4. Selection of variables containing mean and standard deviation, using 'grep'.

5. Combination of all the processed data into one single data frame named 'Final', using 'cbind'.

6. Creation of a tidy dataset named "final.txt", using 'write.table'.
