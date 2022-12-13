options(java.parameters = "-Xmx8000m")
library(xlsx)
library(plotrix)
library(dplyr)
library(Routliers)


setwd("/Users/hw817/Desktop/python/Data list_post processed")
file_list<-list.files()

Tumortype<-c("HD","Br","Cl","Lu","Li","Pa")
Marker<-c("CD9","CD63","CD81","CD24","PDL1","EpCAM","EGFR","CEA","SLC12A2","SELENOP","ASGR1","GPA33","RBP4","DSG","WNT2","MIgG","FGB","SP-B","SC","c16","Amy2A","EGFRvIII","PDGFRalpha","RIgG","MEP1A","Her2","DCD","SMR","GFRA1","IGF1","GP2","REG1b","FOLR","KRAS","FABP")

f<-array(dim = c(6,69,35))
p<-array(dim = c(6,69,35))

file_name_F<-array(dim = c(6,69,35))
file_name_P<-array(dim = c(6,69,35))

Median<-c()
Lowcount<-c()


for(i in 1:6){
  for (j in 1:69){
    for (k in 1:35){
      
Post_R1<-c()
Post_R2<-c()
Post_R<-c()


patientF<-paste(Tumortype[i],j,'F', sep='')
patientP<-paste(Tumortype[i],j,'P', sep='')

f[i,j,k]<- paste(patientF, Marker[k], sep="_")
p[i,j,k]<- paste(patientP, Marker[k], sep="_")

file_name_F[i,j,k]<-paste(f[i,j,k], '.xlsx', sep='')
file_name_P[i,j,k]<-paste(p[i,j,k], '.xlsx', sep='')

if(file.exists(file_name_F[i,j,k])==TRUE){
Post_F<-array(dim = c(1,2))
Post_P<-array(dim = c(1,2))
Post_F<-read.xlsx(file_name_F[i,j,k], 1)
Post_P<-read.xlsx(file_name_P[i,j,k], 1)
}

if(file.exists(file_name_F[i,j,k])==FALSE){
  Post_F<-array(dim = c(1,2))
  Post_P<-array(dim = c(1,2))
}

if(dim(Post_F)[2]==2){
Post_R1<-na.omit(Post_F[,1]/Post_P[,1])
Post_R2<-na.omit(Post_F[,2]/Post_P[,2])
}

if(dim(Post_F)[2]==1){
  Post_R1<-na.omit(Post_F[,1]/Post_P[,1])
  Post_R2<-array(dim=c(1,2))
}

Post_R<-append(Post_R1,Post_R2)
Post_R<-na.omit(Post_R)



if(length(Post_R)>=1000){
Median_1<-median(Post_R[1:500])
Median_2<-median(Post_R[501:1000])

m<-c(Tumortype[i], j, Marker[k], Median_1, Median_2)
Median=rbind(Median, m)

}

if(length(Post_R)<1000){
 
  m<-c(Tumortype[i], j, Marker[k], "", "")
  Median=rbind(Median, m)
  
  l<-c(Tumortype[i], j, Marker[k])
  Lowcount=rbind(Lowcount, l)
}


else{
next}

print(paste(i,j,k))


    }
  }
}


write.xlsx(Median, file="0_Median_20220402.xlsx", sheetName = "Median", append = TRUE)
write.xlsx(Lowcount, file="0_Median_20220402.xlsx", sheetName = "Lowcount_1000", append = TRUE )

