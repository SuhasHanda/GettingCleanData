
#--------------Coursera Assignment---------------------------
#---train tables: Read Data-------------------------------------
library(dplyr)
subjectflag<-read.table("./UCI HAR Dataset/train/subject_train.txt")
names(subjectflag)<-c("subjectflag")
activityflag<-read.table("./UCI HAR Dataset/train/y_train.txt")
names(activityflag)<-c("activityflag")
features<-read.table("./UCI HAR Dataset/features.txt")
traindata<-read.table("./UCI HAR Dataset/train/X_train.txt")
names(traindata)<-features$V2

#----Adding required columns: subject/activity desc

traindata$subjectflag<-subjectflag$subjectflag
traindata$activityflag<-activityflag$activityflag

activitydesc<-read.table("./UCI HAR Dataset/activity_labels.txt")
names(activitydesc)<-c("activityflag","activitydesc")

renamedtrain<-merge(activitydesc,traindata,
                    by.x = "activityflag",by.y = "activityflag",all = T)

#---selecting required columns of the train data

meancol<-grep("mean[()]+",names(renamedtrain))
stddevcol<-grep("std()",names(renamedtrain))
subjectactivity<-grep("activitydesc|subjectflag",names(renamedtrain))
selectedcol<-as.numeric(rbind(meancol,stddevcol))
selectedcol<-append(subjectactivity,selectedcol)

finaltrain<-select(renamedtrain,selectedcol)

#---test tables: Read Data-------------------------------------
subjectflag<-read.table("./UCI HAR Dataset/test/subject_test.txt")
names(subjectflag)<-c("subjectflag")
activityflag<-read.table("./UCI HAR Dataset/test/y_test.txt")
names(activityflag)<-c("activityflag")
features<-read.table("./UCI HAR Dataset/features.txt")
testdata<-read.table("./UCI HAR Dataset/test/X_test.txt")
names(testdata)<-features$V2

#----Adding required columns: subject/activity desc

testdata$subjectflag<-subjectflag$subjectflag
testdata$activityflag<-activityflag$activityflag

activitydesc<-read.table("./UCI HAR Dataset/activity_labels.txt")
names(activitydesc)<-c("activityflag","activitydesc")

renamedtest<-merge(activitydesc,testdata,
                    by.x = "activityflag",by.y = "activityflag",all = T)

#---selecting required columns of the test data

meancol<-grep("mean[()]+",names(renamedtest))
stddevcol<-grep("std()",names(renamedtest))
subjectactivity<-grep("activitydesc|subjectflag",names(renamedtest))
selectedcol<-as.numeric(rbind(meancol,stddevcol))
selectedcol<-append(subjectactivity,selectedcol)

finaltest<-select(renamedtest,selectedcol)

#---combining test & train sets
finaldata<-rbind(finaltrain,finaltest)

#---finding averages per activity and subject
library(reshape2)
finaldatamelt<-melt(data = finaldata,id.vars = c("subjectflag","activitydesc"))
finaldatamean<-dcast(finaldatamelt,subjectflag + activitydesc ~ variable,mean)
write.table(finaldatamean,"./meandata.txt")




















