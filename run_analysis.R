# Getting and Cleaning Data Project
# Set home working directory
setwd("./Coursera/GettingAndCleaningData/UCI HAR DAtaset")
list.files("./")

# set train working directory
setwd("./train/Inertial Signals")
list.files("./")

# read body_acc_x_train data
body_acc_x_train = read.table("body_acc_x_train.txt")

# read body_acc_y_train data
body_acc_y_train = read.table("body_acc_y_train.txt")

# read body_acc_z_train data
body_acc_z_train = read.table("body_acc_z_train.txt")

# read body_gyro_x_train data
body_gyro_x_train = read.table("body_gyro_x_train.txt")

# read body_gyro_y_train data
body_gyro_y_train = read.table("body_gyro_y_train.txt")

# read body_gyro_z_train data
body_gyro_z_train = read.table("body_gyro_z_train.txt")

# read total_acc_x_train data
total_acc_x_train = read.table("total_acc_x_train.txt")

# read total_acc_y_train data
total_acc_y_train = read.table("total_acc_y_train.txt")

# read total_acc_z_train data
total_acc_z_train = read.table("total_acc_z_train.txt")

setwd("../../test/Inertial Signals")
getwd()

# read body_acc_x_test data
body_acc_x_test = read.table("body_acc_x_test.txt")

# read body_acc_y_test data
body_acc_y_test = read.table("body_acc_y_test.txt")

# read body_acc_z_test data
body_acc_z_test = read.table("body_acc_z_test.txt")

# read body_gyro_x_test data
body_gyro_x_test = read.table("body_gyro_x_test.txt")

# read body_gyro_y_test data
body_gyro_y_test = read.table("body_gyro_y_test.txt")

# read body_gyro_z_test data
body_gyro_z_test = read.table("body_gyro_z_test.txt")

# read total_acc_x_test data
total_acc_x_test = read.table("total_acc_x_test.txt")

# read total_acc_y_test data
total_acc_y_test = read.table("total_acc_y_test.txt")

# read total_acc_z_test data
total_acc_z_test = read.table("total_acc_z_test.txt")


# merge like dataset by combining rows
body_acc_x = rbind(body_acc_x_train, body_acc_x_test)
body_acc_y = rbind(body_acc_y_train, body_acc_y_test)
body_acc_z = rbind(body_acc_z_train, body_acc_z_test)

body_gyro_x = rbind(body_gyro_x_train, body_gyro_x_test)
body_gyro_y = rbind(body_gyro_y_train, body_gyro_y_test)
body_gyro_z = rbind(body_gyro_z_train, body_gyro_z_test)

total_acc_x = rbind(total_acc_x_train, total_acc_x_test)
total_acc_y = rbind(total_acc_y_train, total_acc_y_test)
total_acc_z = rbind(total_acc_z_train, total_acc_z_test)

# extract mean
body_acc_x_mean = apply(body_acc_x, 1, mean) 
body_acc_y_mean = apply(body_acc_y, 1, mean)
body_acc_z_mean = apply(body_acc_z, 1 ,mean)

body_gyro_x_mean = apply(body_gyro_x, 1, mean)
body_gyro_y_mean = apply(body_gyro_y, 1, mean)
body_gyro_z_mean = apply(body_gyro_z, 1, mean)

total_acc_x_mean = apply(total_acc_x, 1, mean)
total_acc_y_mean = apply(total_acc_y, 1, mean)
total_acc_z_mean = apply(total_acc_z, 1, mean)

# extract standard deviation
body_acc_x_sd = apply(body_acc_x, 1, sd) 
body_acc_y_sd = apply(body_acc_y, 1, sd)
body_acc_z_sd = apply(body_acc_z, 1 ,sd)

body_gyro_x_sd = apply(body_gyro_x, 1, sd)
body_gyro_y_sd = apply(body_gyro_y, 1, sd)
body_gyro_z_sd = apply(body_gyro_z, 1, sd)

total_acc_x_sd = apply(total_acc_x, 1, sd)
total_acc_y_sd = apply(total_acc_y, 1, sd)
total_acc_z_sd = apply(total_acc_z, 1, sd)

tidyData1 = data.frame(body_acc_x_mean, body_acc_x_sd,
                      body_acc_y_mean, body_acc_y_sd,
                      body_acc_z_mean, body_acc_z_sd,
                      body_gyro_x_mean, body_acc_x_sd,
                      body_gyro_y_mean, body_acc_y_sd,
                      body_gyro_z_mean, body_acc_z_sd,
                      total_acc_x_mean, total_acc_x_sd,
                      total_acc_y_mean, total_acc_y_sd,
                      total_acc_z_mean, total_acc_z_sd)

write.csv(tidyData1,"../../../tidyData1.csv")
write.table(tidyData1, file="../../../tidyData1.txt")

# extract mean
body_acc_x_mean2 = apply(body_acc_x, 2, mean) 
body_acc_y_mean2 = apply(body_acc_y, 2, mean)
body_acc_z_mean2 = apply(body_acc_z, 2 ,mean)

body_gyro_x_mean2 = apply(body_gyro_x, 2, mean)
body_gyro_y_mean2 = apply(body_gyro_y, 2, mean)
body_gyro_z_mean2 = apply(body_gyro_z, 2, mean)

total_acc_x_mean2 = apply(total_acc_x, 2, mean)
total_acc_y_mean2 = apply(total_acc_y, 2, mean)
total_acc_z_mean2 = apply(total_acc_z, 2, mean)

# extract standard deviation
body_acc_x_sd2 = apply(body_acc_x, 2, sd) 
body_acc_y_sd2 = apply(body_acc_y, 2, sd)
body_acc_z_sd2 = apply(body_acc_z, 2 ,sd)

body_gyro_x_sd2 = apply(body_gyro_x, 2, sd)
body_gyro_y_sd2 = apply(body_gyro_y, 2, sd)
body_gyro_z_sd2 = apply(body_gyro_z, 2, sd)

total_acc_x_sd2 = apply(total_acc_x, 2, sd)
total_acc_y_sd2 = apply(total_acc_y, 2, sd)
total_acc_z_sd2 = apply(total_acc_z, 2, sd)

tidyData2 = data.frame(body_acc_x_mean2, body_acc_x_sd2,
                       body_acc_y_mean2, body_acc_y_sd2,
                       body_acc_z_mean2, body_acc_z_sd2,
                       body_gyro_x_mean2, body_acc_x_sd2,
                       body_gyro_y_mean2, body_acc_y_sd2,
                       body_gyro_z_mean2, body_acc_z_sd2,
                       total_acc_x_mean2, total_acc_x_sd2,
                       total_acc_y_mean2, total_acc_y_sd2,
                       total_acc_z_mean2, total_acc_z_sd2)

write.csv(tidyData2,"../../../tidyData2.csv")
write.table(tidyData2, file="../../../tidyData2.txt")
