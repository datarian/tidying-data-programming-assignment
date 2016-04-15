################################################################################
# Analyis script for activity tracker data
#
# Tasks:
# 1. Merge training and test sets into one dataset
# 2. Extract mean and sd for each measurement
# 3. Use descriptive activity names
# 4. label dataset with descriptive variable names
# 5. Create a second, independent and tidy dataset with the average
#    of each variable for each activity and each subject
################################################################################

library(dplyr)



# Load data and tidy up
################################################################################

datadir <- "./data/"
traindatadir <- "./data/train/"
testdatadir <- "./data/test/"

features <- read.table("./data/features.txt", col.names = c("id", "name"))

# clean up feature names, then extract a vector
features <- features %>%
    mutate(name = tolower(name)) %>%
    mutate(name = gsub("\\.", " ", name)) %>%
    mutate(name = gsub("-", " ", name)) %>%
    mutate(name = sub(",", "",name)) %>%
    mutate(name = sub("^t","",name))
features <- features$name

# read activity factors and make them look niche
activities <- read.table("./data/activity_labels.txt",
                              col.names = c("id","name"))
activities <- activities %>%
    mutate(name = tolower(activities$name)) %>%
    mutate(name = sub("_", " ", name))

# get training variables from respective files and prepare them
subject_train <- read.table(paste(traindatadir, "subject_train.txt", sep=""),
                            col.names = "subject")
x_train <- read.table(paste(traindatadir, "X_train.txt", sep=""))
names(x_train) <- features

y_train <- read.table(paste(traindatadir, "y_train.txt", sep=""),
                      col.names = "activity")
y_train <- y_train %>%
    transmute(activity = factor(activity, activities$id,
                               activities$name))
# bind training data together
training <- bind_cols(subject_train,y_train,x_train) %>% tbl_df()


# get testing variables from respective files and prepare them
subject_test <- read.table(paste(testdatadir, "subject_test.txt", sep=""),
                            col.names = "subject")
x_test <- read.table(paste(testdatadir, "X_test.txt", sep=""))
names(x_test) <- features

y_test <- read.table(paste(testdatadir, "y_test.txt", sep=""),
                      col.names = "activity")
y_test <- y_test %>%
    transmute(activity = factor(activity, activities$id,
                                activities$name))

# bind testing data together
testing <- bind_cols(subject_test,y_test,x_test) %>% tbl_df()


################################################################################
# Merge the two datasets into one.
################################################################################

merged <- bind_rows(training, testing) %>%
    mutate(subject = factor(subject))


################################################################################
# Subsetting: selecting only columns containing mean or standard deviation
#             plus the two columns for subject and activity
################################################################################

merged <- merged %>%
    select(1:2, contains("mean"), contains("std"))

################################################################################
# Create a new tidy dataset that's grouped by activity and subject
################################################################################

tidy <- merged %>%
    select(1:2, contains("mean()")) %>%
    group_by(activity, subject)


write.csv(tidy, paste(datadir, "activity_mean_sensor_values.csv"),
          row.names = FALSE)
