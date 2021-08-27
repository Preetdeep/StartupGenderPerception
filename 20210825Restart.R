#rm(list=ls())
library(dplyr)
library(stargazer)
library(lubridate)


# Setup -------------------------------------------------------------------


#setwd("G:/My Drive/Invest India/Startup India/New Ideas/Research/May2020")
files<-list.files (pattern = "csv$")
#Load all files
FailedFounder<-read.csv("FailedFounder.csv")
Female12th<-read.csv("Female12th.csv")
FemaleFailedFounder<-read.csv("FemaleFailedFounder.csv")
FemaleIITIIM<-read.csv("FemaleIITIIM.csv")
FemaleMidAge<-read.csv("FemaleMidAge.csv")
FemaleOld<-read.csv("FemaleOld.csv")
FemaleYoung<-read.csv("FemaleYoung.csv")
GovtFather<-read.csv("GovtFather.csv")
Male12th<-read.csv("Male12th.csv")
MaleFailedFounder<-read.csv("MaleFailedFounder.csv")
MaleIITIIM<-read.csv("MaleIITIIM.csv")
MaleMidAge<-read.csv("MaleMidAge.csv")
MaleOld<-read.csv("MaleOld.csv")
MaleYoung<-read.csv("MaleYoung.csv")
SuccessfulEmployee<-read.csv("SUccessfulEmployee.csv")
SuccessfulFounder<-read.csv("SuccessfulFounder.csv")
#Rename ColumnNames
colnames(FailedFounder) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(Female12th) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(FemaleIITIIM) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(FemaleMidAge) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(FemaleOld) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(FemaleYoung) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(GovtFather) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(Male12th) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(MaleFailedFounder) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(FemaleFailedFounder) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(MaleIITIIM) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(MaleMidAge) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(MaleYoung) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(MaleOld) <-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(SuccessfulEmployee)<-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")
colnames(SuccessfulFounder)<-c("ResponseTime1","ResponseTime2","IP.Address","Age","Age.Range","Gender","Country","Success","Funding","Abandon")



FailedFounder$Name<-"FailedFounder"
SuccessfulEmployee$Name<-"SuccessfulEmployee"
SuccessfulFounder$Name<-"SuccessfulFounder"
FemaleFailedFounder$Name<-"FemaleFailedFounder"
MaleFailedFounder$Name<-"MaleFailedFounder"
GovtFather$Name<-"GovtFather"

MaleYoung$Name<-"MaleYoung"
FemaleYoung$Name<-"FemaleYoung"
FemaleMidAge$Name<-"FemaleMidAge"
MaleMidAge$Name<-"MaleMidAge"
MaleOld$Name<-"MaleOld"
FemaleOld$Name<-"FemaleOld"

Female12th$Name<-"Female12th"
Male12th$Name<-"Male12th"
MaleIITIIM$Name<-"MaleIITIIM"
FemaleIITIIM$Name<-"FemaleIITIIM"

# Older -------------------------------------------------------------------


#Summary Of Each Data Set
stargazer(FemaleIITIIM, title = "This tables shows the summary of responses in the case where the startup founders were females and studied from IIT and IIM." )
stargazer(MaleIITIIM, title = "This tables shows the summary of responses in the case where the startup founders were male and studied from IIT and IIM." )
stargazer(Male12th, title = "This tables shows the summary of responses in the case where the startup founders were males who had only completed school." )
stargazer(Female12th, title = "This tables shows the summary of responses in the case where the startup founders were females who had only completed school." )
stargazer(FemaleMidAge, title = "This tables shows the summary of responses in the case where the startup founders were females and 30-35 years of age." )
stargazer(MaleMidAge, title = "This tables shows the summary of responses in the case where the startup founders were males and 30-35 years of age." )
stargazer(FemaleYoung, title = "This tables shows the summary of responses in the case where the startup founders were females and 20-25 years of age." )
stargazer(MaleYoung, title = "This tables shows the summary of responses in the case where the startup founders were male and 20-25 years of age." )
stargazer(FemaleOld, title = "This tables shows the summary of responses in the case where the startup founders were female and 40+ years of age." )
stargazer(MaleOld, title = "This tables shows the summary of responses in the case where the startup founders were male and 40+ years of age." )
stargazer(MaleFailedFounder, title = "This tables shows the summary of responses in the case where the startup founder was male and had a startup that failed before this." )
stargazer(FemaleFailedFounder, title = "This tables shows the summary of responses in the case where the startup founderwas female and had a startup that failed before this." )
stargazer(GovtFather, title = "This tables shows the summary of responses in the case where the startup founder is the child of a government employee." )
stargazer(FailedFounder, title = "This tables shows the summary of responses in the case where the startup founder had a failed startup before this. No gender has been specified for the founders." )
stargazer(SuccessfulFounder, title = "This tables shows the summary of responses in the case where the startup founder had a successful startup before this. No gender of the founders has been specified.")
stargazer(SuccessfulEmployee, title = "This tables shows the summary of responses in the case where the startup founder worked in a successful startup before this. No gender of the founders has been specified.")


mergedtest<-merge(GovtFather,FemaleFailedFounder, all.x=TRUE, all.y=TRUE) #This will work if there is a column with the name of the file. 
mergedtest<-merge(mergedtest,FailedFounder, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,SuccessfulEmployee, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,SuccessfulFounder, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,MaleFailedFounder, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,FemaleIITIIM, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,MaleIITIIM, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,Male12th, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,Female12th, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,FemaleYoung, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,FemaleMidAge, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,FemaleOld, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,MaleOld, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,MaleYoung, all.x=TRUE, all.y=TRUE)
mergedtest<-merge(mergedtest,MaleMidAge, all.x=TRUE, all.y=TRUE)


# Visualisation -----------------------------------------------------------


###Visualisation
library(ggplot2)
#12th Class
vis12<-ggplot(mergedtest[mergedtest$Name=="Female12th" | mergedtest$Name=="Male12th",],aes(Name,Success))
vis12<-vis12+geom_boxplot()
vis12<-vis12+ggtitle("Box plot of estimated success probability.")
print(vis12)

#The mean probability that a startup founded byschool educated males will be abandoned at  \Sexpr{round(mean(Male12th$Abandon,na.rm=TRUE),2)} is the slightly higher than that of IIT-IIM educated males at \Sexpr{round(mean(MaleIITIIM$Abandon,na.rm=TRUE),2)}. This is at a p-value of \Sexpr{round(t.test(MaleIITIIM$Abandon,Male12th$Abandon)$p.value,2)} making it statistically insignificant.


# Oldertries --------------------------------------------------------------



round(mean(Male12th$Abandon,na.rm=TRUE),2)
t.test(MaleIITIIM$Abandon,Male12th$Abandon)$p.value
wilcox.test(MaleIITIIM$Abandon,Male12th$Abandon)$p.value


x111<-FemaleYoung$Success
x121<-FemaleMidAge$Success
x131<-FemaleOld$Success

y211<-MaleYoung$Success
y221<-MaleMidAge$Success
y231<-MaleOld$Success

x112<-FemaleYoung$Funding
x122<-FemaleMidAge$Funding
x132<-FemaleOld$Funding

y212<-MaleYoung$Funding
y222<-MaleMidAge$Funding
y232<-MaleOld$Funding


x113<-FemaleYoung$Abandon
x123<-FemaleMidAge$Abandon
x133<-FemaleOld$Abandon

y213<-MaleYoung$Abandon
y223<-MaleMidAge$Abandon
y233<-MaleOld$Abandon

#FemaleMid and Male Young for Success
#FemaleOld and MaleYoung for Abandon
#MaleYoung and MaleOld for Funding
#A dataframe with all Success values for Age and Gender
dft<-data.frame()
i<-1
dft[i,1]<-"Success"
dft[i,2]<-"Gender"
dft[i,3]<-"Age"
dft[i,4]<-t.test(x111,x121)$p.value
i<-i+1
dft[i,4]<-t.test(x111,x131)$p.value
i<-i+1
dft[i,4]<-t.test(x121,x131)$p.value
i<-i+1
dft[i,4]<-t.test(y211,y221)$p.value
i<-i+1
dft[i,4]<-t.test(y211,y231)$p.value
i<-i+1
dft[i,4]<-t.test(y221,y231)$p.value
i<-i+1
dft[i,4]<-t.test(x111,y211)$p.value
i<-i+1
dft[i,4]<-t.test(x111,y221)$p.value
i<-i+1
dft[i,4]<-t.test(x111,y231)$p.value
i<-i+1
dft[i,2]<-paste("FemaleMidAge",round(mean(x121),2))
dft[i,3]<-paste("MaleYoung",round(mean(y211),2))
dft[i,4]<-t.test(x121,y211)$p.value #This is there
i<-i+1
dft[i,4]<-t.test(x121,y221)$p.value
i<-i+1
dft[i,4]<-t.test(x121,y231)$p.value
i<-i+1
dft[i,4]<-t.test(x131,y211)$p.value
i<-i+1
dft[i,4]<-t.test(x131,y221)$p.value
i<-i+1
dft[i,4]<-t.test(x131,y231)$p.value
colnames(dft)<-c("Success","Mean of Variable 1","Mean of Variable 2","p-value")

t.test(x131,y231)$p.value


####Try Wilcox
dft[i,1]<-"Success"
dft[i,2]<-"Gender"
dft[i,3]<-"Age"
dft[i,4]<-wilcox.test(x111,x121)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x111,x131)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x121,x131)$p.value
i<-i+1
dft[i,4]<-wilcox.test(y211,y221)$p.value
i<-i+1
dft[i,4]<-wilcox.test(y211,y231)$p.value
i<-i+1
dft[i,4]<-wilcox.test(y221,y231)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x111,y211)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x111,y221)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x111,y231)$p.value
i<-i+1
dft[i,2]<-paste("FemaleMidAge",round(mean(x121),2))
dft[i,3]<-paste("MaleYoung",round(mean(y211),2))
dft[i,4]<-wilcox.test(x121,y211)$p.value #This is there
i<-i+1
dft[i,4]<-wilcox.test(x121,y221)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x121,y231)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x131,y211)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x131,y221)$p.value
i<-i+1
dft[i,4]<-wilcox.test(x131,y231)$p.value
colnames(dft)<-c("Success","Mean of Variable 1","Mean of Variable 2","p-value")


###DO tsmething from there. 
x111,x121,x131,y211,y221,y231
x112,x122,x132,y212,y222,y232
x113,x123,x133,y213,y223,y333


t.test(x,y)
t.test(dumbframe[1],dumbframe[2])$p.value


# New Tries ---------------------------------------------------------------

unique(mergedtest$Name)[i]

##Filter values from the one, then select the other, other loops, Try Success, Funding, Abandon

resultframe1<-data.frame()
for (i in (1:length(unique(mergedtest$Name)))){
  for (j in 1:length(unique(mergedtest$Name))){
    f1<-filter(mergedtest,Name==unique(mergedtest$Name)[i])
    f2<-filter(mergedtest,Name==unique(mergedtest$Name)[j])
    resultframe1[i,1]<-paste(unique(mergedtest$Name)[i],"Success")
    resultframe1[16+i,1]<-paste(unique(mergedtest$Name)[i],"Funding")
    resultframe1[32+i,1]<-paste(unique(mergedtest$Name)[i],"Abandon")
    
    resultframe1[i,j+1]<-t.test(f1$Success,f2$Success)$p.value
    resultframe1[length(unique(mergedtest$Name))+i,j+1]<-t.test(f1$Funding,f2$Funding)$p.value
    resultframe1[(2*length(unique(mergedtest$Name)))+i,j+1]<-t.test(f1$Abandon,f2$Abandon)$p.value
  }
}

colnames(resultframe1)<-c("Name",unique(mergedtest$Name))

resultsframe2<-data.frame()
for(i in 1:16){

  r1<-filter(resultframe1,resultframe1[,i]<0.1)
  resultsframe2[i,1]<-colnames(resultframe1)[i]
  resultsframe2[i,2]<-length(r1[,2])
}
##Results
Male Young Vs Male IIT IIM Abandon : 0.05
Female IIT IIM: Multiple : 10 ish
Young Male, Female Mid Age

#Cost of Failure (Much worse for females, abandon also)
#What to say when talking to investors.


# Date --------------------------------------------------------------------
##They seem to be taking a different amount of time also in filling the responses.
mergedtest2<-mergedtest
mergedtest2$Time1<-parse_date_time(substr(mergedtest2$ResponseTime1,14,24),"%I:%M:%S %p")
mergedtest2$Time2<-parse_date_time(substr(mergedtest2$ResponseTime2,14,24),"%I:%M:%S %p")
mergedtest2$TimeDiff<-mergedtest2$Time2-mergedtest2$Time1

mean(mergedtest2$TimeDiff)
mergedtest2%>%group_by(Gender)%>%summarise(timediff=mean(TimeDiff))
gendernametimediff<-mergedtest2%>%group_by(Gender,Name)%>%summarise(timediff=mean(TimeDiff),n=length(TimeDiff))

##WE see that there is a difference. .

## For each group, we can see 
## 1. Whether combined time is different
## 2. Whether there is a diff between Males and Females

resultframe3<-data.frame()
resultframe4<-data.frame()
for (i in (1:length(unique(mergedtest2$Name)))){
  for (j in 1:length(unique(mergedtest2$Name))){
    f1<-filter(mergedtest2,Name==unique(mergedtest2$Name)[i])
    f2<-filter(mergedtest2,Name==unique(mergedtest2$Name)[j])
    resultframe3[i,1]<-unique(mergedtest2$Name)[i]
    resultframe3[i,j+1]<-t.test(f1$TimeDiff,f2$TimeDiff)$p.value
  }
  f3<-filter(f1,Gender=="Female")
  f4<-filter(f1,Gender=="Male")
  resultframe4[i,1]<-unique(mergedtest$Name)[i]
  resultframe4[i,2]<-t.test(f3$TimeDiff,f4$TimeDiff)$p.value
}
colnames(resultframe3)<-c("Names",unique(mergedtest2$Name))
#colnames(resultframe4)<-c("Names",unique(mergedtest2$Name))


##TEst Male Young Male IIT
f1<-filter(mergedtest2,Name=="MaleYoung")
f2<-filter(mergedtest2,Name=="FemaleFailedFounder")
t.test(f1$TimeDiff,f2$TimeDiff)$p.value

f3<-filter(f2,Gender=="Female")
f4<-filter(f2,Gender=="Male")
resultframe4[i,1]<-unique(mergedtest$Name)[i]
resultframe4[i,2]<-t.test(f3$TimeDiff,f4$TimeDiff)$p.value

