options(java.parameters = "-Xmx14000m")
library(xlsx)
library(plotrix)
library(dplyr)
library(Routliers)
library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering visualization
library(dendextend) # for comparing two dendrograms
library(heatmaply) # heatmap plot
library(ggplot2)
library(tsne)
library(plotly)

setwd("/Users/hw817/8 Cancers")


# Cancer specific FPKM
Br = read.delim('cancer_category_rna_breast-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Cv = read.delim('cancer_category_rna_cervical.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Cl = read.delim('cancer_category_rna_colorectal-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Ed = read.delim('cancer_category_rna_endometrial.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Gl = read.delim('cancer_category_rna_glioma_Cancer-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
He = read.delim('cancer_category_rna_head.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Li = read.delim('cancer_category_rna_liver-4.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)

# Lung data old version
Lu = read.delim('cancer_category_rna_lung.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)

Ml = read.delim('cancer_category_rna_melanoma_Cancer.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Ov = read.delim('cancer_category_rna_ovarian-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Pa = read.delim('cancer_category_rna_pancreatic-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Ps = read.delim('cancer_category_rna_prostate-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Rn = read.delim('cancer_category_rna_renal.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
St = read.delim('cancer_category_rna_stomach-2.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Te = read.delim('cancer_category_rna_testis.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Tr = read.delim('cancer_category_rna_thyroid.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Ur = read.delim('cancer_category_rna_urothelial.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)
Kd <- c()


Tumortype <- list(Br, Cv, Cl, Ed, Gl, He, Li, Lu, Ml, Ov, Pa, Ps, Rn, St, Te, Tr, Ur, Kd) 

d<-data.frame("breas", "cervi", "color", "endom", "gliom", "head ", "liver", "lung ", "melan", "ovari", "pancr", "prost", "renal", "stoma", "testi", "thyro", "uroth", "kidne")


for (i in 1:18){
Tumorsplit<-array(length(Tumortype[[i]][[1]]))
Tumorsplit<-strsplit(Tumortype[[i]]$RNA.cancer.specific.FPKM, split=";")

e = length(Tumortype[[i]][[1]])
f = Tumorsplit

c1<-c()
for(x in 1:e){
  c=f[[x]][1]
  c1=append(c1,c)}
c2<-c()
for(x in 1:e){
  c=f[[x]][2]
  c2=append(c2,c)}
c3<-c()
for(x in 1:e){
  c=f[[x]][3]
  c3=append(c3,c)}
c4<-c()
for(x in 1:e){
  c=f[[x]][4]
  c4=append(c4,c)}
c5<-c()
for(x in 1:e){
  c=f[[x]][5]
  c5=append(c5,c)}
c6<-c()
for(x in 1:e){
  c=f[[x]][6]
  c6=append(c6,c)}
c7<-c()
for(x in 1:e){
  c=f[[x]][7]
  c7=append(c7,c)}
c8<-c()
for(x in 1:e){
  c=f[[x]][8]
  c8=append(c8,c)}
c9<-c()
for(x in 1:e){
  c=f[[x]][9]
  c9=append(c9,c)}
c10<-c()
for(x in 1:e){
  c=f[[x]][10]
  c10=append(c10,c)}
c11<-c()
for(x in 1:e){
  c=f[[x]][11]
  c11=append(c11,c)}
c12<-c()
for(x in 1:e){
  c=f[[x]][12]
  c12=append(c12,c)}
c13<-c()
for(x in 1:e){
  c=f[[x]][13]
  c13=append(c13,c)}
c14<-c()
for(x in 1:e){
  c=f[[x]][14]
  c14=append(c14,c)}
c15<-c()
for(x in 1:e){
  c=f[[x]][15]
  c15=append(c15,c)}
c16<-c()
for(x in 1:e){
  c=f[[x]][16]
  c16=append(c16,c)}
c17<-c()
for(x in 1:e){
  c=f[[x]][17]
  c17=append(c17,c)}
c18<-c()
for(x in 1:e){
  c=f[[x]][18]
  c18=append(c18,c)}

Tumortypesplit<-array(length(Tumortype[[i]][[1]]))
Tumortypesplit<-data.frame(Tumortype[[i]]$Gene, Tumortype[[i]]$Ensembl,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18)
Tumortypesplit[is.na(Tumortypesplit)]<-0


a=0
b=0
f=Tumortypesplit

for(j in 1:18){
for(x in 1:e){
  a[x]<-0}


for(x in 1:e){
  if(substr(f[[3]][x],1,5) == d[j]){
    a[x]<-c1[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
  if(substr(f[[4]][x],1,5) == d[j]){
    a[x]<-c2[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[5]][x],1,5) == d[j]){
    a[x]<-c3[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[6]][x],1,5) == d[j]){
    a[x]<-c4[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[7]][x],1,5) == d[j]){
    a[x]<-c5[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[8]][x],1,5) == d[j]){
    a[x]<-c6[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[9]][x],1,5) == d[j]){
    a[x]<-c7[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
  if(substr(f[[10]][x],1,5) == d[j]){
    a[x]<-c8[x]} else{a[x]<-a[x]}
  b<-a}
for(x in 1:e){
    if(substr(f[[11]][x],1,5) == d[j]){
      a[x]<-c9[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[12]][x],1,5) == d[j]){
      a[x]<-c10[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[13]][x],1,5) == d[j]){
      a[x]<-c11[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[14]][x],1,5) == d[j]){
      a[x]<-c12[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[15]][x],1,5) == d[j]){
      a[x]<-c13[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[16]][x],1,5) == d[j]){
      a[x]<-c14[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[17]][x],1,5) == d[j]){
      a[x]<-c15[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[18]][x],1,5) == d[j]){
      a[x]<-c16[x]} else{a[x]<-a[x]}
    b<-a}  
for(x in 1:e){
    if(substr(f[[19]][x],1,5) == d[j]){
      a[x]<-c17[x]} else{a[x]<-a[x]}
    b<-a}
for(x in 1:e){
    if(substr(f[[20]][x],1,5) == d[j]){
      a[x]<-c18[x]} else{a[x]<-a[x]}
    b<-a}  

Tumortypesplit<-cbind(Tumortypesplit, as.numeric(gsub('\\D','',b)))
}


write.xlsx(Tumortypesplit, file="Tumortypesplit.xlsx", sheetName = as.character(d[i]), append = TRUE)
}

# cancer type sheet_r bind  

Tumortype <- list(Br, Cl, Gl, Li, Lu, Ov, Pa, St) 

d<-data.frame("breas","color", "gliom", "liver", "lung ", "ovari", "pancr", "stoma")


all<-c()
for (i in 1:8){

c<-read.xlsx(file = 'Tumortypesplit.xlsx', sheetName = as.character(d[i]))
all<-rbind(all, c)

write.xlsx(all, file="Tumortypesplit_all_lung_old.xlsx", sheetName = "all")
}

# unique (removal of duplicated)

all <- read.xlsx(file = 'Tumortypesplit_all_lung_old.xlsx', sheetName = "all")

unique <- unique(all$Tumortype..i...Gene)

unique_set = all[-which(duplicated(all$Tumortype..i...Gene)), ]
write.xlsx(unique_set, file="Tumortypesplit_all_unique_lung_old.xlsx", sheetName = "unique")



# heatmap
data <-read.xlsx(file = 'Tumortypesplit_all_unique_lung_old.xlsx', sheetName = "unique")
dft<-as.matrix(data[4:21])
rownames(dft)<-c(data$Tumortype..i...Gene)

heatmap(dft, scale = "row")


# Marker_selection

data <-read.xlsx(file = 'Tumortypesplit_all_oldlung_markerselection_scale.xlsx', sheetName = "unique")

EV=read.delim('GO_Extracellularvesicle.tsv', sep='\t', header = TRUE, stringsAsFactors = FALSE)

genesSelectedForAnalysis = intersect(data$Tumortype..i...Gene, EV$SYMBOL)

selectedgenes = data[data$Tumortype..i...Gene %in% genesSelectedForAnalysis,]

data<-subset(selectedgenes, select = -c(NA.))
data<-subset(data, select = -c(Tumortype..i...Ensembl))
numdata <-subset(data, select = -c(Tumortype..i...Gene))

if(!require('ggplot2')){
  install.packages('ggplot2')
  library('ggplot2')
}
library(ggrepel)

# Lung

Marker_Lu = data$Lung - rowMeans(subset(numdata, select = -c(Lung)))
lung = c();
for (i in 1:length(Marker_Lu)){
  if(Marker_Lu[i] > 0.5){
    m <-append(data$Tumortype..i...Gene[i], Marker_Lu[i])
    lung = rbind(lung, m)
  }
  else{
    next}}


d = data.frame(x = numdata$Lung, y = rowMeans(subset(numdata,select = -c(Lung))), z = Marker_Lu)

z = Marker_Lu;

options(ggrepel.max.overlaps = Inf)

ggplot(d, aes(x, y)) + geom_point(aes(color = z)) + 
  labs(x = "RNA in lung cancer [a.u.]", y = "RNA in other cancers [a.u]") + 
  labs(colour = "Difference\n[lung - others]") + 
  scale_colour_gradient2()  + 
  geom_text_repel(aes(label=ifelse(z > 0.5, data$Tumortype..i...Gene,'')), size = 2) 

