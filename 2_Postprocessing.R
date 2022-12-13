options(java.parameters = "-Xmx14000m")
library(xlsx)
library(plotrix)
library(dplyr)
library(Routliers)

setwd("/Users/hw817/Dropbox (Partners HealthCare)/19_MGH_HMS_Projects/04_Exoseek/Exoseek/R code/Test file_1")

name<-read.xlsx(file='plate info.xlsx', 1)
Raw_F<-read.xlsx(file='plate info.xlsx', 2)
Raw_P<-read.xlsx(file='plate info.xlsx', 3)


FITC_A1_1<-c()
FITC_A2_1<-c()
FITC_A3_1<-c()
FITC_A4_1<-c()
FITC_A5_1<-c()
FITC_A6_1<-c()
FITC_A7_1<-c()
FITC_A8_1<-c()
FITC_A9_1<-c()
FITC_A10_1<-c()
FITC_A11_1<-c()
FITC_A12_1<-c()

FITC_A1_2<-c()
FITC_A2_2<-c()
FITC_A3_2<-c()
FITC_A4_2<-c()
FITC_A5_2<-c()
FITC_A6_2<-c()
FITC_A7_2<-c()
FITC_A8_2<-c()
FITC_A9_2<-c()
FITC_A10_2<-c()
FITC_A11_2<-c()
FITC_A12_2<-c()

FITC_B1_1<-c()
FITC_B2_1<-c()
FITC_B3_1<-c()
FITC_B4_1<-c()
FITC_B5_1<-c()
FITC_B6_1<-c()
FITC_B7_1<-c()
FITC_B8_1<-c()
FITC_B9_1<-c()
FITC_B10_1<-c()
FITC_B11_1<-c()
FITC_B12_1<-c()

FITC_B1_2<-c()
FITC_B2_2<-c()
FITC_B3_2<-c()
FITC_B4_2<-c()
FITC_B5_2<-c()
FITC_B6_2<-c()
FITC_B7_2<-c()
FITC_B8_2<-c()
FITC_B9_2<-c()
FITC_B10_2<-c()
FITC_B11_2<-c()
FITC_B12_2<-c()

FITC_C1_1<-c()
FITC_C2_1<-c()
FITC_C3_1<-c()
FITC_C4_1<-c()
FITC_C5_1<-c()
FITC_C6_1<-c()
FITC_C7_1<-c()
FITC_C8_1<-c()
FITC_C9_1<-c()
FITC_C10_1<-c()
FITC_C11_1<-c()
FITC_C12_1<-c()

FITC_C1_2<-c()
FITC_C2_2<-c()
FITC_C3_2<-c()
FITC_C4_2<-c()
FITC_C5_2<-c()
FITC_C6_2<-c()
FITC_C7_2<-c()
FITC_C8_2<-c()
FITC_C9_2<-c()
FITC_C10_2<-c()
FITC_C11_2<-c()
FITC_C12_2<-c()

FITC_D1_1<-c()
FITC_D2_1<-c()
FITC_D3_1<-c()
FITC_D4_1<-c()
FITC_D5_1<-c()
FITC_D6_1<-c()
FITC_D7_1<-c()
FITC_D8_1<-c()
FITC_D9_1<-c()
FITC_D10_1<-c()
FITC_D11_1<-c()
FITC_D12_1<-c()

FITC_D1_2<-c()
FITC_D2_2<-c()
FITC_D3_2<-c()
FITC_D4_2<-c()
FITC_D5_2<-c()
FITC_D6_2<-c()
FITC_D7_2<-c()
FITC_D8_2<-c()
FITC_D9_2<-c()
FITC_D10_2<-c()
FITC_D11_2<-c()
FITC_D12_2<-c()

FITC_E1_1<-c()
FITC_E2_1<-c()
FITC_E3_1<-c()
FITC_E4_1<-c()
FITC_E5_1<-c()
FITC_E6_1<-c()
FITC_E7_1<-c()
FITC_E8_1<-c()
FITC_E9_1<-c()
FITC_E10_1<-c()
FITC_E11_1<-c()
FITC_E12_1<-c()

FITC_E1_2<-c()
FITC_E2_2<-c()
FITC_E3_2<-c()
FITC_E4_2<-c()
FITC_E5_2<-c()
FITC_E6_2<-c()
FITC_E7_2<-c()
FITC_E8_2<-c()
FITC_E9_2<-c()
FITC_E10_2<-c()
FITC_E11_2<-c()
FITC_E12_2<-c()

FITC_F1_1<-c()
FITC_F2_1<-c()
FITC_F3_1<-c()
FITC_F4_1<-c()
FITC_F5_1<-c()
FITC_F6_1<-c()
FITC_F7_1<-c()
FITC_F8_1<-c()
FITC_F9_1<-c()
FITC_F10_1<-c()
FITC_F11_1<-c()
FITC_F12_1<-c()

FITC_F1_2<-c()
FITC_F2_2<-c()
FITC_F3_2<-c()
FITC_F4_2<-c()
FITC_F5_2<-c()
FITC_F6_2<-c()
FITC_F7_2<-c()
FITC_F8_2<-c()
FITC_F9_2<-c()
FITC_F10_2<-c()
FITC_F11_2<-c()
FITC_F12_2<-c()

FITC_G1_1<-c()
FITC_G2_1<-c()
FITC_G3_1<-c()
FITC_G4_1<-c()
FITC_G5_1<-c()
FITC_G6_1<-c()
FITC_G7_1<-c()
FITC_G8_1<-c()
FITC_G9_1<-c()
FITC_G10_1<-c()
FITC_G11_1<-c()
FITC_G12_1<-c()

FITC_G1_2<-c()
FITC_G2_2<-c()
FITC_G3_2<-c()
FITC_G4_2<-c()
FITC_G5_2<-c()
FITC_G6_2<-c()
FITC_G7_2<-c()
FITC_G8_2<-c()
FITC_G9_2<-c()
FITC_G10_2<-c()
FITC_G11_2<-c()
FITC_G12_2<-c()

FITC_H1_1<-c()
FITC_H2_1<-c()
FITC_H3_1<-c()
FITC_H4_1<-c()
FITC_H5_1<-c()
FITC_H6_1<-c()
FITC_H7_1<-c()
FITC_H8_1<-c()
FITC_H9_1<-c()
FITC_H10_1<-c()
FITC_H11_1<-c()
FITC_H12_1<-c()

FITC_H1_2<-c()
FITC_H2_2<-c()
FITC_H3_2<-c()
FITC_H4_2<-c()
FITC_H5_2<-c()
FITC_H6_2<-c()
FITC_H7_2<-c()
FITC_H8_2<-c()
FITC_H9_2<-c()
FITC_H10_2<-c()
FITC_H11_2<-c()
FITC_H12_2<-c()

PE_A1_1<-c()
PE_A2_1<-c()
PE_A3_1<-c()
PE_A4_1<-c()
PE_A5_1<-c()
PE_A6_1<-c()
PE_A7_1<-c()
PE_A8_1<-c()
PE_A9_1<-c()
PE_A10_1<-c()
PE_A11_1<-c()
PE_A12_1<-c()

PE_A1_2<-c()
PE_A2_2<-c()
PE_A3_2<-c()
PE_A4_2<-c()
PE_A5_2<-c()
PE_A6_2<-c()
PE_A7_2<-c()
PE_A8_2<-c()
PE_A9_2<-c()
PE_A10_2<-c()
PE_A11_2<-c()
PE_A12_2<-c()

PE_B1_1<-c()
PE_B2_1<-c()
PE_B3_1<-c()
PE_B4_1<-c()
PE_B5_1<-c()
PE_B6_1<-c()
PE_B7_1<-c()
PE_B8_1<-c()
PE_B9_1<-c()
PE_B10_1<-c()
PE_B11_1<-c()
PE_B12_1<-c()

PE_B1_2<-c()
PE_B2_2<-c()
PE_B3_2<-c()
PE_B4_2<-c()
PE_B5_2<-c()
PE_B6_2<-c()
PE_B7_2<-c()
PE_B8_2<-c()
PE_B9_2<-c()
PE_B10_2<-c()
PE_B11_2<-c()
PE_B12_2<-c()

PE_C1_1<-c()
PE_C2_1<-c()
PE_C3_1<-c()
PE_C4_1<-c()
PE_C5_1<-c()
PE_C6_1<-c()
PE_C7_1<-c()
PE_C8_1<-c()
PE_C9_1<-c()
PE_C10_1<-c()
PE_C11_1<-c()
PE_C12_1<-c()

PE_C1_2<-c()
PE_C2_2<-c()
PE_C3_2<-c()
PE_C4_2<-c()
PE_C5_2<-c()
PE_C6_2<-c()
PE_C7_2<-c()
PE_C8_2<-c()
PE_C9_2<-c()
PE_C10_2<-c()
PE_C11_2<-c()
PE_C12_2<-c()

PE_D1_1<-c()
PE_D2_1<-c()
PE_D3_1<-c()
PE_D4_1<-c()
PE_D5_1<-c()
PE_D6_1<-c()
PE_D7_1<-c()
PE_D8_1<-c()
PE_D9_1<-c()
PE_D10_1<-c()
PE_D11_1<-c()
PE_D12_1<-c()

PE_D1_2<-c()
PE_D2_2<-c()
PE_D3_2<-c()
PE_D4_2<-c()
PE_D5_2<-c()
PE_D6_2<-c()
PE_D7_2<-c()
PE_D8_2<-c()
PE_D9_2<-c()
PE_D10_2<-c()
PE_D11_2<-c()
PE_D12_2<-c()

PE_E1_1<-c()
PE_E2_1<-c()
PE_E3_1<-c()
PE_E4_1<-c()
PE_E5_1<-c()
PE_E6_1<-c()
PE_E7_1<-c()
PE_E8_1<-c()
PE_E9_1<-c()
PE_E10_1<-c()
PE_E11_1<-c()
PE_E12_1<-c()

PE_E1_2<-c()
PE_E2_2<-c()
PE_E3_2<-c()
PE_E4_2<-c()
PE_E5_2<-c()
PE_E6_2<-c()
PE_E7_2<-c()
PE_E8_2<-c()
PE_E9_2<-c()
PE_E10_2<-c()
PE_E11_2<-c()
PE_E12_2<-c()

PE_F1_1<-c()
PE_F2_1<-c()
PE_F3_1<-c()
PE_F4_1<-c()
PE_F5_1<-c()
PE_F6_1<-c()
PE_F7_1<-c()
PE_F8_1<-c()
PE_F9_1<-c()
PE_F10_1<-c()
PE_F11_1<-c()
PE_F12_1<-c()

PE_F1_2<-c()
PE_F2_2<-c()
PE_F3_2<-c()
PE_F4_2<-c()
PE_F5_2<-c()
PE_F6_2<-c()
PE_F7_2<-c()
PE_F8_2<-c()
PE_F9_2<-c()
PE_F10_2<-c()
PE_F11_2<-c()
PE_F12_2<-c()

PE_G1_1<-c()
PE_G2_1<-c()
PE_G3_1<-c()
PE_G4_1<-c()
PE_G5_1<-c()
PE_G6_1<-c()
PE_G7_1<-c()
PE_G8_1<-c()
PE_G9_1<-c()
PE_G10_1<-c()
PE_G11_1<-c()
PE_G12_1<-c()

PE_G1_2<-c()
PE_G2_2<-c()
PE_G3_2<-c()
PE_G4_2<-c()
PE_G5_2<-c()
PE_G6_2<-c()
PE_G7_2<-c()
PE_G8_2<-c()
PE_G9_2<-c()
PE_G10_2<-c()
PE_G11_2<-c()
PE_G12_2<-c()

PE_H1_1<-c()
PE_H2_1<-c()
PE_H3_1<-c()
PE_H4_1<-c()
PE_H5_1<-c()
PE_H6_1<-c()
PE_H7_1<-c()
PE_H8_1<-c()
PE_H9_1<-c()
PE_H10_1<-c()
PE_H11_1<-c()
PE_H12_1<-c()

PE_H1_2<-c()
PE_H2_2<-c()
PE_H3_2<-c()
PE_H4_2<-c()
PE_H5_2<-c()
PE_H6_2<-c()
PE_H7_2<-c()
PE_H8_2<-c()
PE_H9_2<-c()
PE_H10_2<-c()
PE_H11_2<-c()
PE_H12_2<-c()

#Compensation_spillover coefficient s1(PE) & s2(FITC)

#Str PE only_spiked plasma
s1= 0.00605161

#Condition1_CD63 FITC only_spiked plasma
# s2= 0.91631898 

#Condition2_Str FITC only_cell line ev only
s2= 0.287939188 

#Condition3_theoretical value
# s1 = 0.02
# s2 = 0.15

FITC_A1_1<-(Raw_F$FITC_A1_1-s1*Raw_P$PE_A1_1)/(1-s1*s2)
PE_A1_1<-(Raw_P$PE_A1_1-s2*Raw_F$FITC_A1_1)/(1-s1*s2)
FITC_B1_1<-(Raw_F$FITC_B1_1-s1*Raw_P$PE_B1_1)/(1-s1*s2)
PE_B1_1<-(Raw_P$PE_B1_1-s2*Raw_F$FITC_B1_1)/(1-s1*s2)
FITC_C1_1<-(Raw_F$FITC_C1_1-s1*Raw_P$PE_C1_1)/(1-s1*s2)
PE_C1_1<-(Raw_P$PE_C1_1-s2*Raw_F$FITC_C1_1)/(1-s1*s2)
FITC_D1_1<-(Raw_F$FITC_D1_1-s1*Raw_P$PE_D1_1)/(1-s1*s2)
PE_D1_1<-(Raw_P$PE_D1_1-s2*Raw_F$FITC_D1_1)/(1-s1*s2)
FITC_E1_1<-(Raw_F$FITC_E1_1-s1*Raw_P$PE_E1_1)/(1-s1*s2)
PE_E1_1<-(Raw_P$PE_E1_1-s2*Raw_F$FITC_E1_1)/(1-s1*s2)
FITC_F1_1<-(Raw_F$FITC_F1_1-s1*Raw_P$PE_F1_1)/(1-s1*s2)
PE_F1_1<-(Raw_P$PE_F1_1-s2*Raw_F$FITC_F1_1)/(1-s1*s2)
FITC_G1_1<-(Raw_F$FITC_G1_1-s1*Raw_P$PE_G1_1)/(1-s1*s2)
PE_G1_1<-(Raw_P$PE_G1_1-s2*Raw_F$FITC_G1_1)/(1-s1*s2)
FITC_H1_1<-(Raw_F$FITC_H1_1-s1*Raw_P$PE_H1_1)/(1-s1*s2)
PE_H1_1<-(Raw_P$PE_H1_1-s2*Raw_F$FITC_H1_1)/(1-s1*s2)

FITC_A2_1<-(Raw_F$FITC_A2_1-s1*Raw_P$PE_A2_1)/(1-s1*s2)
PE_A2_1<-(Raw_P$PE_A2_1-s2*Raw_F$FITC_A2_1)/(1-s1*s2)
FITC_B2_1<-(Raw_F$FITC_B2_1-s1*Raw_P$PE_B2_1)/(1-s1*s2)
PE_B2_1<-(Raw_P$PE_B2_1-s2*Raw_F$FITC_B2_1)/(1-s1*s2)
FITC_C2_1<-(Raw_F$FITC_C2_1-s1*Raw_P$PE_C2_1)/(1-s1*s2)
PE_C2_1<-(Raw_P$PE_C2_1-s2*Raw_F$FITC_C2_1)/(1-s1*s2)
FITC_D2_1<-(Raw_F$FITC_D2_1-s1*Raw_P$PE_D2_1)/(1-s1*s2)
PE_D2_1<-(Raw_P$PE_D2_1-s2*Raw_F$FITC_D2_1)/(1-s1*s2)
FITC_E2_1<-(Raw_F$FITC_E2_1-s1*Raw_P$PE_E2_1)/(1-s1*s2)
PE_E2_1<-(Raw_P$PE_E2_1-s2*Raw_F$FITC_E2_1)/(1-s1*s2)
FITC_F2_1<-(Raw_F$FITC_F2_1-s1*Raw_P$PE_F2_1)/(1-s1*s2)
PE_F2_1<-(Raw_P$PE_F2_1-s2*Raw_F$FITC_F2_1)/(1-s1*s2)
FITC_G2_1<-(Raw_F$FITC_G2_1-s1*Raw_P$PE_G2_1)/(1-s1*s2)
PE_G2_1<-(Raw_P$PE_G2_1-s2*Raw_F$FITC_G2_1)/(1-s1*s2)
FITC_H2_1<-(Raw_F$FITC_H2_1-s1*Raw_P$PE_H2_1)/(1-s1*s2)
PE_H2_1<-(Raw_P$PE_H2_1-s2*Raw_F$FITC_H2_1)/(1-s1*s2)

FITC_A3_1<-(Raw_F$FITC_A3_1-s1*Raw_P$PE_A3_1)/(1-s1*s2)
PE_A3_1<-(Raw_P$PE_A3_1-s2*Raw_F$FITC_A3_1)/(1-s1*s2)
FITC_B3_1<-(Raw_F$FITC_B3_1-s1*Raw_P$PE_B3_1)/(1-s1*s2)
PE_B3_1<-(Raw_P$PE_B3_1-s2*Raw_F$FITC_B3_1)/(1-s1*s2)
FITC_C3_1<-(Raw_F$FITC_C3_1-s1*Raw_P$PE_C3_1)/(1-s1*s2)
PE_C3_1<-(Raw_P$PE_C3_1-s2*Raw_F$FITC_C3_1)/(1-s1*s2)
FITC_D3_1<-(Raw_F$FITC_D3_1-s1*Raw_P$PE_D3_1)/(1-s1*s2)
PE_D3_1<-(Raw_P$PE_D3_1-s2*Raw_F$FITC_D3_1)/(1-s1*s2)
FITC_E3_1<-(Raw_F$FITC_E3_1-s1*Raw_P$PE_E3_1)/(1-s1*s2)
PE_E3_1<-(Raw_P$PE_E3_1-s2*Raw_F$FITC_E3_1)/(1-s1*s2)
FITC_F3_1<-(Raw_F$FITC_F3_1-s1*Raw_P$PE_F3_1)/(1-s1*s2)
PE_F3_1<-(Raw_P$PE_F3_1-s2*Raw_F$FITC_F3_1)/(1-s1*s2)
FITC_G3_1<-(Raw_F$FITC_G3_1-s1*Raw_P$PE_G3_1)/(1-s1*s2)
PE_G3_1<-(Raw_P$PE_G3_1-s2*Raw_F$FITC_G3_1)/(1-s1*s2)
FITC_H3_1<-(Raw_F$FITC_H3_1-s1*Raw_P$PE_H3_1)/(1-s1*s2)
PE_H3_1<-(Raw_P$PE_H3_1-s2*Raw_F$FITC_H3_1)/(1-s1*s2)

FITC_A4_1<-(Raw_F$FITC_A4_1-s1*Raw_P$PE_A4_1)/(1-s1*s2)
PE_A4_1<-(Raw_P$PE_A4_1-s2*Raw_F$FITC_A4_1)/(1-s1*s2)
FITC_B4_1<-(Raw_F$FITC_B4_1-s1*Raw_P$PE_B4_1)/(1-s1*s2)
PE_B4_1<-(Raw_P$PE_B4_1-s2*Raw_F$FITC_B4_1)/(1-s1*s2)
FITC_C4_1<-(Raw_F$FITC_C4_1-s1*Raw_P$PE_C4_1)/(1-s1*s2)
PE_C4_1<-(Raw_P$PE_C4_1-s2*Raw_F$FITC_C4_1)/(1-s1*s2)
FITC_D4_1<-(Raw_F$FITC_D4_1-s1*Raw_P$PE_D4_1)/(1-s1*s2)
PE_D4_1<-(Raw_P$PE_D4_1-s2*Raw_F$FITC_D4_1)/(1-s1*s2)
FITC_E4_1<-(Raw_F$FITC_E4_1-s1*Raw_P$PE_E4_1)/(1-s1*s2)
PE_E4_1<-(Raw_P$PE_E4_1-s2*Raw_F$FITC_E4_1)/(1-s1*s2)
FITC_F4_1<-(Raw_F$FITC_F4_1-s1*Raw_P$PE_F4_1)/(1-s1*s2)
PE_F4_1<-(Raw_P$PE_F4_1-s2*Raw_F$FITC_F4_1)/(1-s1*s2)
FITC_G4_1<-(Raw_F$FITC_G4_1-s1*Raw_P$PE_G4_1)/(1-s1*s2)
PE_G4_1<-(Raw_P$PE_G4_1-s2*Raw_F$FITC_G4_1)/(1-s1*s2)
FITC_H4_1<-(Raw_F$FITC_H4_1-s1*Raw_P$PE_H4_1)/(1-s1*s2)
PE_H4_1<-(Raw_P$PE_H4_1-s2*Raw_F$FITC_H4_1)/(1-s1*s2)

FITC_A5_1<-(Raw_F$FITC_A5_1-s1*Raw_P$PE_A5_1)/(1-s1*s2)
PE_A5_1<-(Raw_P$PE_A5_1-s2*Raw_F$FITC_A5_1)/(1-s1*s2)
FITC_B5_1<-(Raw_F$FITC_B5_1-s1*Raw_P$PE_B5_1)/(1-s1*s2)
PE_B5_1<-(Raw_P$PE_B5_1-s2*Raw_F$FITC_B5_1)/(1-s1*s2)
FITC_C5_1<-(Raw_F$FITC_C5_1-s1*Raw_P$PE_C5_1)/(1-s1*s2)
PE_C5_1<-(Raw_P$PE_C5_1-s2*Raw_F$FITC_C5_1)/(1-s1*s2)
FITC_D5_1<-(Raw_F$FITC_D5_1-s1*Raw_P$PE_D5_1)/(1-s1*s2)
PE_D5_1<-(Raw_P$PE_D5_1-s2*Raw_F$FITC_D5_1)/(1-s1*s2)
FITC_E5_1<-(Raw_F$FITC_E5_1-s1*Raw_P$PE_E5_1)/(1-s1*s2)
PE_E5_1<-(Raw_P$PE_E5_1-s2*Raw_F$FITC_E5_1)/(1-s1*s2)
FITC_F5_1<-(Raw_F$FITC_F5_1-s1*Raw_P$PE_F5_1)/(1-s1*s2)
PE_F5_1<-(Raw_P$PE_F5_1-s2*Raw_F$FITC_F5_1)/(1-s1*s2)
FITC_G5_1<-(Raw_F$FITC_G5_1-s1*Raw_P$PE_G5_1)/(1-s1*s2)
PE_G5_1<-(Raw_P$PE_G5_1-s2*Raw_F$FITC_G5_1)/(1-s1*s2)
FITC_H5_1<-(Raw_F$FITC_H5_1-s1*Raw_P$PE_H5_1)/(1-s1*s2)
PE_H5_1<-(Raw_P$PE_H5_1-s2*Raw_F$FITC_H5_1)/(1-s1*s2)

FITC_A6_1<-(Raw_F$FITC_A6_1-s1*Raw_P$PE_A6_1)/(1-s1*s2)
PE_A6_1<-(Raw_P$PE_A6_1-s2*Raw_F$FITC_A6_1)/(1-s1*s2)
FITC_B6_1<-(Raw_F$FITC_B6_1-s1*Raw_P$PE_B6_1)/(1-s1*s2)
PE_B6_1<-(Raw_P$PE_B6_1-s2*Raw_F$FITC_B6_1)/(1-s1*s2)
FITC_C6_1<-(Raw_F$FITC_C6_1-s1*Raw_P$PE_C6_1)/(1-s1*s2)
PE_C6_1<-(Raw_P$PE_C6_1-s2*Raw_F$FITC_C6_1)/(1-s1*s2)
FITC_D6_1<-(Raw_F$FITC_D6_1-s1*Raw_P$PE_D6_1)/(1-s1*s2)
PE_D6_1<-(Raw_P$PE_D6_1-s2*Raw_F$FITC_D6_1)/(1-s1*s2)
FITC_E6_1<-(Raw_F$FITC_E6_1-s1*Raw_P$PE_E6_1)/(1-s1*s2)
PE_E6_1<-(Raw_P$PE_E6_1-s2*Raw_F$FITC_E6_1)/(1-s1*s2)
FITC_F6_1<-(Raw_F$FITC_F6_1-s1*Raw_P$PE_F6_1)/(1-s1*s2)
PE_F6_1<-(Raw_P$PE_F6_1-s2*Raw_F$FITC_F6_1)/(1-s1*s2)
FITC_G6_1<-(Raw_F$FITC_G6_1-s1*Raw_P$PE_G6_1)/(1-s1*s2)
PE_G6_1<-(Raw_P$PE_G6_1-s2*Raw_F$FITC_G6_1)/(1-s1*s2)
FITC_H6_1<-(Raw_F$FITC_H6_1-s1*Raw_P$PE_H6_1)/(1-s1*s2)
PE_H6_1<-(Raw_P$PE_H6_1-s2*Raw_F$FITC_H6_1)/(1-s1*s2)

FITC_A7_1<-(Raw_F$FITC_A7_1-s1*Raw_P$PE_A7_1)/(1-s1*s2)
PE_A7_1<-(Raw_P$PE_A7_1-s2*Raw_F$FITC_A7_1)/(1-s1*s2)
FITC_B7_1<-(Raw_F$FITC_B7_1-s1*Raw_P$PE_B7_1)/(1-s1*s2)
PE_B7_1<-(Raw_P$PE_B7_1-s2*Raw_F$FITC_B7_1)/(1-s1*s2)
FITC_C7_1<-(Raw_F$FITC_C7_1-s1*Raw_P$PE_C7_1)/(1-s1*s2)
PE_C7_1<-(Raw_P$PE_C7_1-s2*Raw_F$FITC_C7_1)/(1-s1*s2)
FITC_D7_1<-(Raw_F$FITC_D7_1-s1*Raw_P$PE_D7_1)/(1-s1*s2)
PE_D7_1<-(Raw_P$PE_D7_1-s2*Raw_F$FITC_D7_1)/(1-s1*s2)
FITC_E7_1<-(Raw_F$FITC_E7_1-s1*Raw_P$PE_E7_1)/(1-s1*s2)
PE_E7_1<-(Raw_P$PE_E7_1-s2*Raw_F$FITC_E7_1)/(1-s1*s2)
FITC_F7_1<-(Raw_F$FITC_F7_1-s1*Raw_P$PE_F7_1)/(1-s1*s2)
PE_F7_1<-(Raw_P$PE_F7_1-s2*Raw_F$FITC_F7_1)/(1-s1*s2)
FITC_G7_1<-(Raw_F$FITC_G7_1-s1*Raw_P$PE_G7_1)/(1-s1*s2)
PE_G7_1<-(Raw_P$PE_G7_1-s2*Raw_F$FITC_G7_1)/(1-s1*s2)
FITC_H7_1<-(Raw_F$FITC_H7_1-s1*Raw_P$PE_H7_1)/(1-s1*s2)
PE_H7_1<-(Raw_P$PE_H7_1-s2*Raw_F$FITC_H7_1)/(1-s1*s2)

FITC_A8_1<-(Raw_F$FITC_A8_1-s1*Raw_P$PE_A8_1)/(1-s1*s2)
PE_A8_1<-(Raw_P$PE_A8_1-s2*Raw_F$FITC_A8_1)/(1-s1*s2)
FITC_B8_1<-(Raw_F$FITC_B8_1-s1*Raw_P$PE_B8_1)/(1-s1*s2)
PE_B8_1<-(Raw_P$PE_B8_1-s2*Raw_F$FITC_B8_1)/(1-s1*s2)
FITC_C8_1<-(Raw_F$FITC_C8_1-s1*Raw_P$PE_C8_1)/(1-s1*s2)
PE_C8_1<-(Raw_P$PE_C8_1-s2*Raw_F$FITC_C8_1)/(1-s1*s2)
FITC_D8_1<-(Raw_F$FITC_D8_1-s1*Raw_P$PE_D8_1)/(1-s1*s2)
PE_D8_1<-(Raw_P$PE_D8_1-s2*Raw_F$FITC_D8_1)/(1-s1*s2)
FITC_E8_1<-(Raw_F$FITC_E8_1-s1*Raw_P$PE_E8_1)/(1-s1*s2)
PE_E8_1<-(Raw_P$PE_E8_1-s2*Raw_F$FITC_E8_1)/(1-s1*s2)
FITC_F8_1<-(Raw_F$FITC_F8_1-s1*Raw_P$PE_F8_1)/(1-s1*s2)
PE_F8_1<-(Raw_P$PE_F8_1-s2*Raw_F$FITC_F8_1)/(1-s1*s2)
FITC_G8_1<-(Raw_F$FITC_G8_1-s1*Raw_P$PE_G8_1)/(1-s1*s2)
PE_G8_1<-(Raw_P$PE_G8_1-s2*Raw_F$FITC_G8_1)/(1-s1*s2)
FITC_H8_1<-(Raw_F$FITC_H8_1-s1*Raw_P$PE_H8_1)/(1-s1*s2)
PE_H8_1<-(Raw_P$PE_H8_1-s2*Raw_F$FITC_H8_1)/(1-s1*s2)

FITC_A9_1<-(Raw_F$FITC_A9_1-s1*Raw_P$PE_A9_1)/(1-s1*s2)
PE_A9_1<-(Raw_P$PE_A9_1-s2*Raw_F$FITC_A9_1)/(1-s1*s2)
FITC_B9_1<-(Raw_F$FITC_B9_1-s1*Raw_P$PE_B9_1)/(1-s1*s2)
PE_B9_1<-(Raw_P$PE_B9_1-s2*Raw_F$FITC_B9_1)/(1-s1*s2)
FITC_C9_1<-(Raw_F$FITC_C9_1-s1*Raw_P$PE_C9_1)/(1-s1*s2)
PE_C9_1<-(Raw_P$PE_C9_1-s2*Raw_F$FITC_C9_1)/(1-s1*s2)
FITC_D9_1<-(Raw_F$FITC_D9_1-s1*Raw_P$PE_D9_1)/(1-s1*s2)
PE_D9_1<-(Raw_P$PE_D9_1-s2*Raw_F$FITC_D9_1)/(1-s1*s2)
FITC_E9_1<-(Raw_F$FITC_E9_1-s1*Raw_P$PE_E9_1)/(1-s1*s2)
PE_E9_1<-(Raw_P$PE_E9_1-s2*Raw_F$FITC_E9_1)/(1-s1*s2)
FITC_F9_1<-(Raw_F$FITC_F9_1-s1*Raw_P$PE_F9_1)/(1-s1*s2)
PE_F9_1<-(Raw_P$PE_F9_1-s2*Raw_F$FITC_F9_1)/(1-s1*s2)
FITC_G9_1<-(Raw_F$FITC_G9_1-s1*Raw_P$PE_G9_1)/(1-s1*s2)
PE_G9_1<-(Raw_P$PE_G9_1-s2*Raw_F$FITC_G9_1)/(1-s1*s2)
FITC_H9_1<-(Raw_F$FITC_H9_1-s1*Raw_P$PE_H9_1)/(1-s1*s2)
PE_H9_1<-(Raw_P$PE_H9_1-s2*Raw_F$FITC_H9_1)/(1-s1*s2)

FITC_A10_1<-(Raw_F$FITC_A10_1-s1*Raw_P$PE_A10_1)/(1-s1*s2)
PE_A10_1<-(Raw_P$PE_A10_1-s2*Raw_F$FITC_A10_1)/(1-s1*s2)
FITC_B10_1<-(Raw_F$FITC_B10_1-s1*Raw_P$PE_B10_1)/(1-s1*s2)
PE_B10_1<-(Raw_P$PE_B10_1-s2*Raw_F$FITC_B10_1)/(1-s1*s2)
FITC_C10_1<-(Raw_F$FITC_C10_1-s1*Raw_P$PE_C10_1)/(1-s1*s2)
PE_C10_1<-(Raw_P$PE_C10_1-s2*Raw_F$FITC_C10_1)/(1-s1*s2)
FITC_D10_1<-(Raw_F$FITC_D10_1-s1*Raw_P$PE_D10_1)/(1-s1*s2)
PE_D10_1<-(Raw_P$PE_D10_1-s2*Raw_F$FITC_D10_1)/(1-s1*s2)
FITC_E10_1<-(Raw_F$FITC_E10_1-s1*Raw_P$PE_E10_1)/(1-s1*s2)
PE_E10_1<-(Raw_P$PE_E10_1-s2*Raw_F$FITC_E10_1)/(1-s1*s2)
FITC_F10_1<-(Raw_F$FITC_F10_1-s1*Raw_P$PE_F10_1)/(1-s1*s2)
PE_F10_1<-(Raw_P$PE_F10_1-s2*Raw_F$FITC_F10_1)/(1-s1*s2)
FITC_G10_1<-(Raw_F$FITC_G10_1-s1*Raw_P$PE_G10_1)/(1-s1*s2)
PE_G10_1<-(Raw_P$PE_G10_1-s2*Raw_F$FITC_G10_1)/(1-s1*s2)
FITC_H10_1<-(Raw_F$FITC_H10_1-s1*Raw_P$PE_H10_1)/(1-s1*s2)
PE_H10_1<-(Raw_P$PE_H10_1-s2*Raw_F$FITC_H10_1)/(1-s1*s2)

FITC_A11_1<-(Raw_F$FITC_A11_1-s1*Raw_P$PE_A11_1)/(1-s1*s2)
PE_A11_1<-(Raw_P$PE_A11_1-s2*Raw_F$FITC_A11_1)/(1-s1*s2)
FITC_B11_1<-(Raw_F$FITC_B11_1-s1*Raw_P$PE_B11_1)/(1-s1*s2)
PE_B11_1<-(Raw_P$PE_B11_1-s2*Raw_F$FITC_B11_1)/(1-s1*s2)
FITC_C11_1<-(Raw_F$FITC_C11_1-s1*Raw_P$PE_C11_1)/(1-s1*s2)
PE_C11_1<-(Raw_P$PE_C11_1-s2*Raw_F$FITC_C11_1)/(1-s1*s2)
FITC_D11_1<-(Raw_F$FITC_D11_1-s1*Raw_P$PE_D11_1)/(1-s1*s2)
PE_D11_1<-(Raw_P$PE_D11_1-s2*Raw_F$FITC_D11_1)/(1-s1*s2)
FITC_E11_1<-(Raw_F$FITC_E11_1-s1*Raw_P$PE_E11_1)/(1-s1*s2)
PE_E11_1<-(Raw_P$PE_E11_1-s2*Raw_F$FITC_E11_1)/(1-s1*s2)
FITC_F11_1<-(Raw_F$FITC_F11_1-s1*Raw_P$PE_F11_1)/(1-s1*s2)
PE_F11_1<-(Raw_P$PE_F11_1-s2*Raw_F$FITC_F11_1)/(1-s1*s2)
FITC_G11_1<-(Raw_F$FITC_G11_1-s1*Raw_P$PE_G11_1)/(1-s1*s2)
PE_G11_1<-(Raw_P$PE_G11_1-s2*Raw_F$FITC_G11_1)/(1-s1*s2)
FITC_H11_1<-(Raw_F$FITC_H11_1-s1*Raw_P$PE_H11_1)/(1-s1*s2)
PE_H11_1<-(Raw_P$PE_H11_1-s2*Raw_F$FITC_H11_1)/(1-s1*s2)

FITC_A12_1<-(Raw_F$FITC_A12_1-s1*Raw_P$PE_A12_1)/(1-s1*s2)
PE_A12_1<-(Raw_P$PE_A12_1-s2*Raw_F$FITC_A12_1)/(1-s1*s2)
FITC_B12_1<-(Raw_F$FITC_B12_1-s1*Raw_P$PE_B12_1)/(1-s1*s2)
PE_B12_1<-(Raw_P$PE_B12_1-s2*Raw_F$FITC_B12_1)/(1-s1*s2)
FITC_C12_1<-(Raw_F$FITC_C12_1-s1*Raw_P$PE_C12_1)/(1-s1*s2)
PE_C12_1<-(Raw_P$PE_C12_1-s2*Raw_F$FITC_C12_1)/(1-s1*s2)
FITC_D12_1<-(Raw_F$FITC_D12_1-s1*Raw_P$PE_D12_1)/(1-s1*s2)
PE_D12_1<-(Raw_P$PE_D12_1-s2*Raw_F$FITC_D12_1)/(1-s1*s2)
FITC_E12_1<-(Raw_F$FITC_E12_1-s1*Raw_P$PE_E12_1)/(1-s1*s2)
PE_E12_1<-(Raw_P$PE_E12_1-s2*Raw_F$FITC_E12_1)/(1-s1*s2)
FITC_F12_1<-(Raw_F$FITC_F12_1-s1*Raw_P$PE_F12_1)/(1-s1*s2)
PE_F12_1<-(Raw_P$PE_F12_1-s2*Raw_F$FITC_F12_1)/(1-s1*s2)
FITC_G12_1<-(Raw_F$FITC_G12_1-s1*Raw_P$PE_G12_1)/(1-s1*s2)
PE_G12_1<-(Raw_P$PE_G12_1-s2*Raw_F$FITC_G12_1)/(1-s1*s2)
FITC_H12_1<-(Raw_F$FITC_H12_1-s1*Raw_P$PE_H12_1)/(1-s1*s2)
PE_H12_1<-(Raw_P$PE_H12_1-s2*Raw_F$FITC_H12_1)/(1-s1*s2)

FITC_A1_2<-(Raw_F$FITC_A1_2-s1*Raw_P$PE_A1_2)/(1-s1*s2)
PE_A1_2<-(Raw_P$PE_A1_2-s2*Raw_F$FITC_A1_2)/(1-s1*s2)
FITC_B1_2<-(Raw_F$FITC_B1_2-s1*Raw_P$PE_B1_2)/(1-s1*s2)
PE_B1_2<-(Raw_P$PE_B1_2-s2*Raw_F$FITC_B1_2)/(1-s1*s2)
FITC_C1_2<-(Raw_F$FITC_C1_2-s1*Raw_P$PE_C1_2)/(1-s1*s2)
PE_C1_2<-(Raw_P$PE_C1_2-s2*Raw_F$FITC_C1_2)/(1-s1*s2)
FITC_D1_2<-(Raw_F$FITC_D1_2-s1*Raw_P$PE_D1_2)/(1-s1*s2)
PE_D1_2<-(Raw_P$PE_D1_2-s2*Raw_F$FITC_D1_2)/(1-s1*s2)
FITC_E1_2<-(Raw_F$FITC_E1_2-s1*Raw_P$PE_E1_2)/(1-s1*s2)
PE_E1_2<-(Raw_P$PE_E1_2-s2*Raw_F$FITC_E1_2)/(1-s1*s2)
FITC_F1_2<-(Raw_F$FITC_F1_2-s1*Raw_P$PE_F1_2)/(1-s1*s2)
PE_F1_2<-(Raw_P$PE_F1_2-s2*Raw_F$FITC_F1_2)/(1-s1*s2)
FITC_G1_2<-(Raw_F$FITC_G1_2-s1*Raw_P$PE_G1_2)/(1-s1*s2)
PE_G1_2<-(Raw_P$PE_G1_2-s2*Raw_F$FITC_G1_2)/(1-s1*s2)
FITC_H1_2<-(Raw_F$FITC_H1_2-s1*Raw_P$PE_H1_2)/(1-s1*s2)
PE_H1_2<-(Raw_P$PE_H1_2-s2*Raw_F$FITC_H1_2)/(1-s1*s2)

FITC_A2_2<-(Raw_F$FITC_A2_2-s1*Raw_P$PE_A2_2)/(1-s1*s2)
PE_A2_2<-(Raw_P$PE_A2_2-s2*Raw_F$FITC_A2_2)/(1-s1*s2)
FITC_B2_2<-(Raw_F$FITC_B2_2-s1*Raw_P$PE_B2_2)/(1-s1*s2)
PE_B2_2<-(Raw_P$PE_B2_2-s2*Raw_F$FITC_B2_2)/(1-s1*s2)
FITC_C2_2<-(Raw_F$FITC_C2_2-s1*Raw_P$PE_C2_2)/(1-s1*s2)
PE_C2_2<-(Raw_P$PE_C2_2-s2*Raw_F$FITC_C2_2)/(1-s1*s2)
FITC_D2_2<-(Raw_F$FITC_D2_2-s1*Raw_P$PE_D2_2)/(1-s1*s2)
PE_D2_2<-(Raw_P$PE_D2_2-s2*Raw_F$FITC_D2_2)/(1-s1*s2)
FITC_E2_2<-(Raw_F$FITC_E2_2-s1*Raw_P$PE_E2_2)/(1-s1*s2)
PE_E2_2<-(Raw_P$PE_E2_2-s2*Raw_F$FITC_E2_2)/(1-s1*s2)
FITC_F2_2<-(Raw_F$FITC_F2_2-s1*Raw_P$PE_F2_2)/(1-s1*s2)
PE_F2_2<-(Raw_P$PE_F2_2-s2*Raw_F$FITC_F2_2)/(1-s1*s2)
FITC_G2_2<-(Raw_F$FITC_G2_2-s1*Raw_P$PE_G2_2)/(1-s1*s2)
PE_G2_2<-(Raw_P$PE_G2_2-s2*Raw_F$FITC_G2_2)/(1-s1*s2)
FITC_H2_2<-(Raw_F$FITC_H2_2-s1*Raw_P$PE_H2_2)/(1-s1*s2)
PE_H2_2<-(Raw_P$PE_H2_2-s2*Raw_F$FITC_H2_2)/(1-s1*s2)

FITC_A3_2<-(Raw_F$FITC_A3_2-s1*Raw_P$PE_A3_2)/(1-s1*s2)
PE_A3_2<-(Raw_P$PE_A3_2-s2*Raw_F$FITC_A3_2)/(1-s1*s2)
FITC_B3_2<-(Raw_F$FITC_B3_2-s1*Raw_P$PE_B3_2)/(1-s1*s2)
PE_B3_2<-(Raw_P$PE_B3_2-s2*Raw_F$FITC_B3_2)/(1-s1*s2)
FITC_C3_2<-(Raw_F$FITC_C3_2-s1*Raw_P$PE_C3_2)/(1-s1*s2)
PE_C3_2<-(Raw_P$PE_C3_2-s2*Raw_F$FITC_C3_2)/(1-s1*s2)
FITC_D3_2<-(Raw_F$FITC_D3_2-s1*Raw_P$PE_D3_2)/(1-s1*s2)
PE_D3_2<-(Raw_P$PE_D3_2-s2*Raw_F$FITC_D3_2)/(1-s1*s2)
FITC_E3_2<-(Raw_F$FITC_E3_2-s1*Raw_P$PE_E3_2)/(1-s1*s2)
PE_E3_2<-(Raw_P$PE_E3_2-s2*Raw_F$FITC_E3_2)/(1-s1*s2)
FITC_F3_2<-(Raw_F$FITC_F3_2-s1*Raw_P$PE_F3_2)/(1-s1*s2)
PE_F3_2<-(Raw_P$PE_F3_2-s2*Raw_F$FITC_F3_2)/(1-s1*s2)
FITC_G3_2<-(Raw_F$FITC_G3_2-s1*Raw_P$PE_G3_2)/(1-s1*s2)
PE_G3_2<-(Raw_P$PE_G3_2-s2*Raw_F$FITC_G3_2)/(1-s1*s2)
FITC_H3_2<-(Raw_F$FITC_H3_2-s1*Raw_P$PE_H3_2)/(1-s1*s2)
PE_H3_2<-(Raw_P$PE_H3_2-s2*Raw_F$FITC_H3_2)/(1-s1*s2)

FITC_A4_2<-(Raw_F$FITC_A4_2-s1*Raw_P$PE_A4_2)/(1-s1*s2)
PE_A4_2<-(Raw_P$PE_A4_2-s2*Raw_F$FITC_A4_2)/(1-s1*s2)
FITC_B4_2<-(Raw_F$FITC_B4_2-s1*Raw_P$PE_B4_2)/(1-s1*s2)
PE_B4_2<-(Raw_P$PE_B4_2-s2*Raw_F$FITC_B4_2)/(1-s1*s2)
FITC_C4_2<-(Raw_F$FITC_C4_2-s1*Raw_P$PE_C4_2)/(1-s1*s2)
PE_C4_2<-(Raw_P$PE_C4_2-s2*Raw_F$FITC_C4_2)/(1-s1*s2)
FITC_D4_2<-(Raw_F$FITC_D4_2-s1*Raw_P$PE_D4_2)/(1-s1*s2)
PE_D4_2<-(Raw_P$PE_D4_2-s2*Raw_F$FITC_D4_2)/(1-s1*s2)
FITC_E4_2<-(Raw_F$FITC_E4_2-s1*Raw_P$PE_E4_2)/(1-s1*s2)
PE_E4_2<-(Raw_P$PE_E4_2-s2*Raw_F$FITC_E4_2)/(1-s1*s2)
FITC_F4_2<-(Raw_F$FITC_F4_2-s1*Raw_P$PE_F4_2)/(1-s1*s2)
PE_F4_2<-(Raw_P$PE_F4_2-s2*Raw_F$FITC_F4_2)/(1-s1*s2)
FITC_G4_2<-(Raw_F$FITC_G4_2-s1*Raw_P$PE_G4_2)/(1-s1*s2)
PE_G4_2<-(Raw_P$PE_G4_2-s2*Raw_F$FITC_G4_2)/(1-s1*s2)
FITC_H4_2<-(Raw_F$FITC_H4_2-s1*Raw_P$PE_H4_2)/(1-s1*s2)
PE_H4_2<-(Raw_P$PE_H4_2-s2*Raw_F$FITC_H4_2)/(1-s1*s2)

FITC_A5_2<-(Raw_F$FITC_A5_2-s1*Raw_P$PE_A5_2)/(1-s1*s2)
PE_A5_2<-(Raw_P$PE_A5_2-s2*Raw_F$FITC_A5_2)/(1-s1*s2)
FITC_B5_2<-(Raw_F$FITC_B5_2-s1*Raw_P$PE_B5_2)/(1-s1*s2)
PE_B5_2<-(Raw_P$PE_B5_2-s2*Raw_F$FITC_B5_2)/(1-s1*s2)
FITC_C5_2<-(Raw_F$FITC_C5_2-s1*Raw_P$PE_C5_2)/(1-s1*s2)
PE_C5_2<-(Raw_P$PE_C5_2-s2*Raw_F$FITC_C5_2)/(1-s1*s2)
FITC_D5_2<-(Raw_F$FITC_D5_2-s1*Raw_P$PE_D5_2)/(1-s1*s2)
PE_D5_2<-(Raw_P$PE_D5_2-s2*Raw_F$FITC_D5_2)/(1-s1*s2)
FITC_E5_2<-(Raw_F$FITC_E5_2-s1*Raw_P$PE_E5_2)/(1-s1*s2)
PE_E5_2<-(Raw_P$PE_E5_2-s2*Raw_F$FITC_E5_2)/(1-s1*s2)
FITC_F5_2<-(Raw_F$FITC_F5_2-s1*Raw_P$PE_F5_2)/(1-s1*s2)
PE_F5_2<-(Raw_P$PE_F5_2-s2*Raw_F$FITC_F5_2)/(1-s1*s2)
FITC_G5_2<-(Raw_F$FITC_G5_2-s1*Raw_P$PE_G5_2)/(1-s1*s2)
PE_G5_2<-(Raw_P$PE_G5_2-s2*Raw_F$FITC_G5_2)/(1-s1*s2)
FITC_H5_2<-(Raw_F$FITC_H5_2-s1*Raw_P$PE_H5_2)/(1-s1*s2)
PE_H5_2<-(Raw_P$PE_H5_2-s2*Raw_F$FITC_H5_2)/(1-s1*s2)

FITC_A6_2<-(Raw_F$FITC_A6_2-s1*Raw_P$PE_A6_2)/(1-s1*s2)
PE_A6_2<-(Raw_P$PE_A6_2-s2*Raw_F$FITC_A6_2)/(1-s1*s2)
FITC_B6_2<-(Raw_F$FITC_B6_2-s1*Raw_P$PE_B6_2)/(1-s1*s2)
PE_B6_2<-(Raw_P$PE_B6_2-s2*Raw_F$FITC_B6_2)/(1-s1*s2)
FITC_C6_2<-(Raw_F$FITC_C6_2-s1*Raw_P$PE_C6_2)/(1-s1*s2)
PE_C6_2<-(Raw_P$PE_C6_2-s2*Raw_F$FITC_C6_2)/(1-s1*s2)
FITC_D6_2<-(Raw_F$FITC_D6_2-s1*Raw_P$PE_D6_2)/(1-s1*s2)
PE_D6_2<-(Raw_P$PE_D6_2-s2*Raw_F$FITC_D6_2)/(1-s1*s2)
FITC_E6_2<-(Raw_F$FITC_E6_2-s1*Raw_P$PE_E6_2)/(1-s1*s2)
PE_E6_2<-(Raw_P$PE_E6_2-s2*Raw_F$FITC_E6_2)/(1-s1*s2)
FITC_F6_2<-(Raw_F$FITC_F6_2-s1*Raw_P$PE_F6_2)/(1-s1*s2)
PE_F6_2<-(Raw_P$PE_F6_2-s2*Raw_F$FITC_F6_2)/(1-s1*s2)
FITC_G6_2<-(Raw_F$FITC_G6_2-s1*Raw_P$PE_G6_2)/(1-s1*s2)
PE_G6_2<-(Raw_P$PE_G6_2-s2*Raw_F$FITC_G6_2)/(1-s1*s2)
FITC_H6_2<-(Raw_F$FITC_H6_2-s1*Raw_P$PE_H6_2)/(1-s1*s2)
PE_H6_2<-(Raw_P$PE_H6_2-s2*Raw_F$FITC_H6_2)/(1-s1*s2)

FITC_A7_2<-(Raw_F$FITC_A7_2-s1*Raw_P$PE_A7_2)/(1-s1*s2)
PE_A7_2<-(Raw_P$PE_A7_2-s2*Raw_F$FITC_A7_2)/(1-s1*s2)
FITC_B7_2<-(Raw_F$FITC_B7_2-s1*Raw_P$PE_B7_2)/(1-s1*s2)
PE_B7_2<-(Raw_P$PE_B7_2-s2*Raw_F$FITC_B7_2)/(1-s1*s2)
FITC_C7_2<-(Raw_F$FITC_C7_2-s1*Raw_P$PE_C7_2)/(1-s1*s2)
PE_C7_2<-(Raw_P$PE_C7_2-s2*Raw_F$FITC_C7_2)/(1-s1*s2)
FITC_D7_2<-(Raw_F$FITC_D7_2-s1*Raw_P$PE_D7_2)/(1-s1*s2)
PE_D7_2<-(Raw_P$PE_D7_2-s2*Raw_F$FITC_D7_2)/(1-s1*s2)
FITC_E7_2<-(Raw_F$FITC_E7_2-s1*Raw_P$PE_E7_2)/(1-s1*s2)
PE_E7_2<-(Raw_P$PE_E7_2-s2*Raw_F$FITC_E7_2)/(1-s1*s2)
FITC_F7_2<-(Raw_F$FITC_F7_2-s1*Raw_P$PE_F7_2)/(1-s1*s2)
PE_F7_2<-(Raw_P$PE_F7_2-s2*Raw_F$FITC_F7_2)/(1-s1*s2)
FITC_G7_2<-(Raw_F$FITC_G7_2-s1*Raw_P$PE_G7_2)/(1-s1*s2)
PE_G7_2<-(Raw_P$PE_G7_2-s2*Raw_F$FITC_G7_2)/(1-s1*s2)
FITC_H7_2<-(Raw_F$FITC_H7_2-s1*Raw_P$PE_H7_2)/(1-s1*s2)
PE_H7_2<-(Raw_P$PE_H7_2-s2*Raw_F$FITC_H7_2)/(1-s1*s2)

FITC_A8_2<-(Raw_F$FITC_A8_2-s1*Raw_P$PE_A8_2)/(1-s1*s2)
PE_A8_2<-(Raw_P$PE_A8_2-s2*Raw_F$FITC_A8_2)/(1-s1*s2)
FITC_B8_2<-(Raw_F$FITC_B8_2-s1*Raw_P$PE_B8_2)/(1-s1*s2)
PE_B8_2<-(Raw_P$PE_B8_2-s2*Raw_F$FITC_B8_2)/(1-s1*s2)
FITC_C8_2<-(Raw_F$FITC_C8_2-s1*Raw_P$PE_C8_2)/(1-s1*s2)
PE_C8_2<-(Raw_P$PE_C8_2-s2*Raw_F$FITC_C8_2)/(1-s1*s2)
FITC_D8_2<-(Raw_F$FITC_D8_2-s1*Raw_P$PE_D8_2)/(1-s1*s2)
PE_D8_2<-(Raw_P$PE_D8_2-s2*Raw_F$FITC_D8_2)/(1-s1*s2)
FITC_E8_2<-(Raw_F$FITC_E8_2-s1*Raw_P$PE_E8_2)/(1-s1*s2)
PE_E8_2<-(Raw_P$PE_E8_2-s2*Raw_F$FITC_E8_2)/(1-s1*s2)
FITC_F8_2<-(Raw_F$FITC_F8_2-s1*Raw_P$PE_F8_2)/(1-s1*s2)
PE_F8_2<-(Raw_P$PE_F8_2-s2*Raw_F$FITC_F8_2)/(1-s1*s2)
FITC_G8_2<-(Raw_F$FITC_G8_2-s1*Raw_P$PE_G8_2)/(1-s1*s2)
PE_G8_2<-(Raw_P$PE_G8_2-s2*Raw_F$FITC_G8_2)/(1-s1*s2)
FITC_H8_2<-(Raw_F$FITC_H8_2-s1*Raw_P$PE_H8_2)/(1-s1*s2)
PE_H8_2<-(Raw_P$PE_H8_2-s2*Raw_F$FITC_H8_2)/(1-s1*s2)

FITC_A9_2<-(Raw_F$FITC_A9_2-s1*Raw_P$PE_A9_2)/(1-s1*s2)
PE_A9_2<-(Raw_P$PE_A9_2-s2*Raw_F$FITC_A9_2)/(1-s1*s2)
FITC_B9_2<-(Raw_F$FITC_B9_2-s1*Raw_P$PE_B9_2)/(1-s1*s2)
PE_B9_2<-(Raw_P$PE_B9_2-s2*Raw_F$FITC_B9_2)/(1-s1*s2)
FITC_C9_2<-(Raw_F$FITC_C9_2-s1*Raw_P$PE_C9_2)/(1-s1*s2)
PE_C9_2<-(Raw_P$PE_C9_2-s2*Raw_F$FITC_C9_2)/(1-s1*s2)
FITC_D9_2<-(Raw_F$FITC_D9_2-s1*Raw_P$PE_D9_2)/(1-s1*s2)
PE_D9_2<-(Raw_P$PE_D9_2-s2*Raw_F$FITC_D9_2)/(1-s1*s2)
FITC_E9_2<-(Raw_F$FITC_E9_2-s1*Raw_P$PE_E9_2)/(1-s1*s2)
PE_E9_2<-(Raw_P$PE_E9_2-s2*Raw_F$FITC_E9_2)/(1-s1*s2)
FITC_F9_2<-(Raw_F$FITC_F9_2-s1*Raw_P$PE_F9_2)/(1-s1*s2)
PE_F9_2<-(Raw_P$PE_F9_2-s2*Raw_F$FITC_F9_2)/(1-s1*s2)
FITC_G9_2<-(Raw_F$FITC_G9_2-s1*Raw_P$PE_G9_2)/(1-s1*s2)
PE_G9_2<-(Raw_P$PE_G9_2-s2*Raw_F$FITC_G9_2)/(1-s1*s2)
FITC_H9_2<-(Raw_F$FITC_H9_2-s1*Raw_P$PE_H9_2)/(1-s1*s2)
PE_H9_2<-(Raw_P$PE_H9_2-s2*Raw_F$FITC_H9_2)/(1-s1*s2)

FITC_A10_2<-(Raw_F$FITC_A10_2-s1*Raw_P$PE_A10_2)/(1-s1*s2)
PE_A10_2<-(Raw_P$PE_A10_2-s2*Raw_F$FITC_A10_2)/(1-s1*s2)
FITC_B10_2<-(Raw_F$FITC_B10_2-s1*Raw_P$PE_B10_2)/(1-s1*s2)
PE_B10_2<-(Raw_P$PE_B10_2-s2*Raw_F$FITC_B10_2)/(1-s1*s2)
FITC_C10_2<-(Raw_F$FITC_C10_2-s1*Raw_P$PE_C10_2)/(1-s1*s2)
PE_C10_2<-(Raw_P$PE_C10_2-s2*Raw_F$FITC_C10_2)/(1-s1*s2)
FITC_D10_2<-(Raw_F$FITC_D10_2-s1*Raw_P$PE_D10_2)/(1-s1*s2)
PE_D10_2<-(Raw_P$PE_D10_2-s2*Raw_F$FITC_D10_2)/(1-s1*s2)
FITC_E10_2<-(Raw_F$FITC_E10_2-s1*Raw_P$PE_E10_2)/(1-s1*s2)
PE_E10_2<-(Raw_P$PE_E10_2-s2*Raw_F$FITC_E10_2)/(1-s1*s2)
FITC_F10_2<-(Raw_F$FITC_F10_2-s1*Raw_P$PE_F10_2)/(1-s1*s2)
PE_F10_2<-(Raw_P$PE_F10_2-s2*Raw_F$FITC_F10_2)/(1-s1*s2)
FITC_G10_2<-(Raw_F$FITC_G10_2-s1*Raw_P$PE_G10_2)/(1-s1*s2)
PE_G10_2<-(Raw_P$PE_G10_2-s2*Raw_F$FITC_G10_2)/(1-s1*s2)
FITC_H10_2<-(Raw_F$FITC_H10_2-s1*Raw_P$PE_H10_2)/(1-s1*s2)
PE_H10_2<-(Raw_P$PE_H10_2-s2*Raw_F$FITC_H10_2)/(1-s1*s2)

FITC_A11_2<-(Raw_F$FITC_A11_2-s1*Raw_P$PE_A11_2)/(1-s1*s2)
PE_A11_2<-(Raw_P$PE_A11_2-s2*Raw_F$FITC_A11_2)/(1-s1*s2)
FITC_B11_2<-(Raw_F$FITC_B11_2-s1*Raw_P$PE_B11_2)/(1-s1*s2)
PE_B11_2<-(Raw_P$PE_B11_2-s2*Raw_F$FITC_B11_2)/(1-s1*s2)
FITC_C11_2<-(Raw_F$FITC_C11_2-s1*Raw_P$PE_C11_2)/(1-s1*s2)
PE_C11_2<-(Raw_P$PE_C11_2-s2*Raw_F$FITC_C11_2)/(1-s1*s2)
FITC_D11_2<-(Raw_F$FITC_D11_2-s1*Raw_P$PE_D11_2)/(1-s1*s2)
PE_D11_2<-(Raw_P$PE_D11_2-s2*Raw_F$FITC_D11_2)/(1-s1*s2)
FITC_E11_2<-(Raw_F$FITC_E11_2-s1*Raw_P$PE_E11_2)/(1-s1*s2)
PE_E11_2<-(Raw_P$PE_E11_2-s2*Raw_F$FITC_E11_2)/(1-s1*s2)
FITC_F11_2<-(Raw_F$FITC_F11_2-s1*Raw_P$PE_F11_2)/(1-s1*s2)
PE_F11_2<-(Raw_P$PE_F11_2-s2*Raw_F$FITC_F11_2)/(1-s1*s2)
FITC_G11_2<-(Raw_F$FITC_G11_2-s1*Raw_P$PE_G11_2)/(1-s1*s2)
PE_G11_2<-(Raw_P$PE_G11_2-s2*Raw_F$FITC_G11_2)/(1-s1*s2)
FITC_H11_2<-(Raw_F$FITC_H11_2-s1*Raw_P$PE_H11_2)/(1-s1*s2)
PE_H11_2<-(Raw_P$PE_H11_2-s2*Raw_F$FITC_H11_2)/(1-s1*s2)

FITC_A12_2<-(Raw_F$FITC_A12_2-s1*Raw_P$PE_A12_2)/(1-s1*s2)
PE_A12_2<-(Raw_P$PE_A12_2-s2*Raw_F$FITC_A12_2)/(1-s1*s2)
FITC_B12_2<-(Raw_F$FITC_B12_2-s1*Raw_P$PE_B12_2)/(1-s1*s2)
PE_B12_2<-(Raw_P$PE_B12_2-s2*Raw_F$FITC_B12_2)/(1-s1*s2)
FITC_C12_2<-(Raw_F$FITC_C12_2-s1*Raw_P$PE_C12_2)/(1-s1*s2)
PE_C12_2<-(Raw_P$PE_C12_2-s2*Raw_F$FITC_C12_2)/(1-s1*s2)
FITC_D12_2<-(Raw_F$FITC_D12_2-s1*Raw_P$PE_D12_2)/(1-s1*s2)
PE_D12_2<-(Raw_P$PE_D12_2-s2*Raw_F$FITC_D12_2)/(1-s1*s2)
FITC_E12_2<-(Raw_F$FITC_E12_2-s1*Raw_P$PE_E12_2)/(1-s1*s2)
PE_E12_2<-(Raw_P$PE_E12_2-s2*Raw_F$FITC_E12_2)/(1-s1*s2)
FITC_F12_2<-(Raw_F$FITC_F12_2-s1*Raw_P$PE_F12_2)/(1-s1*s2)
PE_F12_2<-(Raw_P$PE_F12_2-s2*Raw_F$FITC_F12_2)/(1-s1*s2)
FITC_G12_2<-(Raw_F$FITC_G12_2-s1*Raw_P$PE_G12_2)/(1-s1*s2)
PE_G12_2<-(Raw_P$PE_G12_2-s2*Raw_F$FITC_G12_2)/(1-s1*s2)
FITC_H12_2<-(Raw_F$FITC_H12_2-s1*Raw_P$PE_H12_2)/(1-s1*s2)
PE_H12_2<-(Raw_P$PE_H12_2-s2*Raw_F$FITC_H12_2)/(1-s1*s2)


le_A1_1<-length(FITC_A1_1)
le_B1_1<-length(FITC_B1_1)
le_C1_1<-length(FITC_C1_1)
le_D1_1<-length(FITC_D1_1)
le_E1_1<-length(FITC_E1_1)
le_F1_1<-length(FITC_F1_1)
le_G1_1<-length(FITC_G1_1)
le_H1_1<-length(FITC_H1_1)
le_A1_2<-length(FITC_A1_2)
le_B1_2<-length(FITC_B1_2)
le_C1_2<-length(FITC_C1_2)
le_D1_2<-length(FITC_D1_2)
le_E1_2<-length(FITC_E1_2)
le_F1_2<-length(FITC_F1_2)
le_G1_2<-length(FITC_G1_2)
le_H1_2<-length(FITC_H1_2)

le_A2_1<-length(FITC_A2_1)
le_B2_1<-length(FITC_B2_1)
le_C2_1<-length(FITC_C2_1)
le_D2_1<-length(FITC_D2_1)
le_E2_1<-length(FITC_E2_1)
le_F2_1<-length(FITC_F2_1)
le_G2_1<-length(FITC_G2_1)
le_H2_1<-length(FITC_H2_1)
le_A2_2<-length(FITC_A2_2)
le_B2_2<-length(FITC_B2_2)
le_C2_2<-length(FITC_C2_2)
le_D2_2<-length(FITC_D2_2)
le_E2_2<-length(FITC_E2_2)
le_F2_2<-length(FITC_F2_2)
le_G2_2<-length(FITC_G2_2)
le_H2_2<-length(FITC_H2_2)

le_A3_1<-length(FITC_A3_1)
le_B3_1<-length(FITC_B3_1)
le_C3_1<-length(FITC_C3_1)
le_D3_1<-length(FITC_D3_1)
le_E3_1<-length(FITC_E3_1)
le_F3_1<-length(FITC_F3_1)
le_G3_1<-length(FITC_G3_1)
le_H3_1<-length(FITC_H3_1)
le_A3_2<-length(FITC_A3_2)
le_B3_2<-length(FITC_B3_2)
le_C3_2<-length(FITC_C3_2)
le_D3_2<-length(FITC_D3_2)
le_E3_2<-length(FITC_E3_2)
le_F3_2<-length(FITC_F3_2)
le_G3_2<-length(FITC_G3_2)
le_H3_2<-length(FITC_H3_2)

le_A4_1<-length(FITC_A4_1)
le_B4_1<-length(FITC_B4_1)
le_C4_1<-length(FITC_C4_1)
le_D4_1<-length(FITC_D4_1)
le_E4_1<-length(FITC_E4_1)
le_F4_1<-length(FITC_F4_1)
le_G4_1<-length(FITC_G4_1)
le_H4_1<-length(FITC_H4_1)
le_A4_2<-length(FITC_A4_2)
le_B4_2<-length(FITC_B4_2)
le_C4_2<-length(FITC_C4_2)
le_D4_2<-length(FITC_D4_2)
le_E4_2<-length(FITC_E4_2)
le_F4_2<-length(FITC_F4_2)
le_G4_2<-length(FITC_G4_2)
le_H4_2<-length(FITC_H4_2)

le_A5_1<-length(FITC_A5_1)
le_B5_1<-length(FITC_B5_1)
le_C5_1<-length(FITC_C5_1)
le_D5_1<-length(FITC_D5_1)
le_E5_1<-length(FITC_E5_1)
le_F5_1<-length(FITC_F5_1)
le_G5_1<-length(FITC_G5_1)
le_H5_1<-length(FITC_H5_1)
le_A5_2<-length(FITC_A5_2)
le_B5_2<-length(FITC_B5_2)
le_C5_2<-length(FITC_C5_2)
le_D5_2<-length(FITC_D5_2)
le_E5_2<-length(FITC_E5_2)
le_F5_2<-length(FITC_F5_2)
le_G5_2<-length(FITC_G5_2)
le_H5_2<-length(FITC_H5_2)

le_A6_1<-length(FITC_A6_1)
le_B6_1<-length(FITC_B6_1)
le_C6_1<-length(FITC_C6_1)
le_D6_1<-length(FITC_D6_1)
le_E6_1<-length(FITC_E6_1)
le_F6_1<-length(FITC_F6_1)
le_G6_1<-length(FITC_G6_1)
le_H6_1<-length(FITC_H6_1)
le_A6_2<-length(FITC_A6_2)
le_B6_2<-length(FITC_B6_2)
le_C6_2<-length(FITC_C6_2)
le_D6_2<-length(FITC_D6_2)
le_E6_2<-length(FITC_E6_2)
le_F6_2<-length(FITC_F6_2)
le_G6_2<-length(FITC_G6_2)
le_H6_2<-length(FITC_H6_2)

le_A7_1<-length(FITC_A7_1)
le_B7_1<-length(FITC_B7_1)
le_C7_1<-length(FITC_C7_1)
le_D7_1<-length(FITC_D7_1)
le_E7_1<-length(FITC_E7_1)
le_F7_1<-length(FITC_F7_1)
le_G7_1<-length(FITC_G7_1)
le_H7_1<-length(FITC_H7_1)
le_A7_2<-length(FITC_A7_2)
le_B7_2<-length(FITC_B7_2)
le_C7_2<-length(FITC_C7_2)
le_D7_2<-length(FITC_D7_2)
le_E7_2<-length(FITC_E7_2)
le_F7_2<-length(FITC_F7_2)
le_G7_2<-length(FITC_G7_2)
le_H7_2<-length(FITC_H7_2)

le_A8_1<-length(FITC_A8_1)
le_B8_1<-length(FITC_B8_1)
le_C8_1<-length(FITC_C8_1)
le_D8_1<-length(FITC_D8_1)
le_E8_1<-length(FITC_E8_1)
le_F8_1<-length(FITC_F8_1)
le_G8_1<-length(FITC_G8_1)
le_H8_1<-length(FITC_H8_1)
le_A8_2<-length(FITC_A8_2)
le_B8_2<-length(FITC_B8_2)
le_C8_2<-length(FITC_C8_2)
le_D8_2<-length(FITC_D8_2)
le_E8_2<-length(FITC_E8_2)
le_F8_2<-length(FITC_F8_2)
le_G8_2<-length(FITC_G8_2)
le_H8_2<-length(FITC_H8_2)

le_A9_1<-length(FITC_A9_1)
le_B9_1<-length(FITC_B9_1)
le_C9_1<-length(FITC_C9_1)
le_D9_1<-length(FITC_D9_1)
le_E9_1<-length(FITC_E9_1)
le_F9_1<-length(FITC_F9_1)
le_G9_1<-length(FITC_G9_1)
le_H9_1<-length(FITC_H9_1)
le_A9_2<-length(FITC_A9_2)
le_B9_2<-length(FITC_B9_2)
le_C9_2<-length(FITC_C9_2)
le_D9_2<-length(FITC_D9_2)
le_E9_2<-length(FITC_E9_2)
le_F9_2<-length(FITC_F9_2)
le_G9_2<-length(FITC_G9_2)
le_H9_2<-length(FITC_H9_2)

le_A10_1<-length(FITC_A10_1)
le_B10_1<-length(FITC_B10_1)
le_C10_1<-length(FITC_C10_1)
le_D10_1<-length(FITC_D10_1)
le_E10_1<-length(FITC_E10_1)
le_F10_1<-length(FITC_F10_1)
le_G10_1<-length(FITC_G10_1)
le_H10_1<-length(FITC_H10_1)
le_A10_2<-length(FITC_A10_2)
le_B10_2<-length(FITC_B10_2)
le_C10_2<-length(FITC_C10_2)
le_D10_2<-length(FITC_D10_2)
le_E10_2<-length(FITC_E10_2)
le_F10_2<-length(FITC_F10_2)
le_G10_2<-length(FITC_G10_2)
le_H10_2<-length(FITC_H10_2)

le_A11_1<-length(FITC_A11_1)
le_B11_1<-length(FITC_B11_1)
le_C11_1<-length(FITC_C11_1)
le_D11_1<-length(FITC_D11_1)
le_E11_1<-length(FITC_E11_1)
le_F11_1<-length(FITC_F11_1)
le_G11_1<-length(FITC_G11_1)
le_H11_1<-length(FITC_H11_1)
le_A11_2<-length(FITC_A11_2)
le_B11_2<-length(FITC_B11_2)
le_C11_2<-length(FITC_C11_2)
le_D11_2<-length(FITC_D11_2)
le_E11_2<-length(FITC_E11_2)
le_F11_2<-length(FITC_F11_2)
le_G11_2<-length(FITC_G11_2)
le_H11_2<-length(FITC_H11_2)

le_A12_1<-length(FITC_A12_1)
le_B12_1<-length(FITC_B12_1)
le_C12_1<-length(FITC_C12_1)
le_D12_1<-length(FITC_D12_1)
le_E12_1<-length(FITC_E12_1)
le_F12_1<-length(FITC_F12_1)
le_G12_1<-length(FITC_G12_1)
le_H12_1<-length(FITC_H12_1)
le_A12_2<-length(FITC_A12_2)
le_B12_2<-length(FITC_B12_2)
le_C12_2<-length(FITC_C12_2)
le_D12_2<-length(FITC_D12_2)
le_E12_2<-length(FITC_E12_2)
le_F12_2<-length(FITC_F12_2)
le_G12_2<-length(FITC_G12_2)
le_H12_2<-length(FITC_H12_2)

#95% cutoff (upper 95% CI of mean) for A_FITC, B_PE

A = 7277.66
B = 7028.03

FITC_CUT_A1_1<-c()
for(x in 1:le_A1_1){
  if((FITC_A1_1[x]> A & PE_A1_1[x]>0) | 
     (PE_A1_1[x]>B & FITC_A1_1[x]>0)){
    FITC_CUT_A1_1=append(FITC_CUT_A1_1,FITC_A1_1[x])
  }}
PE_CUT_A1_1<-c()
for(x in 1:le_A1_1){
  if((FITC_A1_1[x]> A & PE_A1_1[x]>0) | 
     (PE_A1_1[x]>B & FITC_A1_1[x]>0)){	
    PE_CUT_A1_1=append(PE_CUT_A1_1,PE_A1_1[x])
  }}
FITC_CUT_B1_1<-c()
for(x in 1:le_B1_1){
  if((FITC_B1_1[x]> A & PE_B1_1[x]>0) | 
     (PE_B1_1[x]>B & FITC_B1_1[x]>0)){
    FITC_CUT_B1_1=append(FITC_CUT_B1_1,FITC_B1_1[x])
  }}
PE_CUT_B1_1<-c()
for(x in 1:le_B1_1){
  if((FITC_B1_1[x]> A & PE_B1_1[x]>0) | 
     (PE_B1_1[x]>B & FITC_B1_1[x]>0)){	
    PE_CUT_B1_1=append(PE_CUT_B1_1,PE_B1_1[x])
  }}
FITC_CUT_C1_1<-c()
for(x in 1:le_C1_1){
  if((FITC_C1_1[x]> A & PE_C1_1[x]>0) | 
     (PE_C1_1[x]>B & FITC_C1_1[x]>0)){
    FITC_CUT_C1_1=append(FITC_CUT_C1_1,FITC_C1_1[x])
  }}
PE_CUT_C1_1<-c()
for(x in 1:le_C1_1){
  if((FITC_C1_1[x]> A & PE_C1_1[x]>0) | 
     (PE_C1_1[x]>B & FITC_C1_1[x]>0)){	
    PE_CUT_C1_1=append(PE_CUT_C1_1,PE_C1_1[x])
  }}
FITC_CUT_D1_1<-c()
for(x in 1:le_D1_1){
  if((FITC_D1_1[x]> A & PE_D1_1[x]>0) | 
     (PE_D1_1[x]>B & FITC_D1_1[x]>0)){
    FITC_CUT_D1_1=append(FITC_CUT_D1_1,FITC_D1_1[x])
  }}
PE_CUT_D1_1<-c()
for(x in 1:le_D1_1){
  if((FITC_D1_1[x]> A & PE_D1_1[x]>0) | 
     (PE_D1_1[x]>B & FITC_D1_1[x]>0)){	
    PE_CUT_D1_1=append(PE_CUT_D1_1,PE_D1_1[x])
  }}
FITC_CUT_E1_1<-c()
for(x in 1:le_E1_1){
  if((FITC_E1_1[x]> A & PE_E1_1[x]>0) | 
     (PE_E1_1[x]>B & FITC_E1_1[x]>0)){
    FITC_CUT_E1_1=append(FITC_CUT_E1_1,FITC_E1_1[x])
  }}
PE_CUT_E1_1<-c()
for(x in 1:le_E1_1){
  if((FITC_E1_1[x]> A & PE_E1_1[x]>0) | 
     (PE_E1_1[x]>B & FITC_E1_1[x]>0)){	
    PE_CUT_E1_1=append(PE_CUT_E1_1,PE_E1_1[x])
  }}
FITC_CUT_F1_1<-c()
for(x in 1:le_F1_1){
  if((FITC_F1_1[x]> A & PE_F1_1[x]>0) | 
     (PE_F1_1[x]>B & FITC_F1_1[x]>0)){
    FITC_CUT_F1_1=append(FITC_CUT_F1_1,FITC_F1_1[x])
  }}
PE_CUT_F1_1<-c()
for(x in 1:le_F1_1){
  if((FITC_F1_1[x]> A & PE_F1_1[x]>0) | 
     (PE_F1_1[x]>B & FITC_F1_1[x]>0)){	
    PE_CUT_F1_1=append(PE_CUT_F1_1,PE_F1_1[x])
  }}
FITC_CUT_G1_1<-c()
for(x in 1:le_G1_1){
  if((FITC_G1_1[x]> A & PE_G1_1[x]>0) | 
     (PE_G1_1[x]>B & FITC_G1_1[x]>0)){
    FITC_CUT_G1_1=append(FITC_CUT_G1_1,FITC_G1_1[x])
  }}
PE_CUT_G1_1<-c()
for(x in 1:le_G1_1){
  if((FITC_G1_1[x]> A & PE_G1_1[x]>0) | 
     (PE_G1_1[x]>B & FITC_G1_1[x]>0)){	
    PE_CUT_G1_1=append(PE_CUT_G1_1,PE_G1_1[x])
  }}
FITC_CUT_H1_1<-c()
for(x in 1:le_H1_1){
  if((FITC_H1_1[x]> A & PE_H1_1[x]>0) | 
     (PE_H1_1[x]>B & FITC_H1_1[x]>0)){
    FITC_CUT_H1_1=append(FITC_CUT_H1_1,FITC_H1_1[x])
  }}
PE_CUT_H1_1<-c()
for(x in 1:le_H1_1){
  if((FITC_H1_1[x]> A & PE_H1_1[x]>0) | 
     (PE_H1_1[x]>B & FITC_H1_1[x]>0)){	
    PE_CUT_H1_1=append(PE_CUT_H1_1,PE_H1_1[x])
  }}
FITC_CUT_A1_2<-c()
for(x in 1:le_A1_2){
  if((FITC_A1_2[x]> A & PE_A1_2[x]>0) | 
     (PE_A1_2[x]>B & FITC_A1_2[x]>0)){
    FITC_CUT_A1_2=append(FITC_CUT_A1_2,FITC_A1_2[x])
  }}
PE_CUT_A1_2<-c()
for(x in 1:le_A1_2){
  if((FITC_A1_2[x]> A & PE_A1_2[x]>0) | 
     (PE_A1_2[x]>B & FITC_A1_2[x]>0)){	
    PE_CUT_A1_2=append(PE_CUT_A1_2,PE_A1_2[x])
  }}
FITC_CUT_B1_2<-c()
for(x in 1:le_B1_2){
  if((FITC_B1_2[x]> A & PE_B1_2[x]>0) | 
     (PE_B1_2[x]>B & FITC_B1_2[x]>0)){
    FITC_CUT_B1_2=append(FITC_CUT_B1_2,FITC_B1_2[x])
  }}
PE_CUT_B1_2<-c()
for(x in 1:le_B1_2){
  if((FITC_B1_2[x]> A & PE_B1_2[x]>0) | 
     (PE_B1_2[x]>B & FITC_B1_2[x]>0)){	
    PE_CUT_B1_2=append(PE_CUT_B1_2,PE_B1_2[x])
  }}
FITC_CUT_C1_2<-c()
for(x in 1:le_C1_2){
  if((FITC_C1_2[x]> A & PE_C1_2[x]>0) | 
     (PE_C1_2[x]>B & FITC_C1_2[x]>0)){
    FITC_CUT_C1_2=append(FITC_CUT_C1_2,FITC_C1_2[x])
  }}
PE_CUT_C1_2<-c()
for(x in 1:le_C1_2){
  if((FITC_C1_2[x]> A & PE_C1_2[x]>0) | 
     (PE_C1_2[x]>B & FITC_C1_2[x]>0)){	
    PE_CUT_C1_2=append(PE_CUT_C1_2,PE_C1_2[x])
  }}
FITC_CUT_D1_2<-c()
for(x in 1:le_D1_2){
  if((FITC_D1_2[x]> A & PE_D1_2[x]>0) | 
     (PE_D1_2[x]>B & FITC_D1_2[x]>0)){
    FITC_CUT_D1_2=append(FITC_CUT_D1_2,FITC_D1_2[x])
  }}
PE_CUT_D1_2<-c()
for(x in 1:le_D1_2){
  if((FITC_D1_2[x]> A & PE_D1_2[x]>0) | 
     (PE_D1_2[x]>B & FITC_D1_2[x]>0)){	
    PE_CUT_D1_2=append(PE_CUT_D1_2,PE_D1_2[x])
  }}
FITC_CUT_E1_2<-c()
for(x in 1:le_E1_2){
  if((FITC_E1_2[x]> A & PE_E1_2[x]>0) | 
     (PE_E1_2[x]>B & FITC_E1_2[x]>0)){
    FITC_CUT_E1_2=append(FITC_CUT_E1_2,FITC_E1_2[x])
  }}
PE_CUT_E1_2<-c()
for(x in 1:le_E1_2){
  if((FITC_E1_2[x]> A & PE_E1_2[x]>0) | 
     (PE_E1_2[x]>B & FITC_E1_2[x]>0)){	
    PE_CUT_E1_2=append(PE_CUT_E1_2,PE_E1_2[x])
  }}
FITC_CUT_F1_2<-c()
for(x in 1:le_F1_2){
  if((FITC_F1_2[x]> A & PE_F1_2[x]>0) | 
     (PE_F1_2[x]>B & FITC_F1_2[x]>0)){
    FITC_CUT_F1_2=append(FITC_CUT_F1_2,FITC_F1_2[x])
  }}
PE_CUT_F1_2<-c()
for(x in 1:le_F1_2){
  if((FITC_F1_2[x]> A & PE_F1_2[x]>0) | 
     (PE_F1_2[x]>B & FITC_F1_2[x]>0)){	
    PE_CUT_F1_2=append(PE_CUT_F1_2,PE_F1_2[x])
  }}
FITC_CUT_G1_2<-c()
for(x in 1:le_G1_2){
  if((FITC_G1_2[x]> A & PE_G1_2[x]>0) | 
     (PE_G1_2[x]>B & FITC_G1_2[x]>0)){
    FITC_CUT_G1_2=append(FITC_CUT_G1_2,FITC_G1_2[x])
  }}
PE_CUT_G1_2<-c()
for(x in 1:le_G1_2){
  if((FITC_G1_2[x]> A & PE_G1_2[x]>0) | 
     (PE_G1_2[x]>B & FITC_G1_2[x]>0)){	
    PE_CUT_G1_2=append(PE_CUT_G1_2,PE_G1_2[x])
  }}
FITC_CUT_H1_2<-c()
for(x in 1:le_H1_2){
  if((FITC_H1_2[x]> A & PE_H1_2[x]>0) | 
     (PE_H1_2[x]>B & FITC_H1_2[x]>0)){
    FITC_CUT_H1_2=append(FITC_CUT_H1_2,FITC_H1_2[x])
  }}
PE_CUT_H1_2<-c()
for(x in 1:le_H1_2){
  if((FITC_H1_2[x]> A & PE_H1_2[x]>0) | 
     (PE_H1_2[x]>B & FITC_H1_2[x]>0)){	
    PE_CUT_H1_2=append(PE_CUT_H1_2,PE_H1_2[x])
  }}

FITC_CUT_A2_1<-c()
for(x in 1:le_A2_1){
  if((FITC_A2_1[x]> A & PE_A2_1[x]>0) | 
     (PE_A2_1[x]>B & FITC_A2_1[x]>0)){
    FITC_CUT_A2_1=append(FITC_CUT_A2_1,FITC_A2_1[x])
  }}
PE_CUT_A2_1<-c()
for(x in 1:le_A2_1){
  if((FITC_A2_1[x]> A & PE_A2_1[x]>0) | 
     (PE_A2_1[x]>B & FITC_A2_1[x]>0)){	
    PE_CUT_A2_1=append(PE_CUT_A2_1,PE_A2_1[x])
  }}
FITC_CUT_B2_1<-c()
for(x in 1:le_B2_1){
  if((FITC_B2_1[x]> A & PE_B2_1[x]>0) | 
     (PE_B2_1[x]>B & FITC_B2_1[x]>0)){
    FITC_CUT_B2_1=append(FITC_CUT_B2_1,FITC_B2_1[x])
  }}
PE_CUT_B2_1<-c()
for(x in 1:le_B2_1){
  if((FITC_B2_1[x]> A & PE_B2_1[x]>0) | 
     (PE_B2_1[x]>B & FITC_B2_1[x]>0)){	
    PE_CUT_B2_1=append(PE_CUT_B2_1,PE_B2_1[x])
  }}
FITC_CUT_C2_1<-c()
for(x in 1:le_C2_1){
  if((FITC_C2_1[x]> A & PE_C2_1[x]>0) | 
     (PE_C2_1[x]>B & FITC_C2_1[x]>0)){
    FITC_CUT_C2_1=append(FITC_CUT_C2_1,FITC_C2_1[x])
  }}
PE_CUT_C2_1<-c()
for(x in 1:le_C2_1){
  if((FITC_C2_1[x]> A & PE_C2_1[x]>0) | 
     (PE_C2_1[x]>B & FITC_C2_1[x]>0)){	
    PE_CUT_C2_1=append(PE_CUT_C2_1,PE_C2_1[x])
  }}
FITC_CUT_D2_1<-c()
for(x in 1:le_D2_1){
  if((FITC_D2_1[x]> A & PE_D2_1[x]>0) | 
     (PE_D2_1[x]>B & FITC_D2_1[x]>0)){
    FITC_CUT_D2_1=append(FITC_CUT_D2_1,FITC_D2_1[x])
  }}
PE_CUT_D2_1<-c()
for(x in 1:le_D2_1){
  if((FITC_D2_1[x]> A & PE_D2_1[x]>0) | 
     (PE_D2_1[x]>B & FITC_D2_1[x]>0)){	
    PE_CUT_D2_1=append(PE_CUT_D2_1,PE_D2_1[x])
  }}
FITC_CUT_E2_1<-c()
for(x in 1:le_E2_1){
  if((FITC_E2_1[x]> A & PE_E2_1[x]>0) | 
     (PE_E2_1[x]>B & FITC_E2_1[x]>0)){
    FITC_CUT_E2_1=append(FITC_CUT_E2_1,FITC_E2_1[x])
  }}
PE_CUT_E2_1<-c()
for(x in 1:le_E2_1){
  if((FITC_E2_1[x]> A & PE_E2_1[x]>0) | 
     (PE_E2_1[x]>B & FITC_E2_1[x]>0)){	
    PE_CUT_E2_1=append(PE_CUT_E2_1,PE_E2_1[x])
  }}
FITC_CUT_F2_1<-c()
for(x in 1:le_F2_1){
  if((FITC_F2_1[x]> A & PE_F2_1[x]>0) | 
     (PE_F2_1[x]>B & FITC_F2_1[x]>0)){
    FITC_CUT_F2_1=append(FITC_CUT_F2_1,FITC_F2_1[x])
  }}
PE_CUT_F2_1<-c()
for(x in 1:le_F2_1){
  if((FITC_F2_1[x]> A & PE_F2_1[x]>0) | 
     (PE_F2_1[x]>B & FITC_F2_1[x]>0)){	
    PE_CUT_F2_1=append(PE_CUT_F2_1,PE_F2_1[x])
  }}
FITC_CUT_G2_1<-c()
for(x in 1:le_G2_1){
  if((FITC_G2_1[x]> A & PE_G2_1[x]>0) | 
     (PE_G2_1[x]>B & FITC_G2_1[x]>0)){
    FITC_CUT_G2_1=append(FITC_CUT_G2_1,FITC_G2_1[x])
  }}
PE_CUT_G2_1<-c()
for(x in 1:le_G2_1){
  if((FITC_G2_1[x]> A & PE_G2_1[x]>0) | 
     (PE_G2_1[x]>B & FITC_G2_1[x]>0)){	
    PE_CUT_G2_1=append(PE_CUT_G2_1,PE_G2_1[x])
  }}
FITC_CUT_H2_1<-c()
for(x in 1:le_H2_1){
  if((FITC_H2_1[x]> A & PE_H2_1[x]>0) | 
     (PE_H2_1[x]>B & FITC_H2_1[x]>0)){
    FITC_CUT_H2_1=append(FITC_CUT_H2_1,FITC_H2_1[x])
  }}
PE_CUT_H2_1<-c()
for(x in 1:le_H2_1){
  if((FITC_H2_1[x]> A & PE_H2_1[x]>0) | 
     (PE_H2_1[x]>B & FITC_H2_1[x]>0)){	
    PE_CUT_H2_1=append(PE_CUT_H2_1,PE_H2_1[x])
  }}
FITC_CUT_A2_2<-c()
for(x in 1:le_A2_2){
  if((FITC_A2_2[x]> A & PE_A2_2[x]>0) | 
     (PE_A2_2[x]>B & FITC_A2_2[x]>0)){
    FITC_CUT_A2_2=append(FITC_CUT_A2_2,FITC_A2_2[x])
  }}
PE_CUT_A2_2<-c()
for(x in 1:le_A2_2){
  if((FITC_A2_2[x]> A & PE_A2_2[x]>0) | 
     (PE_A2_2[x]>B & FITC_A2_2[x]>0)){	
    PE_CUT_A2_2=append(PE_CUT_A2_2,PE_A2_2[x])
  }}
FITC_CUT_B2_2<-c()
for(x in 1:le_B2_2){
  if((FITC_B2_2[x]> A & PE_B2_2[x]>0) | 
     (PE_B2_2[x]>B & FITC_B2_2[x]>0)){
    FITC_CUT_B2_2=append(FITC_CUT_B2_2,FITC_B2_2[x])
  }}
PE_CUT_B2_2<-c()
for(x in 1:le_B2_2){
  if((FITC_B2_2[x]> A & PE_B2_2[x]>0) | 
     (PE_B2_2[x]>B & FITC_B2_2[x]>0)){	
    PE_CUT_B2_2=append(PE_CUT_B2_2,PE_B2_2[x])
  }}
FITC_CUT_C2_2<-c()
for(x in 1:le_C2_2){
  if((FITC_C2_2[x]> A & PE_C2_2[x]>0) | 
     (PE_C2_2[x]>B & FITC_C2_2[x]>0)){
    FITC_CUT_C2_2=append(FITC_CUT_C2_2,FITC_C2_2[x])
  }}
PE_CUT_C2_2<-c()
for(x in 1:le_C2_2){
  if((FITC_C2_2[x]> A & PE_C2_2[x]>0) | 
     (PE_C2_2[x]>B & FITC_C2_2[x]>0)){	
    PE_CUT_C2_2=append(PE_CUT_C2_2,PE_C2_2[x])
  }}
FITC_CUT_D2_2<-c()
for(x in 1:le_D2_2){
  if((FITC_D2_2[x]> A & PE_D2_2[x]>0) | 
     (PE_D2_2[x]>B & FITC_D2_2[x]>0)){
    FITC_CUT_D2_2=append(FITC_CUT_D2_2,FITC_D2_2[x])
  }}
PE_CUT_D2_2<-c()
for(x in 1:le_D2_2){
  if((FITC_D2_2[x]> A & PE_D2_2[x]>0) | 
     (PE_D2_2[x]>B & FITC_D2_2[x]>0)){	
    PE_CUT_D2_2=append(PE_CUT_D2_2,PE_D2_2[x])
  }}
FITC_CUT_E2_2<-c()
for(x in 1:le_E2_2){
  if((FITC_E2_2[x]> A & PE_E2_2[x]>0) | 
     (PE_E2_2[x]>B & FITC_E2_2[x]>0)){
    FITC_CUT_E2_2=append(FITC_CUT_E2_2,FITC_E2_2[x])
  }}
PE_CUT_E2_2<-c()
for(x in 1:le_E2_2){
  if((FITC_E2_2[x]> A & PE_E2_2[x]>0) | 
     (PE_E2_2[x]>B & FITC_E2_2[x]>0)){	
    PE_CUT_E2_2=append(PE_CUT_E2_2,PE_E2_2[x])
  }}
FITC_CUT_F2_2<-c()
for(x in 1:le_F2_2){
  if((FITC_F2_2[x]> A & PE_F2_2[x]>0) | 
     (PE_F2_2[x]>B & FITC_F2_2[x]>0)){
    FITC_CUT_F2_2=append(FITC_CUT_F2_2,FITC_F2_2[x])
  }}
PE_CUT_F2_2<-c()
for(x in 1:le_F2_2){
  if((FITC_F2_2[x]> A & PE_F2_2[x]>0) | 
     (PE_F2_2[x]>B & FITC_F2_2[x]>0)){	
    PE_CUT_F2_2=append(PE_CUT_F2_2,PE_F2_2[x])
  }}
FITC_CUT_G2_2<-c()
for(x in 1:le_G2_2){
  if((FITC_G2_2[x]> A & PE_G2_2[x]>0) | 
     (PE_G2_2[x]>B & FITC_G2_2[x]>0)){
    FITC_CUT_G2_2=append(FITC_CUT_G2_2,FITC_G2_2[x])
  }}
PE_CUT_G2_2<-c()
for(x in 1:le_G2_2){
  if((FITC_G2_2[x]> A & PE_G2_2[x]>0) | 
     (PE_G2_2[x]>B & FITC_G2_2[x]>0)){	
    PE_CUT_G2_2=append(PE_CUT_G2_2,PE_G2_2[x])
  }}
FITC_CUT_H2_2<-c()
for(x in 1:le_H2_2){
  if((FITC_H2_2[x]> A & PE_H2_2[x]>0) | 
     (PE_H2_2[x]>B & FITC_H2_2[x]>0)){
    FITC_CUT_H2_2=append(FITC_CUT_H2_2,FITC_H2_2[x])
  }}
PE_CUT_H2_2<-c()
for(x in 1:le_H2_2){
  if((FITC_H2_2[x]> A & PE_H2_2[x]>0) | 
     (PE_H2_2[x]>B & FITC_H2_2[x]>0)){	
    PE_CUT_H2_2=append(PE_CUT_H2_2,PE_H2_2[x])
  }}

FITC_CUT_A3_1<-c()
for(x in 1:le_A3_1){
  if((FITC_A3_1[x]> A & PE_A3_1[x]>0) | 
     (PE_A3_1[x]>B & FITC_A3_1[x]>0)){
    FITC_CUT_A3_1=append(FITC_CUT_A3_1,FITC_A3_1[x])
  }}
PE_CUT_A3_1<-c()
for(x in 1:le_A3_1){
  if((FITC_A3_1[x]> A & PE_A3_1[x]>0) | 
     (PE_A3_1[x]>B & FITC_A3_1[x]>0)){	
    PE_CUT_A3_1=append(PE_CUT_A3_1,PE_A3_1[x])
  }}
FITC_CUT_B3_1<-c()
for(x in 1:le_B3_1){
  if((FITC_B3_1[x]> A & PE_B3_1[x]>0) | 
     (PE_B3_1[x]>B & FITC_B3_1[x]>0)){
    FITC_CUT_B3_1=append(FITC_CUT_B3_1,FITC_B3_1[x])
  }}
PE_CUT_B3_1<-c()
for(x in 1:le_B3_1){
  if((FITC_B3_1[x]> A & PE_B3_1[x]>0) | 
     (PE_B3_1[x]>B & FITC_B3_1[x]>0)){	
    PE_CUT_B3_1=append(PE_CUT_B3_1,PE_B3_1[x])
  }}
FITC_CUT_C3_1<-c()
for(x in 1:le_C3_1){
  if((FITC_C3_1[x]> A & PE_C3_1[x]>0) | 
     (PE_C3_1[x]>B & FITC_C3_1[x]>0)){
    FITC_CUT_C3_1=append(FITC_CUT_C3_1,FITC_C3_1[x])
  }}
PE_CUT_C3_1<-c()
for(x in 1:le_C3_1){
  if((FITC_C3_1[x]> A & PE_C3_1[x]>0) | 
     (PE_C3_1[x]>B & FITC_C3_1[x]>0)){	
    PE_CUT_C3_1=append(PE_CUT_C3_1,PE_C3_1[x])
  }}
FITC_CUT_D3_1<-c()
for(x in 1:le_D3_1){
  if((FITC_D3_1[x]> A & PE_D3_1[x]>0) | 
     (PE_D3_1[x]>B & FITC_D3_1[x]>0)){
    FITC_CUT_D3_1=append(FITC_CUT_D3_1,FITC_D3_1[x])
  }}
PE_CUT_D3_1<-c()
for(x in 1:le_D3_1){
  if((FITC_D3_1[x]> A & PE_D3_1[x]>0) | 
     (PE_D3_1[x]>B & FITC_D3_1[x]>0)){	
    PE_CUT_D3_1=append(PE_CUT_D3_1,PE_D3_1[x])
  }}
FITC_CUT_E3_1<-c()
for(x in 1:le_E3_1){
  if((FITC_E3_1[x]> A & PE_E3_1[x]>0) | 
     (PE_E3_1[x]>B & FITC_E3_1[x]>0)){
    FITC_CUT_E3_1=append(FITC_CUT_E3_1,FITC_E3_1[x])
  }}
PE_CUT_E3_1<-c()
for(x in 1:le_E3_1){
  if((FITC_E3_1[x]> A & PE_E3_1[x]>0) | 
     (PE_E3_1[x]>B & FITC_E3_1[x]>0)){	
    PE_CUT_E3_1=append(PE_CUT_E3_1,PE_E3_1[x])
  }}
FITC_CUT_F3_1<-c()
for(x in 1:le_F3_1){
  if((FITC_F3_1[x]> A & PE_F3_1[x]>0) | 
     (PE_F3_1[x]>B & FITC_F3_1[x]>0)){
    FITC_CUT_F3_1=append(FITC_CUT_F3_1,FITC_F3_1[x])
  }}
PE_CUT_F3_1<-c()
for(x in 1:le_F3_1){
  if((FITC_F3_1[x]> A & PE_F3_1[x]>0) | 
     (PE_F3_1[x]>B & FITC_F3_1[x]>0)){	
    PE_CUT_F3_1=append(PE_CUT_F3_1,PE_F3_1[x])
  }}
FITC_CUT_G3_1<-c()
for(x in 1:le_G3_1){
  if((FITC_G3_1[x]> A & PE_G3_1[x]>0) | 
     (PE_G3_1[x]>B & FITC_G3_1[x]>0)){
    FITC_CUT_G3_1=append(FITC_CUT_G3_1,FITC_G3_1[x])
  }}
PE_CUT_G3_1<-c()
for(x in 1:le_G3_1){
  if((FITC_G3_1[x]> A & PE_G3_1[x]>0) | 
     (PE_G3_1[x]>B & FITC_G3_1[x]>0)){	
    PE_CUT_G3_1=append(PE_CUT_G3_1,PE_G3_1[x])
  }}
FITC_CUT_H3_1<-c()
for(x in 1:le_H3_1){
  if((FITC_H3_1[x]> A & PE_H3_1[x]>0) | 
     (PE_H3_1[x]>B & FITC_H3_1[x]>0)){
    FITC_CUT_H3_1=append(FITC_CUT_H3_1,FITC_H3_1[x])
  }}
PE_CUT_H3_1<-c()
for(x in 1:le_H3_1){
  if((FITC_H3_1[x]> A & PE_H3_1[x]>0) | 
     (PE_H3_1[x]>B & FITC_H3_1[x]>0)){	
    PE_CUT_H3_1=append(PE_CUT_H3_1,PE_H3_1[x])
  }}
FITC_CUT_A3_2<-c()
for(x in 1:le_A3_2){
  if((FITC_A3_2[x]> A & PE_A3_2[x]>0) | 
     (PE_A3_2[x]>B & FITC_A3_2[x]>0)){
    FITC_CUT_A3_2=append(FITC_CUT_A3_2,FITC_A3_2[x])
  }}
PE_CUT_A3_2<-c()
for(x in 1:le_A3_2){
  if((FITC_A3_2[x]> A & PE_A3_2[x]>0) | 
     (PE_A3_2[x]>B & FITC_A3_2[x]>0)){	
    PE_CUT_A3_2=append(PE_CUT_A3_2,PE_A3_2[x])
  }}
FITC_CUT_B3_2<-c()
for(x in 1:le_B3_2){
  if((FITC_B3_2[x]> A & PE_B3_2[x]>0) | 
     (PE_B3_2[x]>B & FITC_B3_2[x]>0)){
    FITC_CUT_B3_2=append(FITC_CUT_B3_2,FITC_B3_2[x])
  }}
PE_CUT_B3_2<-c()
for(x in 1:le_B3_2){
  if((FITC_B3_2[x]> A & PE_B3_2[x]>0) | 
     (PE_B3_2[x]>B & FITC_B3_2[x]>0)){	
    PE_CUT_B3_2=append(PE_CUT_B3_2,PE_B3_2[x])
  }}
FITC_CUT_C3_2<-c()
for(x in 1:le_C3_2){
  if((FITC_C3_2[x]> A & PE_C3_2[x]>0) | 
     (PE_C3_2[x]>B & FITC_C3_2[x]>0)){
    FITC_CUT_C3_2=append(FITC_CUT_C3_2,FITC_C3_2[x])
  }}
PE_CUT_C3_2<-c()
for(x in 1:le_C3_2){
  if((FITC_C3_2[x]> A & PE_C3_2[x]>0) | 
     (PE_C3_2[x]>B & FITC_C3_2[x]>0)){	
    PE_CUT_C3_2=append(PE_CUT_C3_2,PE_C3_2[x])
  }}
FITC_CUT_D3_2<-c()
for(x in 1:le_D3_2){
  if((FITC_D3_2[x]> A & PE_D3_2[x]>0) | 
     (PE_D3_2[x]>B & FITC_D3_2[x]>0)){
    FITC_CUT_D3_2=append(FITC_CUT_D3_2,FITC_D3_2[x])
  }}
PE_CUT_D3_2<-c()
for(x in 1:le_D3_2){
  if((FITC_D3_2[x]> A & PE_D3_2[x]>0) | 
     (PE_D3_2[x]>B & FITC_D3_2[x]>0)){	
    PE_CUT_D3_2=append(PE_CUT_D3_2,PE_D3_2[x])
  }}
FITC_CUT_E3_2<-c()
for(x in 1:le_E3_2){
  if((FITC_E3_2[x]> A & PE_E3_2[x]>0) | 
     (PE_E3_2[x]>B & FITC_E3_2[x]>0)){
    FITC_CUT_E3_2=append(FITC_CUT_E3_2,FITC_E3_2[x])
  }}
PE_CUT_E3_2<-c()
for(x in 1:le_E3_2){
  if((FITC_E3_2[x]> A & PE_E3_2[x]>0) | 
     (PE_E3_2[x]>B & FITC_E3_2[x]>0)){	
    PE_CUT_E3_2=append(PE_CUT_E3_2,PE_E3_2[x])
  }}
FITC_CUT_F3_2<-c()
for(x in 1:le_F3_2){
  if((FITC_F3_2[x]> A & PE_F3_2[x]>0) | 
     (PE_F3_2[x]>B & FITC_F3_2[x]>0)){
    FITC_CUT_F3_2=append(FITC_CUT_F3_2,FITC_F3_2[x])
  }}
PE_CUT_F3_2<-c()
for(x in 1:le_F3_2){
  if((FITC_F3_2[x]> A & PE_F3_2[x]>0) | 
     (PE_F3_2[x]>B & FITC_F3_2[x]>0)){	
    PE_CUT_F3_2=append(PE_CUT_F3_2,PE_F3_2[x])
  }}
FITC_CUT_G3_2<-c()
for(x in 1:le_G3_2){
  if((FITC_G3_2[x]> A & PE_G3_2[x]>0) | 
     (PE_G3_2[x]>B & FITC_G3_2[x]>0)){
    FITC_CUT_G3_2=append(FITC_CUT_G3_2,FITC_G3_2[x])
  }}
PE_CUT_G3_2<-c()
for(x in 1:le_G3_2){
  if((FITC_G3_2[x]> A & PE_G3_2[x]>0) | 
     (PE_G3_2[x]>B & FITC_G3_2[x]>0)){	
    PE_CUT_G3_2=append(PE_CUT_G3_2,PE_G3_2[x])
  }}
FITC_CUT_H3_2<-c()
for(x in 1:le_H3_2){
  if((FITC_H3_2[x]> A & PE_H3_2[x]>0) | 
     (PE_H3_2[x]>B & FITC_H3_2[x]>0)){
    FITC_CUT_H3_2=append(FITC_CUT_H3_2,FITC_H3_2[x])
  }}
PE_CUT_H3_2<-c()
for(x in 1:le_H3_2){
  if((FITC_H3_2[x]> A & PE_H3_2[x]>0) | 
     (PE_H3_2[x]>B & FITC_H3_2[x]>0)){	
    PE_CUT_H3_2=append(PE_CUT_H3_2,PE_H3_2[x])
  }}

FITC_CUT_A4_1<-c()
for(x in 1:le_A4_1){
  if((FITC_A4_1[x]> A & PE_A4_1[x]>0) | 
     (PE_A4_1[x]>B & FITC_A4_1[x]>0)){
    FITC_CUT_A4_1=append(FITC_CUT_A4_1,FITC_A4_1[x])
  }}
PE_CUT_A4_1<-c()
for(x in 1:le_A4_1){
  if((FITC_A4_1[x]> A & PE_A4_1[x]>0) | 
     (PE_A4_1[x]>B & FITC_A4_1[x]>0)){	
    PE_CUT_A4_1=append(PE_CUT_A4_1,PE_A4_1[x])
  }}
FITC_CUT_B4_1<-c()
for(x in 1:le_B4_1){
  if((FITC_B4_1[x]> A & PE_B4_1[x]>0) | 
     (PE_B4_1[x]>B & FITC_B4_1[x]>0)){
    FITC_CUT_B4_1=append(FITC_CUT_B4_1,FITC_B4_1[x])
  }}
PE_CUT_B4_1<-c()
for(x in 1:le_B4_1){
  if((FITC_B4_1[x]> A & PE_B4_1[x]>0) | 
     (PE_B4_1[x]>B & FITC_B4_1[x]>0)){	
    PE_CUT_B4_1=append(PE_CUT_B4_1,PE_B4_1[x])
  }}
FITC_CUT_C4_1<-c()
for(x in 1:le_C4_1){
  if((FITC_C4_1[x]> A & PE_C4_1[x]>0) | 
     (PE_C4_1[x]>B & FITC_C4_1[x]>0)){
    FITC_CUT_C4_1=append(FITC_CUT_C4_1,FITC_C4_1[x])
  }}
PE_CUT_C4_1<-c()
for(x in 1:le_C4_1){
  if((FITC_C4_1[x]> A & PE_C4_1[x]>0) | 
     (PE_C4_1[x]>B & FITC_C4_1[x]>0)){	
    PE_CUT_C4_1=append(PE_CUT_C4_1,PE_C4_1[x])
  }}
FITC_CUT_D4_1<-c()
for(x in 1:le_D4_1){
  if((FITC_D4_1[x]> A & PE_D4_1[x]>0) | 
     (PE_D4_1[x]>B & FITC_D4_1[x]>0)){
    FITC_CUT_D4_1=append(FITC_CUT_D4_1,FITC_D4_1[x])
  }}
PE_CUT_D4_1<-c()
for(x in 1:le_D4_1){
  if((FITC_D4_1[x]> A & PE_D4_1[x]>0) | 
     (PE_D4_1[x]>B & FITC_D4_1[x]>0)){	
    PE_CUT_D4_1=append(PE_CUT_D4_1,PE_D4_1[x])
  }}
FITC_CUT_E4_1<-c()
for(x in 1:le_E4_1){
  if((FITC_E4_1[x]> A & PE_E4_1[x]>0) | 
     (PE_E4_1[x]>B & FITC_E4_1[x]>0)){
    FITC_CUT_E4_1=append(FITC_CUT_E4_1,FITC_E4_1[x])
  }}
PE_CUT_E4_1<-c()
for(x in 1:le_E4_1){
  if((FITC_E4_1[x]> A & PE_E4_1[x]>0) | 
     (PE_E4_1[x]>B & FITC_E4_1[x]>0)){	
    PE_CUT_E4_1=append(PE_CUT_E4_1,PE_E4_1[x])
  }}
FITC_CUT_F4_1<-c()
for(x in 1:le_F4_1){
  if((FITC_F4_1[x]> A & PE_F4_1[x]>0) | 
     (PE_F4_1[x]>B & FITC_F4_1[x]>0)){
    FITC_CUT_F4_1=append(FITC_CUT_F4_1,FITC_F4_1[x])
  }}
PE_CUT_F4_1<-c()
for(x in 1:le_F4_1){
  if((FITC_F4_1[x]> A & PE_F4_1[x]>0) | 
     (PE_F4_1[x]>B & FITC_F4_1[x]>0)){	
    PE_CUT_F4_1=append(PE_CUT_F4_1,PE_F4_1[x])
  }}
FITC_CUT_G4_1<-c()
for(x in 1:le_G4_1){
  if((FITC_G4_1[x]> A & PE_G4_1[x]>0) | 
     (PE_G4_1[x]>B & FITC_G4_1[x]>0)){
    FITC_CUT_G4_1=append(FITC_CUT_G4_1,FITC_G4_1[x])
  }}
PE_CUT_G4_1<-c()
for(x in 1:le_G4_1){
  if((FITC_G4_1[x]> A & PE_G4_1[x]>0) | 
     (PE_G4_1[x]>B & FITC_G4_1[x]>0)){	
    PE_CUT_G4_1=append(PE_CUT_G4_1,PE_G4_1[x])
  }}
FITC_CUT_H4_1<-c()
for(x in 1:le_H4_1){
  if((FITC_H4_1[x]> A & PE_H4_1[x]>0) | 
     (PE_H4_1[x]>B & FITC_H4_1[x]>0)){
    FITC_CUT_H4_1=append(FITC_CUT_H4_1,FITC_H4_1[x])
  }}
PE_CUT_H4_1<-c()
for(x in 1:le_H4_1){
  if((FITC_H4_1[x]> A & PE_H4_1[x]>0) | 
     (PE_H4_1[x]>B & FITC_H4_1[x]>0)){	
    PE_CUT_H4_1=append(PE_CUT_H4_1,PE_H4_1[x])
  }}
FITC_CUT_A4_2<-c()
for(x in 1:le_A4_2){
  if((FITC_A4_2[x]> A & PE_A4_2[x]>0) | 
     (PE_A4_2[x]>B & FITC_A4_2[x]>0)){
    FITC_CUT_A4_2=append(FITC_CUT_A4_2,FITC_A4_2[x])
  }}
PE_CUT_A4_2<-c()
for(x in 1:le_A4_2){
  if((FITC_A4_2[x]> A & PE_A4_2[x]>0) | 
     (PE_A4_2[x]>B & FITC_A4_2[x]>0)){	
    PE_CUT_A4_2=append(PE_CUT_A4_2,PE_A4_2[x])
  }}
FITC_CUT_B4_2<-c()
for(x in 1:le_B4_2){
  if((FITC_B4_2[x]> A & PE_B4_2[x]>0) | 
     (PE_B4_2[x]>B & FITC_B4_2[x]>0)){
    FITC_CUT_B4_2=append(FITC_CUT_B4_2,FITC_B4_2[x])
  }}
PE_CUT_B4_2<-c()
for(x in 1:le_B4_2){
  if((FITC_B4_2[x]> A & PE_B4_2[x]>0) | 
     (PE_B4_2[x]>B & FITC_B4_2[x]>0)){	
    PE_CUT_B4_2=append(PE_CUT_B4_2,PE_B4_2[x])
  }}
FITC_CUT_C4_2<-c()
for(x in 1:le_C4_2){
  if((FITC_C4_2[x]> A & PE_C4_2[x]>0) | 
     (PE_C4_2[x]>B & FITC_C4_2[x]>0)){
    FITC_CUT_C4_2=append(FITC_CUT_C4_2,FITC_C4_2[x])
  }}
PE_CUT_C4_2<-c()
for(x in 1:le_C4_2){
  if((FITC_C4_2[x]> A & PE_C4_2[x]>0) | 
     (PE_C4_2[x]>B & FITC_C4_2[x]>0)){	
    PE_CUT_C4_2=append(PE_CUT_C4_2,PE_C4_2[x])
  }}
FITC_CUT_D4_2<-c()
for(x in 1:le_D4_2){
  if((FITC_D4_2[x]> A & PE_D4_2[x]>0) | 
     (PE_D4_2[x]>B & FITC_D4_2[x]>0)){
    FITC_CUT_D4_2=append(FITC_CUT_D4_2,FITC_D4_2[x])
  }}
PE_CUT_D4_2<-c()
for(x in 1:le_D4_2){
  if((FITC_D4_2[x]> A & PE_D4_2[x]>0) | 
     (PE_D4_2[x]>B & FITC_D4_2[x]>0)){	
    PE_CUT_D4_2=append(PE_CUT_D4_2,PE_D4_2[x])
  }}
FITC_CUT_E4_2<-c()
for(x in 1:le_E4_2){
  if((FITC_E4_2[x]> A & PE_E4_2[x]>0) | 
     (PE_E4_2[x]>B & FITC_E4_2[x]>0)){
    FITC_CUT_E4_2=append(FITC_CUT_E4_2,FITC_E4_2[x])
  }}
PE_CUT_E4_2<-c()
for(x in 1:le_E4_2){
  if((FITC_E4_2[x]> A & PE_E4_2[x]>0) | 
     (PE_E4_2[x]>B & FITC_E4_2[x]>0)){	
    PE_CUT_E4_2=append(PE_CUT_E4_2,PE_E4_2[x])
  }}
FITC_CUT_F4_2<-c()
for(x in 1:le_F4_2){
  if((FITC_F4_2[x]> A & PE_F4_2[x]>0) | 
     (PE_F4_2[x]>B & FITC_F4_2[x]>0)){
    FITC_CUT_F4_2=append(FITC_CUT_F4_2,FITC_F4_2[x])
  }}
PE_CUT_F4_2<-c()
for(x in 1:le_F4_2){
  if((FITC_F4_2[x]> A & PE_F4_2[x]>0) | 
     (PE_F4_2[x]>B & FITC_F4_2[x]>0)){	
    PE_CUT_F4_2=append(PE_CUT_F4_2,PE_F4_2[x])
  }}
FITC_CUT_G4_2<-c()
for(x in 1:le_G4_2){
  if((FITC_G4_2[x]> A & PE_G4_2[x]>0) | 
     (PE_G4_2[x]>B & FITC_G4_2[x]>0)){
    FITC_CUT_G4_2=append(FITC_CUT_G4_2,FITC_G4_2[x])
  }}
PE_CUT_G4_2<-c()
for(x in 1:le_G4_2){
  if((FITC_G4_2[x]> A & PE_G4_2[x]>0) | 
     (PE_G4_2[x]>B & FITC_G4_2[x]>0)){	
    PE_CUT_G4_2=append(PE_CUT_G4_2,PE_G4_2[x])
  }}
FITC_CUT_H4_2<-c()
for(x in 1:le_H4_2){
  if((FITC_H4_2[x]> A & PE_H4_2[x]>0) | 
     (PE_H4_2[x]>B & FITC_H4_2[x]>0)){
    FITC_CUT_H4_2=append(FITC_CUT_H4_2,FITC_H4_2[x])
  }}
PE_CUT_H4_2<-c()
for(x in 1:le_H4_2){
  if((FITC_H4_2[x]> A & PE_H4_2[x]>0) | 
     (PE_H4_2[x]>B & FITC_H4_2[x]>0)){	
    PE_CUT_H4_2=append(PE_CUT_H4_2,PE_H4_2[x])
  }}

FITC_CUT_A5_1<-c()
for(x in 1:le_A5_1){
  if((FITC_A5_1[x]> A & PE_A5_1[x]>0) | 
     (PE_A5_1[x]>B & FITC_A5_1[x]>0)){
    FITC_CUT_A5_1=append(FITC_CUT_A5_1,FITC_A5_1[x])
  }}
PE_CUT_A5_1<-c()
for(x in 1:le_A5_1){
  if((FITC_A5_1[x]> A & PE_A5_1[x]>0) | 
     (PE_A5_1[x]>B & FITC_A5_1[x]>0)){	
    PE_CUT_A5_1=append(PE_CUT_A5_1,PE_A5_1[x])
  }}
FITC_CUT_B5_1<-c()
for(x in 1:le_B5_1){
  if((FITC_B5_1[x]> A & PE_B5_1[x]>0) | 
     (PE_B5_1[x]>B & FITC_B5_1[x]>0)){
    FITC_CUT_B5_1=append(FITC_CUT_B5_1,FITC_B5_1[x])
  }}
PE_CUT_B5_1<-c()
for(x in 1:le_B5_1){
  if((FITC_B5_1[x]> A & PE_B5_1[x]>0) | 
     (PE_B5_1[x]>B & FITC_B5_1[x]>0)){	
    PE_CUT_B5_1=append(PE_CUT_B5_1,PE_B5_1[x])
  }}
FITC_CUT_C5_1<-c()
for(x in 1:le_C5_1){
  if((FITC_C5_1[x]> A & PE_C5_1[x]>0) | 
     (PE_C5_1[x]>B & FITC_C5_1[x]>0)){
    FITC_CUT_C5_1=append(FITC_CUT_C5_1,FITC_C5_1[x])
  }}
PE_CUT_C5_1<-c()
for(x in 1:le_C5_1){
  if((FITC_C5_1[x]> A & PE_C5_1[x]>0) | 
     (PE_C5_1[x]>B & FITC_C5_1[x]>0)){	
    PE_CUT_C5_1=append(PE_CUT_C5_1,PE_C5_1[x])
  }}
FITC_CUT_D5_1<-c()
for(x in 1:le_D5_1){
  if((FITC_D5_1[x]> A & PE_D5_1[x]>0) | 
     (PE_D5_1[x]>B & FITC_D5_1[x]>0)){
    FITC_CUT_D5_1=append(FITC_CUT_D5_1,FITC_D5_1[x])
  }}
PE_CUT_D5_1<-c()
for(x in 1:le_D5_1){
  if((FITC_D5_1[x]> A & PE_D5_1[x]>0) | 
     (PE_D5_1[x]>B & FITC_D5_1[x]>0)){	
    PE_CUT_D5_1=append(PE_CUT_D5_1,PE_D5_1[x])
  }}
FITC_CUT_E5_1<-c()
for(x in 1:le_E5_1){
  if((FITC_E5_1[x]> A & PE_E5_1[x]>0) | 
     (PE_E5_1[x]>B & FITC_E5_1[x]>0)){
    FITC_CUT_E5_1=append(FITC_CUT_E5_1,FITC_E5_1[x])
  }}
PE_CUT_E5_1<-c()
for(x in 1:le_E5_1){
  if((FITC_E5_1[x]> A & PE_E5_1[x]>0) | 
     (PE_E5_1[x]>B & FITC_E5_1[x]>0)){	
    PE_CUT_E5_1=append(PE_CUT_E5_1,PE_E5_1[x])
  }}
FITC_CUT_F5_1<-c()
for(x in 1:le_F5_1){
  if((FITC_F5_1[x]> A & PE_F5_1[x]>0) | 
     (PE_F5_1[x]>B & FITC_F5_1[x]>0)){
    FITC_CUT_F5_1=append(FITC_CUT_F5_1,FITC_F5_1[x])
  }}
PE_CUT_F5_1<-c()
for(x in 1:le_F5_1){
  if((FITC_F5_1[x]> A & PE_F5_1[x]>0) | 
     (PE_F5_1[x]>B & FITC_F5_1[x]>0)){	
    PE_CUT_F5_1=append(PE_CUT_F5_1,PE_F5_1[x])
  }}
FITC_CUT_G5_1<-c()
for(x in 1:le_G5_1){
  if((FITC_G5_1[x]> A & PE_G5_1[x]>0) | 
     (PE_G5_1[x]>B & FITC_G5_1[x]>0)){
    FITC_CUT_G5_1=append(FITC_CUT_G5_1,FITC_G5_1[x])
  }}
PE_CUT_G5_1<-c()
for(x in 1:le_G5_1){
  if((FITC_G5_1[x]> A & PE_G5_1[x]>0) | 
     (PE_G5_1[x]>B & FITC_G5_1[x]>0)){	
    PE_CUT_G5_1=append(PE_CUT_G5_1,PE_G5_1[x])
  }}
FITC_CUT_H5_1<-c()
for(x in 1:le_H5_1){
  if((FITC_H5_1[x]> A & PE_H5_1[x]>0) | 
     (PE_H5_1[x]>B & FITC_H5_1[x]>0)){
    FITC_CUT_H5_1=append(FITC_CUT_H5_1,FITC_H5_1[x])
  }}
PE_CUT_H5_1<-c()
for(x in 1:le_H5_1){
  if((FITC_H5_1[x]> A & PE_H5_1[x]>0) | 
     (PE_H5_1[x]>B & FITC_H5_1[x]>0)){	
    PE_CUT_H5_1=append(PE_CUT_H5_1,PE_H5_1[x])
  }}
FITC_CUT_A5_2<-c()
for(x in 1:le_A5_2){
  if((FITC_A5_2[x]> A & PE_A5_2[x]>0) | 
     (PE_A5_2[x]>B & FITC_A5_2[x]>0)){
    FITC_CUT_A5_2=append(FITC_CUT_A5_2,FITC_A5_2[x])
  }}
PE_CUT_A5_2<-c()
for(x in 1:le_A5_2){
  if((FITC_A5_2[x]> A & PE_A5_2[x]>0) | 
     (PE_A5_2[x]>B & FITC_A5_2[x]>0)){	
    PE_CUT_A5_2=append(PE_CUT_A5_2,PE_A5_2[x])
  }}
FITC_CUT_B5_2<-c()
for(x in 1:le_B5_2){
  if((FITC_B5_2[x]> A & PE_B5_2[x]>0) | 
     (PE_B5_2[x]>B & FITC_B5_2[x]>0)){
    FITC_CUT_B5_2=append(FITC_CUT_B5_2,FITC_B5_2[x])
  }}
PE_CUT_B5_2<-c()
for(x in 1:le_B5_2){
  if((FITC_B5_2[x]> A & PE_B5_2[x]>0) | 
     (PE_B5_2[x]>B & FITC_B5_2[x]>0)){	
    PE_CUT_B5_2=append(PE_CUT_B5_2,PE_B5_2[x])
  }}
FITC_CUT_C5_2<-c()
for(x in 1:le_C5_2){
  if((FITC_C5_2[x]> A & PE_C5_2[x]>0) | 
     (PE_C5_2[x]>B & FITC_C5_2[x]>0)){
    FITC_CUT_C5_2=append(FITC_CUT_C5_2,FITC_C5_2[x])
  }}
PE_CUT_C5_2<-c()
for(x in 1:le_C5_2){
  if((FITC_C5_2[x]> A & PE_C5_2[x]>0) | 
     (PE_C5_2[x]>B & FITC_C5_2[x]>0)){	
    PE_CUT_C5_2=append(PE_CUT_C5_2,PE_C5_2[x])
  }}
FITC_CUT_D5_2<-c()
for(x in 1:le_D5_2){
  if((FITC_D5_2[x]> A & PE_D5_2[x]>0) | 
     (PE_D5_2[x]>B & FITC_D5_2[x]>0)){
    FITC_CUT_D5_2=append(FITC_CUT_D5_2,FITC_D5_2[x])
  }}
PE_CUT_D5_2<-c()
for(x in 1:le_D5_2){
  if((FITC_D5_2[x]> A & PE_D5_2[x]>0) | 
     (PE_D5_2[x]>B & FITC_D5_2[x]>0)){	
    PE_CUT_D5_2=append(PE_CUT_D5_2,PE_D5_2[x])
  }}
FITC_CUT_E5_2<-c()
for(x in 1:le_E5_2){
  if((FITC_E5_2[x]> A & PE_E5_2[x]>0) | 
     (PE_E5_2[x]>B & FITC_E5_2[x]>0)){
    FITC_CUT_E5_2=append(FITC_CUT_E5_2,FITC_E5_2[x])
  }}
PE_CUT_E5_2<-c()
for(x in 1:le_E5_2){
  if((FITC_E5_2[x]> A & PE_E5_2[x]>0) | 
     (PE_E5_2[x]>B & FITC_E5_2[x]>0)){	
    PE_CUT_E5_2=append(PE_CUT_E5_2,PE_E5_2[x])
  }}
FITC_CUT_F5_2<-c()
for(x in 1:le_F5_2){
  if((FITC_F5_2[x]> A & PE_F5_2[x]>0) | 
     (PE_F5_2[x]>B & FITC_F5_2[x]>0)){
    FITC_CUT_F5_2=append(FITC_CUT_F5_2,FITC_F5_2[x])
  }}
PE_CUT_F5_2<-c()
for(x in 1:le_F5_2){
  if((FITC_F5_2[x]> A & PE_F5_2[x]>0) | 
     (PE_F5_2[x]>B & FITC_F5_2[x]>0)){	
    PE_CUT_F5_2=append(PE_CUT_F5_2,PE_F5_2[x])
  }}
FITC_CUT_G5_2<-c()
for(x in 1:le_G5_2){
  if((FITC_G5_2[x]> A & PE_G5_2[x]>0) | 
     (PE_G5_2[x]>B & FITC_G5_2[x]>0)){
    FITC_CUT_G5_2=append(FITC_CUT_G5_2,FITC_G5_2[x])
  }}
PE_CUT_G5_2<-c()
for(x in 1:le_G5_2){
  if((FITC_G5_2[x]> A & PE_G5_2[x]>0) | 
     (PE_G5_2[x]>B & FITC_G5_2[x]>0)){	
    PE_CUT_G5_2=append(PE_CUT_G5_2,PE_G5_2[x])
  }}
FITC_CUT_H5_2<-c()
for(x in 1:le_H5_2){
  if((FITC_H5_2[x]> A & PE_H5_2[x]>0) | 
     (PE_H5_2[x]>B & FITC_H5_2[x]>0)){
    FITC_CUT_H5_2=append(FITC_CUT_H5_2,FITC_H5_2[x])
  }}
PE_CUT_H5_2<-c()
for(x in 1:le_H5_2){
  if((FITC_H5_2[x]> A & PE_H5_2[x]>0) | 
     (PE_H5_2[x]>B & FITC_H5_2[x]>0)){	
    PE_CUT_H5_2=append(PE_CUT_H5_2,PE_H5_2[x])
  }}
FITC_CUT_A6_1<-c()
for(x in 1:le_A6_1){
  if((FITC_A6_1[x]> A & PE_A6_1[x]>0) | 
     (PE_A6_1[x]>B & FITC_A6_1[x]>0)){
    FITC_CUT_A6_1=append(FITC_CUT_A6_1,FITC_A6_1[x])
  }}
PE_CUT_A6_1<-c()
for(x in 1:le_A6_1){
  if((FITC_A6_1[x]> A & PE_A6_1[x]>0) | 
     (PE_A6_1[x]>B & FITC_A6_1[x]>0)){	
    PE_CUT_A6_1=append(PE_CUT_A6_1,PE_A6_1[x])
  }}
FITC_CUT_B6_1<-c()
for(x in 1:le_B6_1){
  if((FITC_B6_1[x]> A & PE_B6_1[x]>0) | 
     (PE_B6_1[x]>B & FITC_B6_1[x]>0)){
    FITC_CUT_B6_1=append(FITC_CUT_B6_1,FITC_B6_1[x])
  }}
PE_CUT_B6_1<-c()
for(x in 1:le_B6_1){
  if((FITC_B6_1[x]> A & PE_B6_1[x]>0) | 
     (PE_B6_1[x]>B & FITC_B6_1[x]>0)){	
    PE_CUT_B6_1=append(PE_CUT_B6_1,PE_B6_1[x])
  }}
FITC_CUT_C6_1<-c()
for(x in 1:le_C6_1){
  if((FITC_C6_1[x]> A & PE_C6_1[x]>0) | 
     (PE_C6_1[x]>B & FITC_C6_1[x]>0)){
    FITC_CUT_C6_1=append(FITC_CUT_C6_1,FITC_C6_1[x])
  }}
PE_CUT_C6_1<-c()
for(x in 1:le_C6_1){
  if((FITC_C6_1[x]> A & PE_C6_1[x]>0) | 
     (PE_C6_1[x]>B & FITC_C6_1[x]>0)){	
    PE_CUT_C6_1=append(PE_CUT_C6_1,PE_C6_1[x])
  }}
FITC_CUT_D6_1<-c()
for(x in 1:le_D6_1){
  if((FITC_D6_1[x]> A & PE_D6_1[x]>0) | 
     (PE_D6_1[x]>B & FITC_D6_1[x]>0)){
    FITC_CUT_D6_1=append(FITC_CUT_D6_1,FITC_D6_1[x])
  }}
PE_CUT_D6_1<-c()
for(x in 1:le_D6_1){
  if((FITC_D6_1[x]> A & PE_D6_1[x]>0) | 
     (PE_D6_1[x]>B & FITC_D6_1[x]>0)){	
    PE_CUT_D6_1=append(PE_CUT_D6_1,PE_D6_1[x])
  }}
FITC_CUT_E6_1<-c()
for(x in 1:le_E6_1){
  if((FITC_E6_1[x]> A & PE_E6_1[x]>0) | 
     (PE_E6_1[x]>B & FITC_E6_1[x]>0)){
    FITC_CUT_E6_1=append(FITC_CUT_E6_1,FITC_E6_1[x])
  }}
PE_CUT_E6_1<-c()
for(x in 1:le_E6_1){
  if((FITC_E6_1[x]> A & PE_E6_1[x]>0) | 
     (PE_E6_1[x]>B & FITC_E6_1[x]>0)){	
    PE_CUT_E6_1=append(PE_CUT_E6_1,PE_E6_1[x])
  }}
FITC_CUT_F6_1<-c()
for(x in 1:le_F6_1){
  if((FITC_F6_1[x]> A & PE_F6_1[x]>0) | 
     (PE_F6_1[x]>B & FITC_F6_1[x]>0)){
    FITC_CUT_F6_1=append(FITC_CUT_F6_1,FITC_F6_1[x])
  }}
PE_CUT_F6_1<-c()
for(x in 1:le_F6_1){
  if((FITC_F6_1[x]> A & PE_F6_1[x]>0) | 
     (PE_F6_1[x]>B & FITC_F6_1[x]>0)){	
    PE_CUT_F6_1=append(PE_CUT_F6_1,PE_F6_1[x])
  }}
FITC_CUT_G6_1<-c()
for(x in 1:le_G6_1){
  if((FITC_G6_1[x]> A & PE_G6_1[x]>0) | 
     (PE_G6_1[x]>B & FITC_G6_1[x]>0)){
    FITC_CUT_G6_1=append(FITC_CUT_G6_1,FITC_G6_1[x])
  }}
PE_CUT_G6_1<-c()
for(x in 1:le_G6_1){
  if((FITC_G6_1[x]> A & PE_G6_1[x]>0) | 
     (PE_G6_1[x]>B & FITC_G6_1[x]>0)){	
    PE_CUT_G6_1=append(PE_CUT_G6_1,PE_G6_1[x])
  }}
FITC_CUT_H6_1<-c()
for(x in 1:le_H6_1){
  if((FITC_H6_1[x]> A & PE_H6_1[x]>0) | 
     (PE_H6_1[x]>B & FITC_H6_1[x]>0)){
    FITC_CUT_H6_1=append(FITC_CUT_H6_1,FITC_H6_1[x])
  }}
PE_CUT_H6_1<-c()
for(x in 1:le_H6_1){
  if((FITC_H6_1[x]> A & PE_H6_1[x]>0) | 
     (PE_H6_1[x]>B & FITC_H6_1[x]>0)){	
    PE_CUT_H6_1=append(PE_CUT_H6_1,PE_H6_1[x])
  }}
FITC_CUT_A6_2<-c()
for(x in 1:le_A6_2){
  if((FITC_A6_2[x]> A & PE_A6_2[x]>0) | 
     (PE_A6_2[x]>B & FITC_A6_2[x]>0)){
    FITC_CUT_A6_2=append(FITC_CUT_A6_2,FITC_A6_2[x])
  }}
PE_CUT_A6_2<-c()
for(x in 1:le_A6_2){
  if((FITC_A6_2[x]> A & PE_A6_2[x]>0) | 
     (PE_A6_2[x]>B & FITC_A6_2[x]>0)){	
    PE_CUT_A6_2=append(PE_CUT_A6_2,PE_A6_2[x])
  }}
FITC_CUT_B6_2<-c()
for(x in 1:le_B6_2){
  if((FITC_B6_2[x]> A & PE_B6_2[x]>0) | 
     (PE_B6_2[x]>B & FITC_B6_2[x]>0)){
    FITC_CUT_B6_2=append(FITC_CUT_B6_2,FITC_B6_2[x])
  }}
PE_CUT_B6_2<-c()
for(x in 1:le_B6_2){
  if((FITC_B6_2[x]> A & PE_B6_2[x]>0) | 
     (PE_B6_2[x]>B & FITC_B6_2[x]>0)){	
    PE_CUT_B6_2=append(PE_CUT_B6_2,PE_B6_2[x])
  }}
FITC_CUT_C6_2<-c()
for(x in 1:le_C6_2){
  if((FITC_C6_2[x]> A & PE_C6_2[x]>0) | 
     (PE_C6_2[x]>B & FITC_C6_2[x]>0)){
    FITC_CUT_C6_2=append(FITC_CUT_C6_2,FITC_C6_2[x])
  }}
PE_CUT_C6_2<-c()
for(x in 1:le_C6_2){
  if((FITC_C6_2[x]> A & PE_C6_2[x]>0) | 
     (PE_C6_2[x]>B & FITC_C6_2[x]>0)){	
    PE_CUT_C6_2=append(PE_CUT_C6_2,PE_C6_2[x])
  }}
FITC_CUT_D6_2<-c()
for(x in 1:le_D6_2){
  if((FITC_D6_2[x]> A & PE_D6_2[x]>0) | 
     (PE_D6_2[x]>B & FITC_D6_2[x]>0)){
    FITC_CUT_D6_2=append(FITC_CUT_D6_2,FITC_D6_2[x])
  }}
PE_CUT_D6_2<-c()
for(x in 1:le_D6_2){
  if((FITC_D6_2[x]> A & PE_D6_2[x]>0) | 
     (PE_D6_2[x]>B & FITC_D6_2[x]>0)){	
    PE_CUT_D6_2=append(PE_CUT_D6_2,PE_D6_2[x])
  }}
FITC_CUT_E6_2<-c()
for(x in 1:le_E6_2){
  if((FITC_E6_2[x]> A & PE_E6_2[x]>0) | 
     (PE_E6_2[x]>B & FITC_E6_2[x]>0)){
    FITC_CUT_E6_2=append(FITC_CUT_E6_2,FITC_E6_2[x])
  }}
PE_CUT_E6_2<-c()
for(x in 1:le_E6_2){
  if((FITC_E6_2[x]> A & PE_E6_2[x]>0) | 
     (PE_E6_2[x]>B & FITC_E6_2[x]>0)){	
    PE_CUT_E6_2=append(PE_CUT_E6_2,PE_E6_2[x])
  }}
FITC_CUT_F6_2<-c()
for(x in 1:le_F6_2){
  if((FITC_F6_2[x]> A & PE_F6_2[x]>0) | 
     (PE_F6_2[x]>B & FITC_F6_2[x]>0)){
    FITC_CUT_F6_2=append(FITC_CUT_F6_2,FITC_F6_2[x])
  }}
PE_CUT_F6_2<-c()
for(x in 1:le_F6_2){
  if((FITC_F6_2[x]> A & PE_F6_2[x]>0) | 
     (PE_F6_2[x]>B & FITC_F6_2[x]>0)){	
    PE_CUT_F6_2=append(PE_CUT_F6_2,PE_F6_2[x])
  }}
FITC_CUT_G6_2<-c()
for(x in 1:le_G6_2){
  if((FITC_G6_2[x]> A & PE_G6_2[x]>0) | 
     (PE_G6_2[x]>B & FITC_G6_2[x]>0)){
    FITC_CUT_G6_2=append(FITC_CUT_G6_2,FITC_G6_2[x])
  }}
PE_CUT_G6_2<-c()
for(x in 1:le_G6_2){
  if((FITC_G6_2[x]> A & PE_G6_2[x]>0) | 
     (PE_G6_2[x]>B & FITC_G6_2[x]>0)){	
    PE_CUT_G6_2=append(PE_CUT_G6_2,PE_G6_2[x])
  }}
FITC_CUT_H6_2<-c()
for(x in 1:le_H6_2){
  if((FITC_H6_2[x]> A & PE_H6_2[x]>0) | 
     (PE_H6_2[x]>B & FITC_H6_2[x]>0)){
    FITC_CUT_H6_2=append(FITC_CUT_H6_2,FITC_H6_2[x])
  }}
PE_CUT_H6_2<-c()
for(x in 1:le_H6_2){
  if((FITC_H6_2[x]> A & PE_H6_2[x]>0) | 
     (PE_H6_2[x]>B & FITC_H6_2[x]>0)){	
    PE_CUT_H6_2=append(PE_CUT_H6_2,PE_H6_2[x])
  }}
FITC_CUT_A7_1<-c()
for(x in 1:le_A7_1){
  if((FITC_A7_1[x]> A & PE_A7_1[x]>0) | 
     (PE_A7_1[x]>B & FITC_A7_1[x]>0)){
    FITC_CUT_A7_1=append(FITC_CUT_A7_1,FITC_A7_1[x])
  }}
PE_CUT_A7_1<-c()
for(x in 1:le_A7_1){
  if((FITC_A7_1[x]> A & PE_A7_1[x]>0) | 
     (PE_A7_1[x]>B & FITC_A7_1[x]>0)){	
    PE_CUT_A7_1=append(PE_CUT_A7_1,PE_A7_1[x])
  }}
FITC_CUT_B7_1<-c()
for(x in 1:le_B7_1){
  if((FITC_B7_1[x]> A & PE_B7_1[x]>0) | 
     (PE_B7_1[x]>B & FITC_B7_1[x]>0)){
    FITC_CUT_B7_1=append(FITC_CUT_B7_1,FITC_B7_1[x])
  }}
PE_CUT_B7_1<-c()
for(x in 1:le_B7_1){
  if((FITC_B7_1[x]> A & PE_B7_1[x]>0) | 
     (PE_B7_1[x]>B & FITC_B7_1[x]>0)){	
    PE_CUT_B7_1=append(PE_CUT_B7_1,PE_B7_1[x])
  }}
FITC_CUT_C7_1<-c()
for(x in 1:le_C7_1){
  if((FITC_C7_1[x]> A & PE_C7_1[x]>0) | 
     (PE_C7_1[x]>B & FITC_C7_1[x]>0)){
    FITC_CUT_C7_1=append(FITC_CUT_C7_1,FITC_C7_1[x])
  }}
PE_CUT_C7_1<-c()
for(x in 1:le_C7_1){
  if((FITC_C7_1[x]> A & PE_C7_1[x]>0) | 
     (PE_C7_1[x]>B & FITC_C7_1[x]>0)){	
    PE_CUT_C7_1=append(PE_CUT_C7_1,PE_C7_1[x])
  }}
FITC_CUT_D7_1<-c()
for(x in 1:le_D7_1){
  if((FITC_D7_1[x]> A & PE_D7_1[x]>0) | 
     (PE_D7_1[x]>B & FITC_D7_1[x]>0)){
    FITC_CUT_D7_1=append(FITC_CUT_D7_1,FITC_D7_1[x])
  }}
PE_CUT_D7_1<-c()
for(x in 1:le_D7_1){
  if((FITC_D7_1[x]> A & PE_D7_1[x]>0) | 
     (PE_D7_1[x]>B & FITC_D7_1[x]>0)){	
    PE_CUT_D7_1=append(PE_CUT_D7_1,PE_D7_1[x])
  }}
FITC_CUT_E7_1<-c()
for(x in 1:le_E7_1){
  if((FITC_E7_1[x]> A & PE_E7_1[x]>0) | 
     (PE_E7_1[x]>B & FITC_E7_1[x]>0)){
    FITC_CUT_E7_1=append(FITC_CUT_E7_1,FITC_E7_1[x])
  }}
PE_CUT_E7_1<-c()
for(x in 1:le_E7_1){
  if((FITC_E7_1[x]> A & PE_E7_1[x]>0) | 
     (PE_E7_1[x]>B & FITC_E7_1[x]>0)){	
    PE_CUT_E7_1=append(PE_CUT_E7_1,PE_E7_1[x])
  }}
FITC_CUT_F7_1<-c()
for(x in 1:le_F7_1){
  if((FITC_F7_1[x]> A & PE_F7_1[x]>0) | 
     (PE_F7_1[x]>B & FITC_F7_1[x]>0)){
    FITC_CUT_F7_1=append(FITC_CUT_F7_1,FITC_F7_1[x])
  }}
PE_CUT_F7_1<-c()
for(x in 1:le_F7_1){
  if((FITC_F7_1[x]> A & PE_F7_1[x]>0) | 
     (PE_F7_1[x]>B & FITC_F7_1[x]>0)){	
    PE_CUT_F7_1=append(PE_CUT_F7_1,PE_F7_1[x])
  }}
FITC_CUT_G7_1<-c()
for(x in 1:le_G7_1){
  if((FITC_G7_1[x]> A & PE_G7_1[x]>0) | 
     (PE_G7_1[x]>B & FITC_G7_1[x]>0)){
    FITC_CUT_G7_1=append(FITC_CUT_G7_1,FITC_G7_1[x])
  }}
PE_CUT_G7_1<-c()
for(x in 1:le_G7_1){
  if((FITC_G7_1[x]> A & PE_G7_1[x]>0) | 
     (PE_G7_1[x]>B & FITC_G7_1[x]>0)){	
    PE_CUT_G7_1=append(PE_CUT_G7_1,PE_G7_1[x])
  }}
FITC_CUT_H7_1<-c()
for(x in 1:le_H7_1){
  if((FITC_H7_1[x]> A & PE_H7_1[x]>0) | 
     (PE_H7_1[x]>B & FITC_H7_1[x]>0)){
    FITC_CUT_H7_1=append(FITC_CUT_H7_1,FITC_H7_1[x])
  }}
PE_CUT_H7_1<-c()
for(x in 1:le_H7_1){
  if((FITC_H7_1[x]> A & PE_H7_1[x]>0) | 
     (PE_H7_1[x]>B & FITC_H7_1[x]>0)){	
    PE_CUT_H7_1=append(PE_CUT_H7_1,PE_H7_1[x])
  }}
FITC_CUT_A7_2<-c()
for(x in 1:le_A7_2){
  if((FITC_A7_2[x]> A & PE_A7_2[x]>0) | 
     (PE_A7_2[x]>B & FITC_A7_2[x]>0)){
    FITC_CUT_A7_2=append(FITC_CUT_A7_2,FITC_A7_2[x])
  }}
PE_CUT_A7_2<-c()
for(x in 1:le_A7_2){
  if((FITC_A7_2[x]> A & PE_A7_2[x]>0) | 
     (PE_A7_2[x]>B & FITC_A7_2[x]>0)){	
    PE_CUT_A7_2=append(PE_CUT_A7_2,PE_A7_2[x])
  }}
FITC_CUT_B7_2<-c()
for(x in 1:le_B7_2){
  if((FITC_B7_2[x]> A & PE_B7_2[x]>0) | 
     (PE_B7_2[x]>B & FITC_B7_2[x]>0)){
    FITC_CUT_B7_2=append(FITC_CUT_B7_2,FITC_B7_2[x])
  }}
PE_CUT_B7_2<-c()
for(x in 1:le_B7_2){
  if((FITC_B7_2[x]> A & PE_B7_2[x]>0) | 
     (PE_B7_2[x]>B & FITC_B7_2[x]>0)){	
    PE_CUT_B7_2=append(PE_CUT_B7_2,PE_B7_2[x])
  }}
FITC_CUT_C7_2<-c()
for(x in 1:le_C7_2){
  if((FITC_C7_2[x]> A & PE_C7_2[x]>0) | 
     (PE_C7_2[x]>B & FITC_C7_2[x]>0)){
    FITC_CUT_C7_2=append(FITC_CUT_C7_2,FITC_C7_2[x])
  }}
PE_CUT_C7_2<-c()
for(x in 1:le_C7_2){
  if((FITC_C7_2[x]> A & PE_C7_2[x]>0) | 
     (PE_C7_2[x]>B & FITC_C7_2[x]>0)){	
    PE_CUT_C7_2=append(PE_CUT_C7_2,PE_C7_2[x])
  }}
FITC_CUT_D7_2<-c()
for(x in 1:le_D7_2){
  if((FITC_D7_2[x]> A & PE_D7_2[x]>0) | 
     (PE_D7_2[x]>B & FITC_D7_2[x]>0)){
    FITC_CUT_D7_2=append(FITC_CUT_D7_2,FITC_D7_2[x])
  }}
PE_CUT_D7_2<-c()
for(x in 1:le_D7_2){
  if((FITC_D7_2[x]> A & PE_D7_2[x]>0) | 
     (PE_D7_2[x]>B & FITC_D7_2[x]>0)){	
    PE_CUT_D7_2=append(PE_CUT_D7_2,PE_D7_2[x])
  }}
FITC_CUT_E7_2<-c()
for(x in 1:le_E7_2){
  if((FITC_E7_2[x]> A & PE_E7_2[x]>0) | 
     (PE_E7_2[x]>B & FITC_E7_2[x]>0)){
    FITC_CUT_E7_2=append(FITC_CUT_E7_2,FITC_E7_2[x])
  }}
PE_CUT_E7_2<-c()
for(x in 1:le_E7_2){
  if((FITC_E7_2[x]> A & PE_E7_2[x]>0) | 
     (PE_E7_2[x]>B & FITC_E7_2[x]>0)){	
    PE_CUT_E7_2=append(PE_CUT_E7_2,PE_E7_2[x])
  }}
FITC_CUT_F7_2<-c()
for(x in 1:le_F7_2){
  if((FITC_F7_2[x]> A & PE_F7_2[x]>0) | 
     (PE_F7_2[x]>B & FITC_F7_2[x]>0)){
    FITC_CUT_F7_2=append(FITC_CUT_F7_2,FITC_F7_2[x])
  }}
PE_CUT_F7_2<-c()
for(x in 1:le_F7_2){
  if((FITC_F7_2[x]> A & PE_F7_2[x]>0) | 
     (PE_F7_2[x]>B & FITC_F7_2[x]>0)){	
    PE_CUT_F7_2=append(PE_CUT_F7_2,PE_F7_2[x])
  }}
FITC_CUT_G7_2<-c()
for(x in 1:le_G7_2){
  if((FITC_G7_2[x]> A & PE_G7_2[x]>0) | 
     (PE_G7_2[x]>B & FITC_G7_2[x]>0)){
    FITC_CUT_G7_2=append(FITC_CUT_G7_2,FITC_G7_2[x])
  }}
PE_CUT_G7_2<-c()
for(x in 1:le_G7_2){
  if((FITC_G7_2[x]> A & PE_G7_2[x]>0) | 
     (PE_G7_2[x]>B & FITC_G7_2[x]>0)){	
    PE_CUT_G7_2=append(PE_CUT_G7_2,PE_G7_2[x])
  }}
FITC_CUT_H7_2<-c()
for(x in 1:le_H7_2){
  if((FITC_H7_2[x]> A & PE_H7_2[x]>0) | 
     (PE_H7_2[x]>B & FITC_H7_2[x]>0)){
    FITC_CUT_H7_2=append(FITC_CUT_H7_2,FITC_H7_2[x])
  }}
PE_CUT_H7_2<-c()
for(x in 1:le_H7_2){
  if((FITC_H7_2[x]> A & PE_H7_2[x]>0) | 
     (PE_H7_2[x]>B & FITC_H7_2[x]>0)){	
    PE_CUT_H7_2=append(PE_CUT_H7_2,PE_H7_2[x])
  }}
FITC_CUT_A8_1<-c()
for(x in 1:le_A8_1){
  if((FITC_A8_1[x]> A & PE_A8_1[x]>0) | 
     (PE_A8_1[x]>B & FITC_A8_1[x]>0)){
    FITC_CUT_A8_1=append(FITC_CUT_A8_1,FITC_A8_1[x])
  }}
PE_CUT_A8_1<-c()
for(x in 1:le_A8_1){
  if((FITC_A8_1[x]> A & PE_A8_1[x]>0) | 
     (PE_A8_1[x]>B & FITC_A8_1[x]>0)){	
    PE_CUT_A8_1=append(PE_CUT_A8_1,PE_A8_1[x])
  }}
FITC_CUT_B8_1<-c()
for(x in 1:le_B8_1){
  if((FITC_B8_1[x]> A & PE_B8_1[x]>0) | 
     (PE_B8_1[x]>B & FITC_B8_1[x]>0)){
    FITC_CUT_B8_1=append(FITC_CUT_B8_1,FITC_B8_1[x])
  }}
PE_CUT_B8_1<-c()
for(x in 1:le_B8_1){
  if((FITC_B8_1[x]> A & PE_B8_1[x]>0) | 
     (PE_B8_1[x]>B & FITC_B8_1[x]>0)){	
    PE_CUT_B8_1=append(PE_CUT_B8_1,PE_B8_1[x])
  }}
FITC_CUT_C8_1<-c()
for(x in 1:le_C8_1){
  if((FITC_C8_1[x]> A & PE_C8_1[x]>0) | 
     (PE_C8_1[x]>B & FITC_C8_1[x]>0)){
    FITC_CUT_C8_1=append(FITC_CUT_C8_1,FITC_C8_1[x])
  }}
PE_CUT_C8_1<-c()
for(x in 1:le_C8_1){
  if((FITC_C8_1[x]> A & PE_C8_1[x]>0) | 
     (PE_C8_1[x]>B & FITC_C8_1[x]>0)){	
    PE_CUT_C8_1=append(PE_CUT_C8_1,PE_C8_1[x])
  }}
FITC_CUT_D8_1<-c()
for(x in 1:le_D8_1){
  if((FITC_D8_1[x]> A & PE_D8_1[x]>0) | 
     (PE_D8_1[x]>B & FITC_D8_1[x]>0)){
    FITC_CUT_D8_1=append(FITC_CUT_D8_1,FITC_D8_1[x])
  }}
PE_CUT_D8_1<-c()
for(x in 1:le_D8_1){
  if((FITC_D8_1[x]> A & PE_D8_1[x]>0) | 
     (PE_D8_1[x]>B & FITC_D8_1[x]>0)){	
    PE_CUT_D8_1=append(PE_CUT_D8_1,PE_D8_1[x])
  }}
FITC_CUT_E8_1<-c()
for(x in 1:le_E8_1){
  if((FITC_E8_1[x]> A & PE_E8_1[x]>0) | 
     (PE_E8_1[x]>B & FITC_E8_1[x]>0)){
    FITC_CUT_E8_1=append(FITC_CUT_E8_1,FITC_E8_1[x])
  }}
PE_CUT_E8_1<-c()
for(x in 1:le_E8_1){
  if((FITC_E8_1[x]> A & PE_E8_1[x]>0) | 
     (PE_E8_1[x]>B & FITC_E8_1[x]>0)){	
    PE_CUT_E8_1=append(PE_CUT_E8_1,PE_E8_1[x])
  }}
FITC_CUT_F8_1<-c()
for(x in 1:le_F8_1){
  if((FITC_F8_1[x]> A & PE_F8_1[x]>0) | 
     (PE_F8_1[x]>B & FITC_F8_1[x]>0)){
    FITC_CUT_F8_1=append(FITC_CUT_F8_1,FITC_F8_1[x])
  }}
PE_CUT_F8_1<-c()
for(x in 1:le_F8_1){
  if((FITC_F8_1[x]> A & PE_F8_1[x]>0) | 
     (PE_F8_1[x]>B & FITC_F8_1[x]>0)){	
    PE_CUT_F8_1=append(PE_CUT_F8_1,PE_F8_1[x])
  }}
FITC_CUT_G8_1<-c()
for(x in 1:le_G8_1){
  if((FITC_G8_1[x]> A & PE_G8_1[x]>0) | 
     (PE_G8_1[x]>B & FITC_G8_1[x]>0)){
    FITC_CUT_G8_1=append(FITC_CUT_G8_1,FITC_G8_1[x])
  }}
PE_CUT_G8_1<-c()
for(x in 1:le_G8_1){
  if((FITC_G8_1[x]> A & PE_G8_1[x]>0) | 
     (PE_G8_1[x]>B & FITC_G8_1[x]>0)){	
    PE_CUT_G8_1=append(PE_CUT_G8_1,PE_G8_1[x])
  }}
FITC_CUT_H8_1<-c()
for(x in 1:le_H8_1){
  if((FITC_H8_1[x]> A & PE_H8_1[x]>0) | 
     (PE_H8_1[x]>B & FITC_H8_1[x]>0)){
    FITC_CUT_H8_1=append(FITC_CUT_H8_1,FITC_H8_1[x])
  }}
PE_CUT_H8_1<-c()
for(x in 1:le_H8_1){
  if((FITC_H8_1[x]> A & PE_H8_1[x]>0) | 
     (PE_H8_1[x]>B & FITC_H8_1[x]>0)){	
    PE_CUT_H8_1=append(PE_CUT_H8_1,PE_H8_1[x])
  }}
FITC_CUT_A8_2<-c()
for(x in 1:le_A8_2){
  if((FITC_A8_2[x]> A & PE_A8_2[x]>0) | 
     (PE_A8_2[x]>B & FITC_A8_2[x]>0)){
    FITC_CUT_A8_2=append(FITC_CUT_A8_2,FITC_A8_2[x])
  }}
PE_CUT_A8_2<-c()
for(x in 1:le_A8_2){
  if((FITC_A8_2[x]> A & PE_A8_2[x]>0) | 
     (PE_A8_2[x]>B & FITC_A8_2[x]>0)){	
    PE_CUT_A8_2=append(PE_CUT_A8_2,PE_A8_2[x])
  }}
FITC_CUT_B8_2<-c()
for(x in 1:le_B8_2){
  if((FITC_B8_2[x]> A & PE_B8_2[x]>0) | 
     (PE_B8_2[x]>B & FITC_B8_2[x]>0)){
    FITC_CUT_B8_2=append(FITC_CUT_B8_2,FITC_B8_2[x])
  }}
PE_CUT_B8_2<-c()
for(x in 1:le_B8_2){
  if((FITC_B8_2[x]> A & PE_B8_2[x]>0) | 
     (PE_B8_2[x]>B & FITC_B8_2[x]>0)){	
    PE_CUT_B8_2=append(PE_CUT_B8_2,PE_B8_2[x])
  }}
FITC_CUT_C8_2<-c()
for(x in 1:le_C8_2){
  if((FITC_C8_2[x]> A & PE_C8_2[x]>0) | 
     (PE_C8_2[x]>B & FITC_C8_2[x]>0)){
    FITC_CUT_C8_2=append(FITC_CUT_C8_2,FITC_C8_2[x])
  }}
PE_CUT_C8_2<-c()
for(x in 1:le_C8_2){
  if((FITC_C8_2[x]> A & PE_C8_2[x]>0) | 
     (PE_C8_2[x]>B & FITC_C8_2[x]>0)){	
    PE_CUT_C8_2=append(PE_CUT_C8_2,PE_C8_2[x])
  }}
FITC_CUT_D8_2<-c()
for(x in 1:le_D8_2){
  if((FITC_D8_2[x]> A & PE_D8_2[x]>0) | 
     (PE_D8_2[x]>B & FITC_D8_2[x]>0)){
    FITC_CUT_D8_2=append(FITC_CUT_D8_2,FITC_D8_2[x])
  }}
PE_CUT_D8_2<-c()
for(x in 1:le_D8_2){
  if((FITC_D8_2[x]> A & PE_D8_2[x]>0) | 
     (PE_D8_2[x]>B & FITC_D8_2[x]>0)){	
    PE_CUT_D8_2=append(PE_CUT_D8_2,PE_D8_2[x])
  }}
FITC_CUT_E8_2<-c()
for(x in 1:le_E8_2){
  if((FITC_E8_2[x]> A & PE_E8_2[x]>0) | 
     (PE_E8_2[x]>B & FITC_E8_2[x]>0)){
    FITC_CUT_E8_2=append(FITC_CUT_E8_2,FITC_E8_2[x])
  }}
PE_CUT_E8_2<-c()
for(x in 1:le_E8_2){
  if((FITC_E8_2[x]> A & PE_E8_2[x]>0) | 
     (PE_E8_2[x]>B & FITC_E8_2[x]>0)){	
    PE_CUT_E8_2=append(PE_CUT_E8_2,PE_E8_2[x])
  }}
FITC_CUT_F8_2<-c()
for(x in 1:le_F8_2){
  if((FITC_F8_2[x]> A & PE_F8_2[x]>0) | 
     (PE_F8_2[x]>B & FITC_F8_2[x]>0)){
    FITC_CUT_F8_2=append(FITC_CUT_F8_2,FITC_F8_2[x])
  }}
PE_CUT_F8_2<-c()
for(x in 1:le_F8_2){
  if((FITC_F8_2[x]> A & PE_F8_2[x]>0) | 
     (PE_F8_2[x]>B & FITC_F8_2[x]>0)){	
    PE_CUT_F8_2=append(PE_CUT_F8_2,PE_F8_2[x])
  }}
FITC_CUT_G8_2<-c()
for(x in 1:le_G8_2){
  if((FITC_G8_2[x]> A & PE_G8_2[x]>0) | 
     (PE_G8_2[x]>B & FITC_G8_2[x]>0)){
    FITC_CUT_G8_2=append(FITC_CUT_G8_2,FITC_G8_2[x])
  }}
PE_CUT_G8_2<-c()
for(x in 1:le_G8_2){
  if((FITC_G8_2[x]> A & PE_G8_2[x]>0) | 
     (PE_G8_2[x]>B & FITC_G8_2[x]>0)){	
    PE_CUT_G8_2=append(PE_CUT_G8_2,PE_G8_2[x])
  }}
FITC_CUT_H8_2<-c()
for(x in 1:le_H8_2){
  if((FITC_H8_2[x]> A & PE_H8_2[x]>0) | 
     (PE_H8_2[x]>B & FITC_H8_2[x]>0)){
    FITC_CUT_H8_2=append(FITC_CUT_H8_2,FITC_H8_2[x])
  }}
PE_CUT_H8_2<-c()
for(x in 1:le_H8_2){
  if((FITC_H8_2[x]> A & PE_H8_2[x]>0) | 
     (PE_H8_2[x]>B & FITC_H8_2[x]>0)){	
    PE_CUT_H8_2=append(PE_CUT_H8_2,PE_H8_2[x])
  }}
FITC_CUT_A9_1<-c()
for(x in 1:le_A9_1){
  if((FITC_A9_1[x]> A & PE_A9_1[x]>0) | 
     (PE_A9_1[x]>B & FITC_A9_1[x]>0)){
    FITC_CUT_A9_1=append(FITC_CUT_A9_1,FITC_A9_1[x])
  }}
PE_CUT_A9_1<-c()
for(x in 1:le_A9_1){
  if((FITC_A9_1[x]> A & PE_A9_1[x]>0) | 
     (PE_A9_1[x]>B & FITC_A9_1[x]>0)){	
    PE_CUT_A9_1=append(PE_CUT_A9_1,PE_A9_1[x])
  }}
FITC_CUT_B9_1<-c()
for(x in 1:le_B9_1){
  if((FITC_B9_1[x]> A & PE_B9_1[x]>0) | 
     (PE_B9_1[x]>B & FITC_B9_1[x]>0)){
    FITC_CUT_B9_1=append(FITC_CUT_B9_1,FITC_B9_1[x])
  }}
PE_CUT_B9_1<-c()
for(x in 1:le_B9_1){
  if((FITC_B9_1[x]> A & PE_B9_1[x]>0) | 
     (PE_B9_1[x]>B & FITC_B9_1[x]>0)){	
    PE_CUT_B9_1=append(PE_CUT_B9_1,PE_B9_1[x])
  }}
FITC_CUT_C9_1<-c()
for(x in 1:le_C9_1){
  if((FITC_C9_1[x]> A & PE_C9_1[x]>0) | 
     (PE_C9_1[x]>B & FITC_C9_1[x]>0)){
    FITC_CUT_C9_1=append(FITC_CUT_C9_1,FITC_C9_1[x])
  }}
PE_CUT_C9_1<-c()
for(x in 1:le_C9_1){
  if((FITC_C9_1[x]> A & PE_C9_1[x]>0) | 
     (PE_C9_1[x]>B & FITC_C9_1[x]>0)){	
    PE_CUT_C9_1=append(PE_CUT_C9_1,PE_C9_1[x])
  }}
FITC_CUT_D9_1<-c()
for(x in 1:le_D9_1){
  if((FITC_D9_1[x]> A & PE_D9_1[x]>0) | 
     (PE_D9_1[x]>B & FITC_D9_1[x]>0)){
    FITC_CUT_D9_1=append(FITC_CUT_D9_1,FITC_D9_1[x])
  }}
PE_CUT_D9_1<-c()
for(x in 1:le_D9_1){
  if((FITC_D9_1[x]> A & PE_D9_1[x]>0) | 
     (PE_D9_1[x]>B & FITC_D9_1[x]>0)){	
    PE_CUT_D9_1=append(PE_CUT_D9_1,PE_D9_1[x])
  }}
FITC_CUT_E9_1<-c()
for(x in 1:le_E9_1){
  if((FITC_E9_1[x]> A & PE_E9_1[x]>0) | 
     (PE_E9_1[x]>B & FITC_E9_1[x]>0)){
    FITC_CUT_E9_1=append(FITC_CUT_E9_1,FITC_E9_1[x])
  }}
PE_CUT_E9_1<-c()
for(x in 1:le_E9_1){
  if((FITC_E9_1[x]> A & PE_E9_1[x]>0) | 
     (PE_E9_1[x]>B & FITC_E9_1[x]>0)){	
    PE_CUT_E9_1=append(PE_CUT_E9_1,PE_E9_1[x])
  }}
FITC_CUT_F9_1<-c()
for(x in 1:le_F9_1){
  if((FITC_F9_1[x]> A & PE_F9_1[x]>0) | 
     (PE_F9_1[x]>B & FITC_F9_1[x]>0)){
    FITC_CUT_F9_1=append(FITC_CUT_F9_1,FITC_F9_1[x])
  }}
PE_CUT_F9_1<-c()
for(x in 1:le_F9_1){
  if((FITC_F9_1[x]> A & PE_F9_1[x]>0) | 
     (PE_F9_1[x]>B & FITC_F9_1[x]>0)){	
    PE_CUT_F9_1=append(PE_CUT_F9_1,PE_F9_1[x])
  }}
FITC_CUT_G9_1<-c()
for(x in 1:le_G9_1){
  if((FITC_G9_1[x]> A & PE_G9_1[x]>0) | 
     (PE_G9_1[x]>B & FITC_G9_1[x]>0)){
    FITC_CUT_G9_1=append(FITC_CUT_G9_1,FITC_G9_1[x])
  }}
PE_CUT_G9_1<-c()
for(x in 1:le_G9_1){
  if((FITC_G9_1[x]> A & PE_G9_1[x]>0) | 
     (PE_G9_1[x]>B & FITC_G9_1[x]>0)){	
    PE_CUT_G9_1=append(PE_CUT_G9_1,PE_G9_1[x])
  }}
FITC_CUT_H9_1<-c()
for(x in 1:le_H9_1){
  if((FITC_H9_1[x]> A & PE_H9_1[x]>0) | 
     (PE_H9_1[x]>B & FITC_H9_1[x]>0)){
    FITC_CUT_H9_1=append(FITC_CUT_H9_1,FITC_H9_1[x])
  }}
PE_CUT_H9_1<-c()
for(x in 1:le_H9_1){
  if((FITC_H9_1[x]> A & PE_H9_1[x]>0) | 
     (PE_H9_1[x]>B & FITC_H9_1[x]>0)){	
    PE_CUT_H9_1=append(PE_CUT_H9_1,PE_H9_1[x])
  }}
FITC_CUT_A9_2<-c()
for(x in 1:le_A9_2){
  if((FITC_A9_2[x]> A & PE_A9_2[x]>0) | 
     (PE_A9_2[x]>B & FITC_A9_2[x]>0)){
    FITC_CUT_A9_2=append(FITC_CUT_A9_2,FITC_A9_2[x])
  }}
PE_CUT_A9_2<-c()
for(x in 1:le_A9_2){
  if((FITC_A9_2[x]> A & PE_A9_2[x]>0) | 
     (PE_A9_2[x]>B & FITC_A9_2[x]>0)){	
    PE_CUT_A9_2=append(PE_CUT_A9_2,PE_A9_2[x])
  }}
FITC_CUT_B9_2<-c()
for(x in 1:le_B9_2){
  if((FITC_B9_2[x]> A & PE_B9_2[x]>0) | 
     (PE_B9_2[x]>B & FITC_B9_2[x]>0)){
    FITC_CUT_B9_2=append(FITC_CUT_B9_2,FITC_B9_2[x])
  }}
PE_CUT_B9_2<-c()
for(x in 1:le_B9_2){
  if((FITC_B9_2[x]> A & PE_B9_2[x]>0) | 
     (PE_B9_2[x]>B & FITC_B9_2[x]>0)){	
    PE_CUT_B9_2=append(PE_CUT_B9_2,PE_B9_2[x])
  }}
FITC_CUT_C9_2<-c()
for(x in 1:le_C9_2){
  if((FITC_C9_2[x]> A & PE_C9_2[x]>0) | 
     (PE_C9_2[x]>B & FITC_C9_2[x]>0)){
    FITC_CUT_C9_2=append(FITC_CUT_C9_2,FITC_C9_2[x])
  }}
PE_CUT_C9_2<-c()
for(x in 1:le_C9_2){
  if((FITC_C9_2[x]> A & PE_C9_2[x]>0) | 
     (PE_C9_2[x]>B & FITC_C9_2[x]>0)){	
    PE_CUT_C9_2=append(PE_CUT_C9_2,PE_C9_2[x])
  }}
FITC_CUT_D9_2<-c()
for(x in 1:le_D9_2){
  if((FITC_D9_2[x]> A & PE_D9_2[x]>0) | 
     (PE_D9_2[x]>B & FITC_D9_2[x]>0)){
    FITC_CUT_D9_2=append(FITC_CUT_D9_2,FITC_D9_2[x])
  }}
PE_CUT_D9_2<-c()
for(x in 1:le_D9_2){
  if((FITC_D9_2[x]> A & PE_D9_2[x]>0) | 
     (PE_D9_2[x]>B & FITC_D9_2[x]>0)){	
    PE_CUT_D9_2=append(PE_CUT_D9_2,PE_D9_2[x])
  }}
FITC_CUT_E9_2<-c()
for(x in 1:le_E9_2){
  if((FITC_E9_2[x]> A & PE_E9_2[x]>0) | 
     (PE_E9_2[x]>B & FITC_E9_2[x]>0)){
    FITC_CUT_E9_2=append(FITC_CUT_E9_2,FITC_E9_2[x])
  }}
PE_CUT_E9_2<-c()
for(x in 1:le_E9_2){
  if((FITC_E9_2[x]> A & PE_E9_2[x]>0) | 
     (PE_E9_2[x]>B & FITC_E9_2[x]>0)){	
    PE_CUT_E9_2=append(PE_CUT_E9_2,PE_E9_2[x])
  }}
FITC_CUT_F9_2<-c()
for(x in 1:le_F9_2){
  if((FITC_F9_2[x]> A & PE_F9_2[x]>0) | 
     (PE_F9_2[x]>B & FITC_F9_2[x]>0)){
    FITC_CUT_F9_2=append(FITC_CUT_F9_2,FITC_F9_2[x])
  }}
PE_CUT_F9_2<-c()
for(x in 1:le_F9_2){
  if((FITC_F9_2[x]> A & PE_F9_2[x]>0) | 
     (PE_F9_2[x]>B & FITC_F9_2[x]>0)){	
    PE_CUT_F9_2=append(PE_CUT_F9_2,PE_F9_2[x])
  }}
FITC_CUT_G9_2<-c()
for(x in 1:le_G9_2){
  if((FITC_G9_2[x]> A & PE_G9_2[x]>0) | 
     (PE_G9_2[x]>B & FITC_G9_2[x]>0)){
    FITC_CUT_G9_2=append(FITC_CUT_G9_2,FITC_G9_2[x])
  }}
PE_CUT_G9_2<-c()
for(x in 1:le_G9_2){
  if((FITC_G9_2[x]> A & PE_G9_2[x]>0) | 
     (PE_G9_2[x]>B & FITC_G9_2[x]>0)){	
    PE_CUT_G9_2=append(PE_CUT_G9_2,PE_G9_2[x])
  }}
FITC_CUT_H9_2<-c()
for(x in 1:le_H9_2){
  if((FITC_H9_2[x]> A & PE_H9_2[x]>0) | 
     (PE_H9_2[x]>B & FITC_H9_2[x]>0)){
    FITC_CUT_H9_2=append(FITC_CUT_H9_2,FITC_H9_2[x])
  }}
PE_CUT_H9_2<-c()
for(x in 1:le_H9_2){
  if((FITC_H9_2[x]> A & PE_H9_2[x]>0) | 
     (PE_H9_2[x]>B & FITC_H9_2[x]>0)){	
    PE_CUT_H9_2=append(PE_CUT_H9_2,PE_H9_2[x])
  }}
FITC_CUT_A10_1<-c()
for(x in 1:le_A10_1){
  if((FITC_A10_1[x]> A & PE_A10_1[x]>0) | 
     (PE_A10_1[x]>B & FITC_A10_1[x]>0)){
    FITC_CUT_A10_1=append(FITC_CUT_A10_1,FITC_A10_1[x])
  }}
PE_CUT_A10_1<-c()
for(x in 1:le_A10_1){
  if((FITC_A10_1[x]> A & PE_A10_1[x]>0) | 
     (PE_A10_1[x]>B & FITC_A10_1[x]>0)){	
    PE_CUT_A10_1=append(PE_CUT_A10_1,PE_A10_1[x])
  }}
FITC_CUT_B10_1<-c()
for(x in 1:le_B10_1){
  if((FITC_B10_1[x]> A & PE_B10_1[x]>0) | 
     (PE_B10_1[x]>B & FITC_B10_1[x]>0)){
    FITC_CUT_B10_1=append(FITC_CUT_B10_1,FITC_B10_1[x])
  }}
PE_CUT_B10_1<-c()
for(x in 1:le_B10_1){
  if((FITC_B10_1[x]> A & PE_B10_1[x]>0) | 
     (PE_B10_1[x]>B & FITC_B10_1[x]>0)){	
    PE_CUT_B10_1=append(PE_CUT_B10_1,PE_B10_1[x])
  }}
FITC_CUT_C10_1<-c()
for(x in 1:le_C10_1){
  if((FITC_C10_1[x]> A & PE_C10_1[x]>0) | 
     (PE_C10_1[x]>B & FITC_C10_1[x]>0)){
    FITC_CUT_C10_1=append(FITC_CUT_C10_1,FITC_C10_1[x])
  }}
PE_CUT_C10_1<-c()
for(x in 1:le_C10_1){
  if((FITC_C10_1[x]> A & PE_C10_1[x]>0) | 
     (PE_C10_1[x]>B & FITC_C10_1[x]>0)){	
    PE_CUT_C10_1=append(PE_CUT_C10_1,PE_C10_1[x])
  }}
FITC_CUT_D10_1<-c()
for(x in 1:le_D10_1){
  if((FITC_D10_1[x]> A & PE_D10_1[x]>0) | 
     (PE_D10_1[x]>B & FITC_D10_1[x]>0)){
    FITC_CUT_D10_1=append(FITC_CUT_D10_1,FITC_D10_1[x])
  }}
PE_CUT_D10_1<-c()
for(x in 1:le_D10_1){
  if((FITC_D10_1[x]> A & PE_D10_1[x]>0) | 
     (PE_D10_1[x]>B & FITC_D10_1[x]>0)){	
    PE_CUT_D10_1=append(PE_CUT_D10_1,PE_D10_1[x])
  }}
FITC_CUT_E10_1<-c()
for(x in 1:le_E10_1){
  if((FITC_E10_1[x]> A & PE_E10_1[x]>0) | 
     (PE_E10_1[x]>B & FITC_E10_1[x]>0)){
    FITC_CUT_E10_1=append(FITC_CUT_E10_1,FITC_E10_1[x])
  }}
PE_CUT_E10_1<-c()
for(x in 1:le_E10_1){
  if((FITC_E10_1[x]> A & PE_E10_1[x]>0) | 
     (PE_E10_1[x]>B & FITC_E10_1[x]>0)){	
    PE_CUT_E10_1=append(PE_CUT_E10_1,PE_E10_1[x])
  }}
FITC_CUT_F10_1<-c()
for(x in 1:le_F10_1){
  if((FITC_F10_1[x]> A & PE_F10_1[x]>0) | 
     (PE_F10_1[x]>B & FITC_F10_1[x]>0)){
    FITC_CUT_F10_1=append(FITC_CUT_F10_1,FITC_F10_1[x])
  }}
PE_CUT_F10_1<-c()
for(x in 1:le_F10_1){
  if((FITC_F10_1[x]> A & PE_F10_1[x]>0) | 
     (PE_F10_1[x]>B & FITC_F10_1[x]>0)){	
    PE_CUT_F10_1=append(PE_CUT_F10_1,PE_F10_1[x])
  }}
FITC_CUT_G10_1<-c()
for(x in 1:le_G10_1){
  if((FITC_G10_1[x]> A & PE_G10_1[x]>0) | 
     (PE_G10_1[x]>B & FITC_G10_1[x]>0)){
    FITC_CUT_G10_1=append(FITC_CUT_G10_1,FITC_G10_1[x])
  }}
PE_CUT_G10_1<-c()
for(x in 1:le_G10_1){
  if((FITC_G10_1[x]> A & PE_G10_1[x]>0) | 
     (PE_G10_1[x]>B & FITC_G10_1[x]>0)){	
    PE_CUT_G10_1=append(PE_CUT_G10_1,PE_G10_1[x])
  }}
FITC_CUT_H10_1<-c()
for(x in 1:le_H10_1){
  if((FITC_H10_1[x]> A & PE_H10_1[x]>0) | 
     (PE_H10_1[x]>B & FITC_H10_1[x]>0)){
    FITC_CUT_H10_1=append(FITC_CUT_H10_1,FITC_H10_1[x])
  }}
PE_CUT_H10_1<-c()
for(x in 1:le_H10_1){
  if((FITC_H10_1[x]> A & PE_H10_1[x]>0) | 
     (PE_H10_1[x]>B & FITC_H10_1[x]>0)){	
    PE_CUT_H10_1=append(PE_CUT_H10_1,PE_H10_1[x])
  }}
FITC_CUT_A10_2<-c()
for(x in 1:le_A10_2){
  if((FITC_A10_2[x]> A & PE_A10_2[x]>0) | 
     (PE_A10_2[x]>B & FITC_A10_2[x]>0)){
    FITC_CUT_A10_2=append(FITC_CUT_A10_2,FITC_A10_2[x])
  }}
PE_CUT_A10_2<-c()
for(x in 1:le_A10_2){
  if((FITC_A10_2[x]> A & PE_A10_2[x]>0) | 
     (PE_A10_2[x]>B & FITC_A10_2[x]>0)){	
    PE_CUT_A10_2=append(PE_CUT_A10_2,PE_A10_2[x])
  }}
FITC_CUT_B10_2<-c()
for(x in 1:le_B10_2){
  if((FITC_B10_2[x]> A & PE_B10_2[x]>0) | 
     (PE_B10_2[x]>B & FITC_B10_2[x]>0)){
    FITC_CUT_B10_2=append(FITC_CUT_B10_2,FITC_B10_2[x])
  }}
PE_CUT_B10_2<-c()
for(x in 1:le_B10_2){
  if((FITC_B10_2[x]> A & PE_B10_2[x]>0) | 
     (PE_B10_2[x]>B & FITC_B10_2[x]>0)){	
    PE_CUT_B10_2=append(PE_CUT_B10_2,PE_B10_2[x])
  }}
FITC_CUT_C10_2<-c()
for(x in 1:le_C10_2){
  if((FITC_C10_2[x]> A & PE_C10_2[x]>0) | 
     (PE_C10_2[x]>B & FITC_C10_2[x]>0)){
    FITC_CUT_C10_2=append(FITC_CUT_C10_2,FITC_C10_2[x])
  }}
PE_CUT_C10_2<-c()
for(x in 1:le_C10_2){
  if((FITC_C10_2[x]> A & PE_C10_2[x]>0) | 
     (PE_C10_2[x]>B & FITC_C10_2[x]>0)){	
    PE_CUT_C10_2=append(PE_CUT_C10_2,PE_C10_2[x])
  }}
FITC_CUT_D10_2<-c()
for(x in 1:le_D10_2){
  if((FITC_D10_2[x]> A & PE_D10_2[x]>0) | 
     (PE_D10_2[x]>B & FITC_D10_2[x]>0)){
    FITC_CUT_D10_2=append(FITC_CUT_D10_2,FITC_D10_2[x])
  }}
PE_CUT_D10_2<-c()
for(x in 1:le_D10_2){
  if((FITC_D10_2[x]> A & PE_D10_2[x]>0) | 
     (PE_D10_2[x]>B & FITC_D10_2[x]>0)){	
    PE_CUT_D10_2=append(PE_CUT_D10_2,PE_D10_2[x])
  }}
FITC_CUT_E10_2<-c()
for(x in 1:le_E10_2){
  if((FITC_E10_2[x]> A & PE_E10_2[x]>0) | 
     (PE_E10_2[x]>B & FITC_E10_2[x]>0)){
    FITC_CUT_E10_2=append(FITC_CUT_E10_2,FITC_E10_2[x])
  }}
PE_CUT_E10_2<-c()
for(x in 1:le_E10_2){
  if((FITC_E10_2[x]> A & PE_E10_2[x]>0) | 
     (PE_E10_2[x]>B & FITC_E10_2[x]>0)){	
    PE_CUT_E10_2=append(PE_CUT_E10_2,PE_E10_2[x])
  }}
FITC_CUT_F10_2<-c()
for(x in 1:le_F10_2){
  if((FITC_F10_2[x]> A & PE_F10_2[x]>0) | 
     (PE_F10_2[x]>B & FITC_F10_2[x]>0)){
    FITC_CUT_F10_2=append(FITC_CUT_F10_2,FITC_F10_2[x])
  }}
PE_CUT_F10_2<-c()
for(x in 1:le_F10_2){
  if((FITC_F10_2[x]> A & PE_F10_2[x]>0) | 
     (PE_F10_2[x]>B & FITC_F10_2[x]>0)){	
    PE_CUT_F10_2=append(PE_CUT_F10_2,PE_F10_2[x])
  }}
FITC_CUT_G10_2<-c()
for(x in 1:le_G10_2){
  if((FITC_G10_2[x]> A & PE_G10_2[x]>0) | 
     (PE_G10_2[x]>B & FITC_G10_2[x]>0)){
    FITC_CUT_G10_2=append(FITC_CUT_G10_2,FITC_G10_2[x])
  }}
PE_CUT_G10_2<-c()
for(x in 1:le_G10_2){
  if((FITC_G10_2[x]> A & PE_G10_2[x]>0) | 
     (PE_G10_2[x]>B & FITC_G10_2[x]>0)){	
    PE_CUT_G10_2=append(PE_CUT_G10_2,PE_G10_2[x])
  }}
FITC_CUT_H10_2<-c()
for(x in 1:le_H10_2){
  if((FITC_H10_2[x]> A & PE_H10_2[x]>0) | 
     (PE_H10_2[x]>B & FITC_H10_2[x]>0)){
    FITC_CUT_H10_2=append(FITC_CUT_H10_2,FITC_H10_2[x])
  }}
PE_CUT_H10_2<-c()
for(x in 1:le_H10_2){
  if((FITC_H10_2[x]> A & PE_H10_2[x]>0) | 
     (PE_H10_2[x]>B & FITC_H10_2[x]>0)){	
    PE_CUT_H10_2=append(PE_CUT_H10_2,PE_H10_2[x])
  }}
FITC_CUT_A11_1<-c()
for(x in 1:le_A11_1){
  if((FITC_A11_1[x]> A & PE_A11_1[x]>0) | 
     (PE_A11_1[x]>B & FITC_A11_1[x]>0)){
    FITC_CUT_A11_1=append(FITC_CUT_A11_1,FITC_A11_1[x])
  }}
PE_CUT_A11_1<-c()
for(x in 1:le_A11_1){
  if((FITC_A11_1[x]> A & PE_A11_1[x]>0) | 
     (PE_A11_1[x]>B & FITC_A11_1[x]>0)){	
    PE_CUT_A11_1=append(PE_CUT_A11_1,PE_A11_1[x])
  }}
FITC_CUT_B11_1<-c()
for(x in 1:le_B11_1){
  if((FITC_B11_1[x]> A & PE_B11_1[x]>0) | 
     (PE_B11_1[x]>B & FITC_B11_1[x]>0)){
    FITC_CUT_B11_1=append(FITC_CUT_B11_1,FITC_B11_1[x])
  }}
PE_CUT_B11_1<-c()
for(x in 1:le_B11_1){
  if((FITC_B11_1[x]> A & PE_B11_1[x]>0) | 
     (PE_B11_1[x]>B & FITC_B11_1[x]>0)){	
    PE_CUT_B11_1=append(PE_CUT_B11_1,PE_B11_1[x])
  }}
FITC_CUT_C11_1<-c()
for(x in 1:le_C11_1){
  if((FITC_C11_1[x]> A & PE_C11_1[x]>0) | 
     (PE_C11_1[x]>B & FITC_C11_1[x]>0)){
    FITC_CUT_C11_1=append(FITC_CUT_C11_1,FITC_C11_1[x])
  }}
PE_CUT_C11_1<-c()
for(x in 1:le_C11_1){
  if((FITC_C11_1[x]> A & PE_C11_1[x]>0) | 
     (PE_C11_1[x]>B & FITC_C11_1[x]>0)){	
    PE_CUT_C11_1=append(PE_CUT_C11_1,PE_C11_1[x])
  }}
FITC_CUT_D11_1<-c()
for(x in 1:le_D11_1){
  if((FITC_D11_1[x]> A & PE_D11_1[x]>0) | 
     (PE_D11_1[x]>B & FITC_D11_1[x]>0)){
    FITC_CUT_D11_1=append(FITC_CUT_D11_1,FITC_D11_1[x])
  }}
PE_CUT_D11_1<-c()
for(x in 1:le_D11_1){
  if((FITC_D11_1[x]> A & PE_D11_1[x]>0) | 
     (PE_D11_1[x]>B & FITC_D11_1[x]>0)){	
    PE_CUT_D11_1=append(PE_CUT_D11_1,PE_D11_1[x])
  }}
FITC_CUT_E11_1<-c()
for(x in 1:le_E11_1){
  if((FITC_E11_1[x]> A & PE_E11_1[x]>0) | 
     (PE_E11_1[x]>B & FITC_E11_1[x]>0)){
    FITC_CUT_E11_1=append(FITC_CUT_E11_1,FITC_E11_1[x])
  }}
PE_CUT_E11_1<-c()
for(x in 1:le_E11_1){
  if((FITC_E11_1[x]> A & PE_E11_1[x]>0) | 
     (PE_E11_1[x]>B & FITC_E11_1[x]>0)){	
    PE_CUT_E11_1=append(PE_CUT_E11_1,PE_E11_1[x])
  }}
FITC_CUT_F11_1<-c()
for(x in 1:le_F11_1){
  if((FITC_F11_1[x]> A & PE_F11_1[x]>0) | 
     (PE_F11_1[x]>B & FITC_F11_1[x]>0)){
    FITC_CUT_F11_1=append(FITC_CUT_F11_1,FITC_F11_1[x])
  }}
PE_CUT_F11_1<-c()
for(x in 1:le_F11_1){
  if((FITC_F11_1[x]> A & PE_F11_1[x]>0) | 
     (PE_F11_1[x]>B & FITC_F11_1[x]>0)){	
    PE_CUT_F11_1=append(PE_CUT_F11_1,PE_F11_1[x])
  }}
FITC_CUT_G11_1<-c()
for(x in 1:le_G11_1){
  if((FITC_G11_1[x]> A & PE_G11_1[x]>0) | 
     (PE_G11_1[x]>B & FITC_G11_1[x]>0)){
    FITC_CUT_G11_1=append(FITC_CUT_G11_1,FITC_G11_1[x])
  }}
PE_CUT_G11_1<-c()
for(x in 1:le_G11_1){
  if((FITC_G11_1[x]> A & PE_G11_1[x]>0) | 
     (PE_G11_1[x]>B & FITC_G11_1[x]>0)){	
    PE_CUT_G11_1=append(PE_CUT_G11_1,PE_G11_1[x])
  }}
FITC_CUT_H11_1<-c()
for(x in 1:le_H11_1){
  if((FITC_H11_1[x]> A & PE_H11_1[x]>0) | 
     (PE_H11_1[x]>B & FITC_H11_1[x]>0)){
    FITC_CUT_H11_1=append(FITC_CUT_H11_1,FITC_H11_1[x])
  }}
PE_CUT_H11_1<-c()
for(x in 1:le_H11_1){
  if((FITC_H11_1[x]> A & PE_H11_1[x]>0) | 
     (PE_H11_1[x]>B & FITC_H11_1[x]>0)){	
    PE_CUT_H11_1=append(PE_CUT_H11_1,PE_H11_1[x])
  }}
FITC_CUT_A11_2<-c()
for(x in 1:le_A11_2){
  if((FITC_A11_2[x]> A & PE_A11_2[x]>0) | 
     (PE_A11_2[x]>B & FITC_A11_2[x]>0)){
    FITC_CUT_A11_2=append(FITC_CUT_A11_2,FITC_A11_2[x])
  }}
PE_CUT_A11_2<-c()
for(x in 1:le_A11_2){
  if((FITC_A11_2[x]> A & PE_A11_2[x]>0) | 
     (PE_A11_2[x]>B & FITC_A11_2[x]>0)){	
    PE_CUT_A11_2=append(PE_CUT_A11_2,PE_A11_2[x])
  }}
FITC_CUT_B11_2<-c()
for(x in 1:le_B11_2){
  if((FITC_B11_2[x]> A & PE_B11_2[x]>0) | 
     (PE_B11_2[x]>B & FITC_B11_2[x]>0)){
    FITC_CUT_B11_2=append(FITC_CUT_B11_2,FITC_B11_2[x])
  }}
PE_CUT_B11_2<-c()
for(x in 1:le_B11_2){
  if((FITC_B11_2[x]> A & PE_B11_2[x]>0) | 
     (PE_B11_2[x]>B & FITC_B11_2[x]>0)){	
    PE_CUT_B11_2=append(PE_CUT_B11_2,PE_B11_2[x])
  }}
FITC_CUT_C11_2<-c()
for(x in 1:le_C11_2){
  if((FITC_C11_2[x]> A & PE_C11_2[x]>0) | 
     (PE_C11_2[x]>B & FITC_C11_2[x]>0)){
    FITC_CUT_C11_2=append(FITC_CUT_C11_2,FITC_C11_2[x])
  }}
PE_CUT_C11_2<-c()
for(x in 1:le_C11_2){
  if((FITC_C11_2[x]> A & PE_C11_2[x]>0) | 
     (PE_C11_2[x]>B & FITC_C11_2[x]>0)){	
    PE_CUT_C11_2=append(PE_CUT_C11_2,PE_C11_2[x])
  }}
FITC_CUT_D11_2<-c()
for(x in 1:le_D11_2){
  if((FITC_D11_2[x]> A & PE_D11_2[x]>0) | 
     (PE_D11_2[x]>B & FITC_D11_2[x]>0)){
    FITC_CUT_D11_2=append(FITC_CUT_D11_2,FITC_D11_2[x])
  }}
PE_CUT_D11_2<-c()
for(x in 1:le_D11_2){
  if((FITC_D11_2[x]> A & PE_D11_2[x]>0) | 
     (PE_D11_2[x]>B & FITC_D11_2[x]>0)){	
    PE_CUT_D11_2=append(PE_CUT_D11_2,PE_D11_2[x])
  }}
FITC_CUT_E11_2<-c()
for(x in 1:le_E11_2){
  if((FITC_E11_2[x]> A & PE_E11_2[x]>0) | 
     (PE_E11_2[x]>B & FITC_E11_2[x]>0)){
    FITC_CUT_E11_2=append(FITC_CUT_E11_2,FITC_E11_2[x])
  }}
PE_CUT_E11_2<-c()
for(x in 1:le_E11_2){
  if((FITC_E11_2[x]> A & PE_E11_2[x]>0) | 
     (PE_E11_2[x]>B & FITC_E11_2[x]>0)){	
    PE_CUT_E11_2=append(PE_CUT_E11_2,PE_E11_2[x])
  }}
FITC_CUT_F11_2<-c()
for(x in 1:le_F11_2){
  if((FITC_F11_2[x]> A & PE_F11_2[x]>0) | 
     (PE_F11_2[x]>B & FITC_F11_2[x]>0)){
    FITC_CUT_F11_2=append(FITC_CUT_F11_2,FITC_F11_2[x])
  }}
PE_CUT_F11_2<-c()
for(x in 1:le_F11_2){
  if((FITC_F11_2[x]> A & PE_F11_2[x]>0) | 
     (PE_F11_2[x]>B & FITC_F11_2[x]>0)){	
    PE_CUT_F11_2=append(PE_CUT_F11_2,PE_F11_2[x])
  }}
FITC_CUT_G11_2<-c()
for(x in 1:le_G11_2){
  if((FITC_G11_2[x]> A & PE_G11_2[x]>0) | 
     (PE_G11_2[x]>B & FITC_G11_2[x]>0)){
    FITC_CUT_G11_2=append(FITC_CUT_G11_2,FITC_G11_2[x])
  }}
PE_CUT_G11_2<-c()
for(x in 1:le_G11_2){
  if((FITC_G11_2[x]> A & PE_G11_2[x]>0) | 
     (PE_G11_2[x]>B & FITC_G11_2[x]>0)){	
    PE_CUT_G11_2=append(PE_CUT_G11_2,PE_G11_2[x])
  }}
FITC_CUT_H11_2<-c()
for(x in 1:le_H11_2){
  if((FITC_H11_2[x]> A & PE_H11_2[x]>0) | 
     (PE_H11_2[x]>B & FITC_H11_2[x]>0)){
    FITC_CUT_H11_2=append(FITC_CUT_H11_2,FITC_H11_2[x])
  }}
PE_CUT_H11_2<-c()
for(x in 1:le_H11_2){
  if((FITC_H11_2[x]> A & PE_H11_2[x]>0) | 
     (PE_H11_2[x]>B & FITC_H11_2[x]>0)){	
    PE_CUT_H11_2=append(PE_CUT_H11_2,PE_H11_2[x])
  }}
FITC_CUT_A12_1<-c()
for(x in 1:le_A12_1){
  if((FITC_A12_1[x]> A & PE_A12_1[x]>0) | 
     (PE_A12_1[x]>B & FITC_A12_1[x]>0)){
    FITC_CUT_A12_1=append(FITC_CUT_A12_1,FITC_A12_1[x])
  }}
PE_CUT_A12_1<-c()
for(x in 1:le_A12_1){
  if((FITC_A12_1[x]> A & PE_A12_1[x]>0) | 
     (PE_A12_1[x]>B & FITC_A12_1[x]>0)){	
    PE_CUT_A12_1=append(PE_CUT_A12_1,PE_A12_1[x])
  }}
FITC_CUT_B12_1<-c()
for(x in 1:le_B12_1){
  if((FITC_B12_1[x]> A & PE_B12_1[x]>0) | 
     (PE_B12_1[x]>B & FITC_B12_1[x]>0)){
    FITC_CUT_B12_1=append(FITC_CUT_B12_1,FITC_B12_1[x])
  }}
PE_CUT_B12_1<-c()
for(x in 1:le_B12_1){
  if((FITC_B12_1[x]> A & PE_B12_1[x]>0) | 
     (PE_B12_1[x]>B & FITC_B12_1[x]>0)){	
    PE_CUT_B12_1=append(PE_CUT_B12_1,PE_B12_1[x])
  }}
FITC_CUT_C12_1<-c()
for(x in 1:le_C12_1){
  if((FITC_C12_1[x]> A & PE_C12_1[x]>0) | 
     (PE_C12_1[x]>B & FITC_C12_1[x]>0)){
    FITC_CUT_C12_1=append(FITC_CUT_C12_1,FITC_C12_1[x])
  }}
PE_CUT_C12_1<-c()
for(x in 1:le_C12_1){
  if((FITC_C12_1[x]> A & PE_C12_1[x]>0) | 
     (PE_C12_1[x]>B & FITC_C12_1[x]>0)){	
    PE_CUT_C12_1=append(PE_CUT_C12_1,PE_C12_1[x])
  }}
FITC_CUT_D12_1<-c()
for(x in 1:le_D12_1){
  if((FITC_D12_1[x]> A & PE_D12_1[x]>0) | 
     (PE_D12_1[x]>B & FITC_D12_1[x]>0)){
    FITC_CUT_D12_1=append(FITC_CUT_D12_1,FITC_D12_1[x])
  }}
PE_CUT_D12_1<-c()
for(x in 1:le_D12_1){
  if((FITC_D12_1[x]> A & PE_D12_1[x]>0) | 
     (PE_D12_1[x]>B & FITC_D12_1[x]>0)){	
    PE_CUT_D12_1=append(PE_CUT_D12_1,PE_D12_1[x])
  }}
FITC_CUT_E12_1<-c()
for(x in 1:le_E12_1){
  if((FITC_E12_1[x]> A & PE_E12_1[x]>0) | 
     (PE_E12_1[x]>B & FITC_E12_1[x]>0)){
    FITC_CUT_E12_1=append(FITC_CUT_E12_1,FITC_E12_1[x])
  }}
PE_CUT_E12_1<-c()
for(x in 1:le_E12_1){
  if((FITC_E12_1[x]> A & PE_E12_1[x]>0) | 
     (PE_E12_1[x]>B & FITC_E12_1[x]>0)){	
    PE_CUT_E12_1=append(PE_CUT_E12_1,PE_E12_1[x])
  }}
FITC_CUT_F12_1<-c()
for(x in 1:le_F12_1){
  if((FITC_F12_1[x]> A & PE_F12_1[x]>0) | 
     (PE_F12_1[x]>B & FITC_F12_1[x]>0)){
    FITC_CUT_F12_1=append(FITC_CUT_F12_1,FITC_F12_1[x])
  }}
PE_CUT_F12_1<-c()
for(x in 1:le_F12_1){
  if((FITC_F12_1[x]> A & PE_F12_1[x]>0) | 
     (PE_F12_1[x]>B & FITC_F12_1[x]>0)){	
    PE_CUT_F12_1=append(PE_CUT_F12_1,PE_F12_1[x])
  }}
FITC_CUT_G12_1<-c()
for(x in 1:le_G12_1){
  if((FITC_G12_1[x]> A & PE_G12_1[x]>0) | 
     (PE_G12_1[x]>B & FITC_G12_1[x]>0)){
    FITC_CUT_G12_1=append(FITC_CUT_G12_1,FITC_G12_1[x])
  }}
PE_CUT_G12_1<-c()
for(x in 1:le_G12_1){
  if((FITC_G12_1[x]> A & PE_G12_1[x]>0) | 
     (PE_G12_1[x]>B & FITC_G12_1[x]>0)){	
    PE_CUT_G12_1=append(PE_CUT_G12_1,PE_G12_1[x])
  }}
FITC_CUT_H12_1<-c()
for(x in 1:le_H12_1){
  if((FITC_H12_1[x]> A & PE_H12_1[x]>0) | 
     (PE_H12_1[x]>B & FITC_H12_1[x]>0)){
    FITC_CUT_H12_1=append(FITC_CUT_H12_1,FITC_H12_1[x])
  }}
PE_CUT_H12_1<-c()
for(x in 1:le_H12_1){
  if((FITC_H12_1[x]> A & PE_H12_1[x]>0) | 
     (PE_H12_1[x]>B & FITC_H12_1[x]>0)){	
    PE_CUT_H12_1=append(PE_CUT_H12_1,PE_H12_1[x])
  }}
FITC_CUT_A12_2<-c()
for(x in 1:le_A12_2){
  if((FITC_A12_2[x]> A & PE_A12_2[x]>0) | 
     (PE_A12_2[x]>B & FITC_A12_2[x]>0)){
    FITC_CUT_A12_2=append(FITC_CUT_A12_2,FITC_A12_2[x])
  }}
PE_CUT_A12_2<-c()
for(x in 1:le_A12_2){
  if((FITC_A12_2[x]> A & PE_A12_2[x]>0) | 
     (PE_A12_2[x]>B & FITC_A12_2[x]>0)){	
    PE_CUT_A12_2=append(PE_CUT_A12_2,PE_A12_2[x])
  }}
FITC_CUT_B12_2<-c()
for(x in 1:le_B12_2){
  if((FITC_B12_2[x]> A & PE_B12_2[x]>0) | 
     (PE_B12_2[x]>B & FITC_B12_2[x]>0)){
    FITC_CUT_B12_2=append(FITC_CUT_B12_2,FITC_B12_2[x])
  }}
PE_CUT_B12_2<-c()
for(x in 1:le_B12_2){
  if((FITC_B12_2[x]> A & PE_B12_2[x]>0) | 
     (PE_B12_2[x]>B & FITC_B12_2[x]>0)){	
    PE_CUT_B12_2=append(PE_CUT_B12_2,PE_B12_2[x])
  }}
FITC_CUT_C12_2<-c()
for(x in 1:le_C12_2){
  if((FITC_C12_2[x]> A & PE_C12_2[x]>0) | 
     (PE_C12_2[x]>B & FITC_C12_2[x]>0)){
    FITC_CUT_C12_2=append(FITC_CUT_C12_2,FITC_C12_2[x])
  }}
PE_CUT_C12_2<-c()
for(x in 1:le_C12_2){
  if((FITC_C12_2[x]> A & PE_C12_2[x]>0) | 
     (PE_C12_2[x]>B & FITC_C12_2[x]>0)){	
    PE_CUT_C12_2=append(PE_CUT_C12_2,PE_C12_2[x])
  }}
FITC_CUT_D12_2<-c()
for(x in 1:le_D12_2){
  if((FITC_D12_2[x]> A & PE_D12_2[x]>0) | 
     (PE_D12_2[x]>B & FITC_D12_2[x]>0)){
    FITC_CUT_D12_2=append(FITC_CUT_D12_2,FITC_D12_2[x])
  }}
PE_CUT_D12_2<-c()
for(x in 1:le_D12_2){
  if((FITC_D12_2[x]> A & PE_D12_2[x]>0) | 
     (PE_D12_2[x]>B & FITC_D12_2[x]>0)){	
    PE_CUT_D12_2=append(PE_CUT_D12_2,PE_D12_2[x])
  }}
FITC_CUT_E12_2<-c()
for(x in 1:le_E12_2){
  if((FITC_E12_2[x]> A & PE_E12_2[x]>0) | 
     (PE_E12_2[x]>B & FITC_E12_2[x]>0)){
    FITC_CUT_E12_2=append(FITC_CUT_E12_2,FITC_E12_2[x])
  }}
PE_CUT_E12_2<-c()
for(x in 1:le_E12_2){
  if((FITC_E12_2[x]> A & PE_E12_2[x]>0) | 
     (PE_E12_2[x]>B & FITC_E12_2[x]>0)){	
    PE_CUT_E12_2=append(PE_CUT_E12_2,PE_E12_2[x])
  }}
FITC_CUT_F12_2<-c()
for(x in 1:le_F12_2){
  if((FITC_F12_2[x]> A & PE_F12_2[x]>0) | 
     (PE_F12_2[x]>B & FITC_F12_2[x]>0)){
    FITC_CUT_F12_2=append(FITC_CUT_F12_2,FITC_F12_2[x])
  }}
PE_CUT_F12_2<-c()
for(x in 1:le_F12_2){
  if((FITC_F12_2[x]> A & PE_F12_2[x]>0) | 
     (PE_F12_2[x]>B & FITC_F12_2[x]>0)){	
    PE_CUT_F12_2=append(PE_CUT_F12_2,PE_F12_2[x])
  }}
FITC_CUT_G12_2<-c()
for(x in 1:le_G12_2){
  if((FITC_G12_2[x]> A & PE_G12_2[x]>0) | 
     (PE_G12_2[x]>B & FITC_G12_2[x]>0)){
    FITC_CUT_G12_2=append(FITC_CUT_G12_2,FITC_G12_2[x])
  }}
PE_CUT_G12_2<-c()
for(x in 1:le_G12_2){
  if((FITC_G12_2[x]> A & PE_G12_2[x]>0) | 
     (PE_G12_2[x]>B & FITC_G12_2[x]>0)){	
    PE_CUT_G12_2=append(PE_CUT_G12_2,PE_G12_2[x])
  }}
FITC_CUT_H12_2<-c()
for(x in 1:le_H12_2){
  if((FITC_H12_2[x]> A & PE_H12_2[x]>0) | 
     (PE_H12_2[x]>B & FITC_H12_2[x]>0)){
    FITC_CUT_H12_2=append(FITC_CUT_H12_2,FITC_H12_2[x])
  }}
PE_CUT_H12_2<-c()
for(x in 1:le_H12_2){
  if((FITC_H12_2[x]> A & PE_H12_2[x]>0) | 
     (PE_H12_2[x]>B & FITC_H12_2[x]>0)){	
    PE_CUT_H12_2=append(PE_CUT_H12_2,PE_H12_2[x])
  }}

#Removing outliers_threshold 2.5

FITC_out_CUT_A1_1 <- outliers_mad(x = FITC_CUT_A1_1, threshold = 2.5)
rFITC_CUT_A1_1 <- data.frame("Removed_FITC_CUT_A1_1" = FITC_CUT_A1_1);
rFITC_CUT_A1_1$Removed_FITC_CUT_A1_1[FITC_out_CUT_A1_1$outliers_pos] <- NA;
FITC_CUT_A1_1 <- rFITC_CUT_A1_1$Removed_FITC_CUT_A1_1;
FITC_out_CUT_B1_1 <- outliers_mad(x = FITC_CUT_B1_1, threshold = 2.5)
rFITC_CUT_B1_1 <- data.frame("Removed_FITC_CUT_B1_1" = FITC_CUT_B1_1);
rFITC_CUT_B1_1$Removed_FITC_CUT_B1_1[FITC_out_CUT_B1_1$outliers_pos] <- NA;
FITC_CUT_B1_1 <- rFITC_CUT_B1_1$Removed_FITC_CUT_B1_1;
FITC_out_CUT_C1_1 <- outliers_mad(x = FITC_CUT_C1_1, threshold = 2.5)
rFITC_CUT_C1_1 <- data.frame("Removed_FITC_CUT_C1_1" = FITC_CUT_C1_1);
rFITC_CUT_C1_1$Removed_FITC_CUT_C1_1[FITC_out_CUT_C1_1$outliers_pos] <- NA;
FITC_CUT_C1_1 <- rFITC_CUT_C1_1$Removed_FITC_CUT_C1_1;
FITC_out_CUT_D1_1 <- outliers_mad(x = FITC_CUT_D1_1, threshold = 2.5)
rFITC_CUT_D1_1 <- data.frame("Removed_FITC_CUT_D1_1" = FITC_CUT_D1_1);
rFITC_CUT_D1_1$Removed_FITC_CUT_D1_1[FITC_out_CUT_D1_1$outliers_pos] <- NA;
FITC_CUT_D1_1 <- rFITC_CUT_D1_1$Removed_FITC_CUT_D1_1;
FITC_out_CUT_E1_1 <- outliers_mad(x = FITC_CUT_E1_1, threshold = 2.5)
rFITC_CUT_E1_1 <- data.frame("Removed_FITC_CUT_E1_1" = FITC_CUT_E1_1);
rFITC_CUT_E1_1$Removed_FITC_CUT_E1_1[FITC_out_CUT_E1_1$outliers_pos] <- NA;
FITC_CUT_E1_1 <- rFITC_CUT_E1_1$Removed_FITC_CUT_E1_1;
FITC_out_CUT_F1_1 <- outliers_mad(x = FITC_CUT_F1_1, threshold = 2.5)
rFITC_CUT_F1_1 <- data.frame("Removed_FITC_CUT_F1_1" = FITC_CUT_F1_1);
rFITC_CUT_F1_1$Removed_FITC_CUT_F1_1[FITC_out_CUT_F1_1$outliers_pos] <- NA;
FITC_CUT_F1_1 <- rFITC_CUT_F1_1$Removed_FITC_CUT_F1_1;
FITC_out_CUT_G1_1 <- outliers_mad(x = FITC_CUT_G1_1, threshold = 2.5)
rFITC_CUT_G1_1 <- data.frame("Removed_FITC_CUT_G1_1" = FITC_CUT_G1_1);
rFITC_CUT_G1_1$Removed_FITC_CUT_G1_1[FITC_out_CUT_G1_1$outliers_pos] <- NA;
FITC_CUT_G1_1 <- rFITC_CUT_G1_1$Removed_FITC_CUT_G1_1;
FITC_out_CUT_H1_1 <- outliers_mad(x = FITC_CUT_H1_1, threshold = 2.5)
rFITC_CUT_H1_1 <- data.frame("Removed_FITC_CUT_H1_1" = FITC_CUT_H1_1);
rFITC_CUT_H1_1$Removed_FITC_CUT_H1_1[FITC_out_CUT_H1_1$outliers_pos] <- NA;
FITC_CUT_H1_1 <- rFITC_CUT_H1_1$Removed_FITC_CUT_H1_1;
FITC_out_CUT_A2_1 <- outliers_mad(x = FITC_CUT_A2_1, threshold = 2.5)
rFITC_CUT_A2_1 <- data.frame("Removed_FITC_CUT_A2_1" = FITC_CUT_A2_1);
rFITC_CUT_A2_1$Removed_FITC_CUT_A2_1[FITC_out_CUT_A2_1$outliers_pos] <- NA;
FITC_CUT_A2_1 <- rFITC_CUT_A2_1$Removed_FITC_CUT_A2_1;
FITC_out_CUT_B2_1 <- outliers_mad(x = FITC_CUT_B2_1, threshold = 2.5)
rFITC_CUT_B2_1 <- data.frame("Removed_FITC_CUT_B2_1" = FITC_CUT_B2_1);
rFITC_CUT_B2_1$Removed_FITC_CUT_B2_1[FITC_out_CUT_B2_1$outliers_pos] <- NA;
FITC_CUT_B2_1 <- rFITC_CUT_B2_1$Removed_FITC_CUT_B2_1;
FITC_out_CUT_C2_1 <- outliers_mad(x = FITC_CUT_C2_1, threshold = 2.5)
rFITC_CUT_C2_1 <- data.frame("Removed_FITC_CUT_C2_1" = FITC_CUT_C2_1);
rFITC_CUT_C2_1$Removed_FITC_CUT_C2_1[FITC_out_CUT_C2_1$outliers_pos] <- NA;
FITC_CUT_C2_1 <- rFITC_CUT_C2_1$Removed_FITC_CUT_C2_1;
FITC_out_CUT_D2_1 <- outliers_mad(x = FITC_CUT_D2_1, threshold = 2.5)
rFITC_CUT_D2_1 <- data.frame("Removed_FITC_CUT_D2_1" = FITC_CUT_D2_1);
rFITC_CUT_D2_1$Removed_FITC_CUT_D2_1[FITC_out_CUT_D2_1$outliers_pos] <- NA;
FITC_CUT_D2_1 <- rFITC_CUT_D2_1$Removed_FITC_CUT_D2_1;
FITC_out_CUT_E2_1 <- outliers_mad(x = FITC_CUT_E2_1, threshold = 2.5)
rFITC_CUT_E2_1 <- data.frame("Removed_FITC_CUT_E2_1" = FITC_CUT_E2_1);
rFITC_CUT_E2_1$Removed_FITC_CUT_E2_1[FITC_out_CUT_E2_1$outliers_pos] <- NA;
FITC_CUT_E2_1 <- rFITC_CUT_E2_1$Removed_FITC_CUT_E2_1;
FITC_out_CUT_F2_1 <- outliers_mad(x = FITC_CUT_F2_1, threshold = 2.5)
rFITC_CUT_F2_1 <- data.frame("Removed_FITC_CUT_F2_1" = FITC_CUT_F2_1);
rFITC_CUT_F2_1$Removed_FITC_CUT_F2_1[FITC_out_CUT_F2_1$outliers_pos] <- NA;
FITC_CUT_F2_1 <- rFITC_CUT_F2_1$Removed_FITC_CUT_F2_1;
FITC_out_CUT_G2_1 <- outliers_mad(x = FITC_CUT_G2_1, threshold = 2.5)
rFITC_CUT_G2_1 <- data.frame("Removed_FITC_CUT_G2_1" = FITC_CUT_G2_1);
rFITC_CUT_G2_1$Removed_FITC_CUT_G2_1[FITC_out_CUT_G2_1$outliers_pos] <- NA;
FITC_CUT_G2_1 <- rFITC_CUT_G2_1$Removed_FITC_CUT_G2_1;
FITC_out_CUT_H2_1 <- outliers_mad(x = FITC_CUT_H2_1, threshold = 2.5)
rFITC_CUT_H2_1 <- data.frame("Removed_FITC_CUT_H2_1" = FITC_CUT_H2_1);
rFITC_CUT_H2_1$Removed_FITC_CUT_H2_1[FITC_out_CUT_H2_1$outliers_pos] <- NA;
FITC_CUT_H2_1 <- rFITC_CUT_H2_1$Removed_FITC_CUT_H2_1;
FITC_out_CUT_A3_1 <- outliers_mad(x = FITC_CUT_A3_1, threshold = 2.5)
rFITC_CUT_A3_1 <- data.frame("Removed_FITC_CUT_A3_1" = FITC_CUT_A3_1);
rFITC_CUT_A3_1$Removed_FITC_CUT_A3_1[FITC_out_CUT_A3_1$outliers_pos] <- NA;
FITC_CUT_A3_1 <- rFITC_CUT_A3_1$Removed_FITC_CUT_A3_1;
FITC_out_CUT_B3_1 <- outliers_mad(x = FITC_CUT_B3_1, threshold = 2.5)
rFITC_CUT_B3_1 <- data.frame("Removed_FITC_CUT_B3_1" = FITC_CUT_B3_1);
rFITC_CUT_B3_1$Removed_FITC_CUT_B3_1[FITC_out_CUT_B3_1$outliers_pos] <- NA;
FITC_CUT_B3_1 <- rFITC_CUT_B3_1$Removed_FITC_CUT_B3_1;
FITC_out_CUT_C3_1 <- outliers_mad(x = FITC_CUT_C3_1, threshold = 2.5)
rFITC_CUT_C3_1 <- data.frame("Removed_FITC_CUT_C3_1" = FITC_CUT_C3_1);
rFITC_CUT_C3_1$Removed_FITC_CUT_C3_1[FITC_out_CUT_C3_1$outliers_pos] <- NA;
FITC_CUT_C3_1 <- rFITC_CUT_C3_1$Removed_FITC_CUT_C3_1;
FITC_out_CUT_D3_1 <- outliers_mad(x = FITC_CUT_D3_1, threshold = 2.5)
rFITC_CUT_D3_1 <- data.frame("Removed_FITC_CUT_D3_1" = FITC_CUT_D3_1);
rFITC_CUT_D3_1$Removed_FITC_CUT_D3_1[FITC_out_CUT_D3_1$outliers_pos] <- NA;
FITC_CUT_D3_1 <- rFITC_CUT_D3_1$Removed_FITC_CUT_D3_1;
FITC_out_CUT_E3_1 <- outliers_mad(x = FITC_CUT_E3_1, threshold = 2.5)
rFITC_CUT_E3_1 <- data.frame("Removed_FITC_CUT_E3_1" = FITC_CUT_E3_1);
rFITC_CUT_E3_1$Removed_FITC_CUT_E3_1[FITC_out_CUT_E3_1$outliers_pos] <- NA;
FITC_CUT_E3_1 <- rFITC_CUT_E3_1$Removed_FITC_CUT_E3_1;
FITC_out_CUT_F3_1 <- outliers_mad(x = FITC_CUT_F3_1, threshold = 2.5)
rFITC_CUT_F3_1 <- data.frame("Removed_FITC_CUT_F3_1" = FITC_CUT_F3_1);
rFITC_CUT_F3_1$Removed_FITC_CUT_F3_1[FITC_out_CUT_F3_1$outliers_pos] <- NA;
FITC_CUT_F3_1 <- rFITC_CUT_F3_1$Removed_FITC_CUT_F3_1;
FITC_out_CUT_G3_1 <- outliers_mad(x = FITC_CUT_G3_1, threshold = 2.5)
rFITC_CUT_G3_1 <- data.frame("Removed_FITC_CUT_G3_1" = FITC_CUT_G3_1);
rFITC_CUT_G3_1$Removed_FITC_CUT_G3_1[FITC_out_CUT_G3_1$outliers_pos] <- NA;
FITC_CUT_G3_1 <- rFITC_CUT_G3_1$Removed_FITC_CUT_G3_1;
FITC_out_CUT_H3_1 <- outliers_mad(x = FITC_CUT_H3_1, threshold = 2.5)
rFITC_CUT_H3_1 <- data.frame("Removed_FITC_CUT_H3_1" = FITC_CUT_H3_1);
rFITC_CUT_H3_1$Removed_FITC_CUT_H3_1[FITC_out_CUT_H3_1$outliers_pos] <- NA;
FITC_CUT_H3_1 <- rFITC_CUT_H3_1$Removed_FITC_CUT_H3_1;
FITC_out_CUT_A4_1 <- outliers_mad(x = FITC_CUT_A4_1, threshold = 2.5)
rFITC_CUT_A4_1 <- data.frame("Removed_FITC_CUT_A4_1" = FITC_CUT_A4_1);
rFITC_CUT_A4_1$Removed_FITC_CUT_A4_1[FITC_out_CUT_A4_1$outliers_pos] <- NA;
FITC_CUT_A4_1 <- rFITC_CUT_A4_1$Removed_FITC_CUT_A4_1;
FITC_out_CUT_B4_1 <- outliers_mad(x = FITC_CUT_B4_1, threshold = 2.5)
rFITC_CUT_B4_1 <- data.frame("Removed_FITC_CUT_B4_1" = FITC_CUT_B4_1);
rFITC_CUT_B4_1$Removed_FITC_CUT_B4_1[FITC_out_CUT_B4_1$outliers_pos] <- NA;
FITC_CUT_B4_1 <- rFITC_CUT_B4_1$Removed_FITC_CUT_B4_1;
FITC_out_CUT_C4_1 <- outliers_mad(x = FITC_CUT_C4_1, threshold = 2.5)
rFITC_CUT_C4_1 <- data.frame("Removed_FITC_CUT_C4_1" = FITC_CUT_C4_1);
rFITC_CUT_C4_1$Removed_FITC_CUT_C4_1[FITC_out_CUT_C4_1$outliers_pos] <- NA;
FITC_CUT_C4_1 <- rFITC_CUT_C4_1$Removed_FITC_CUT_C4_1;
FITC_out_CUT_D4_1 <- outliers_mad(x = FITC_CUT_D4_1, threshold = 2.5)
rFITC_CUT_D4_1 <- data.frame("Removed_FITC_CUT_D4_1" = FITC_CUT_D4_1);
rFITC_CUT_D4_1$Removed_FITC_CUT_D4_1[FITC_out_CUT_D4_1$outliers_pos] <- NA;
FITC_CUT_D4_1 <- rFITC_CUT_D4_1$Removed_FITC_CUT_D4_1;
FITC_out_CUT_E4_1 <- outliers_mad(x = FITC_CUT_E4_1, threshold = 2.5)
rFITC_CUT_E4_1 <- data.frame("Removed_FITC_CUT_E4_1" = FITC_CUT_E4_1);
rFITC_CUT_E4_1$Removed_FITC_CUT_E4_1[FITC_out_CUT_E4_1$outliers_pos] <- NA;
FITC_CUT_E4_1 <- rFITC_CUT_E4_1$Removed_FITC_CUT_E4_1;
FITC_out_CUT_F4_1 <- outliers_mad(x = FITC_CUT_F4_1, threshold = 2.5)
rFITC_CUT_F4_1 <- data.frame("Removed_FITC_CUT_F4_1" = FITC_CUT_F4_1);
rFITC_CUT_F4_1$Removed_FITC_CUT_F4_1[FITC_out_CUT_F4_1$outliers_pos] <- NA;
FITC_CUT_F4_1 <- rFITC_CUT_F4_1$Removed_FITC_CUT_F4_1;
FITC_out_CUT_G4_1 <- outliers_mad(x = FITC_CUT_G4_1, threshold = 2.5)
rFITC_CUT_G4_1 <- data.frame("Removed_FITC_CUT_G4_1" = FITC_CUT_G4_1);
rFITC_CUT_G4_1$Removed_FITC_CUT_G4_1[FITC_out_CUT_G4_1$outliers_pos] <- NA;
FITC_CUT_G4_1 <- rFITC_CUT_G4_1$Removed_FITC_CUT_G4_1;
FITC_out_CUT_H4_1 <- outliers_mad(x = FITC_CUT_H4_1, threshold = 2.5)
rFITC_CUT_H4_1 <- data.frame("Removed_FITC_CUT_H4_1" = FITC_CUT_H4_1);
rFITC_CUT_H4_1$Removed_FITC_CUT_H4_1[FITC_out_CUT_H4_1$outliers_pos] <- NA;
FITC_CUT_H4_1 <- rFITC_CUT_H4_1$Removed_FITC_CUT_H4_1;
FITC_out_CUT_A5_1 <- outliers_mad(x = FITC_CUT_A5_1, threshold = 2.5)
rFITC_CUT_A5_1 <- data.frame("Removed_FITC_CUT_A5_1" = FITC_CUT_A5_1);
rFITC_CUT_A5_1$Removed_FITC_CUT_A5_1[FITC_out_CUT_A5_1$outliers_pos] <- NA;
FITC_CUT_A5_1 <- rFITC_CUT_A5_1$Removed_FITC_CUT_A5_1;
FITC_out_CUT_B5_1 <- outliers_mad(x = FITC_CUT_B5_1, threshold = 2.5)
rFITC_CUT_B5_1 <- data.frame("Removed_FITC_CUT_B5_1" = FITC_CUT_B5_1);
rFITC_CUT_B5_1$Removed_FITC_CUT_B5_1[FITC_out_CUT_B5_1$outliers_pos] <- NA;
FITC_CUT_B5_1 <- rFITC_CUT_B5_1$Removed_FITC_CUT_B5_1;
FITC_out_CUT_C5_1 <- outliers_mad(x = FITC_CUT_C5_1, threshold = 2.5)
rFITC_CUT_C5_1 <- data.frame("Removed_FITC_CUT_C5_1" = FITC_CUT_C5_1);
rFITC_CUT_C5_1$Removed_FITC_CUT_C5_1[FITC_out_CUT_C5_1$outliers_pos] <- NA;
FITC_CUT_C5_1 <- rFITC_CUT_C5_1$Removed_FITC_CUT_C5_1;
FITC_out_CUT_D5_1 <- outliers_mad(x = FITC_CUT_D5_1, threshold = 2.5)
rFITC_CUT_D5_1 <- data.frame("Removed_FITC_CUT_D5_1" = FITC_CUT_D5_1);
rFITC_CUT_D5_1$Removed_FITC_CUT_D5_1[FITC_out_CUT_D5_1$outliers_pos] <- NA;
FITC_CUT_D5_1 <- rFITC_CUT_D5_1$Removed_FITC_CUT_D5_1;
FITC_out_CUT_E5_1 <- outliers_mad(x = FITC_CUT_E5_1, threshold = 2.5)
rFITC_CUT_E5_1 <- data.frame("Removed_FITC_CUT_E5_1" = FITC_CUT_E5_1);
rFITC_CUT_E5_1$Removed_FITC_CUT_E5_1[FITC_out_CUT_E5_1$outliers_pos] <- NA;
FITC_CUT_E5_1 <- rFITC_CUT_E5_1$Removed_FITC_CUT_E5_1;
FITC_out_CUT_F5_1 <- outliers_mad(x = FITC_CUT_F5_1, threshold = 2.5)
rFITC_CUT_F5_1 <- data.frame("Removed_FITC_CUT_F5_1" = FITC_CUT_F5_1);
rFITC_CUT_F5_1$Removed_FITC_CUT_F5_1[FITC_out_CUT_F5_1$outliers_pos] <- NA;
FITC_CUT_F5_1 <- rFITC_CUT_F5_1$Removed_FITC_CUT_F5_1;
FITC_out_CUT_G5_1 <- outliers_mad(x = FITC_CUT_G5_1, threshold = 2.5)
rFITC_CUT_G5_1 <- data.frame("Removed_FITC_CUT_G5_1" = FITC_CUT_G5_1);
rFITC_CUT_G5_1$Removed_FITC_CUT_G5_1[FITC_out_CUT_G5_1$outliers_pos] <- NA;
FITC_CUT_G5_1 <- rFITC_CUT_G5_1$Removed_FITC_CUT_G5_1;
FITC_out_CUT_H5_1 <- outliers_mad(x = FITC_CUT_H5_1, threshold = 2.5)
rFITC_CUT_H5_1 <- data.frame("Removed_FITC_CUT_H5_1" = FITC_CUT_H5_1);
rFITC_CUT_H5_1$Removed_FITC_CUT_H5_1[FITC_out_CUT_H5_1$outliers_pos] <- NA;
FITC_CUT_H5_1 <- rFITC_CUT_H5_1$Removed_FITC_CUT_H5_1;
FITC_out_CUT_A6_1 <- outliers_mad(x = FITC_CUT_A6_1, threshold = 2.5)
rFITC_CUT_A6_1 <- data.frame("Removed_FITC_CUT_A6_1" = FITC_CUT_A6_1);
rFITC_CUT_A6_1$Removed_FITC_CUT_A6_1[FITC_out_CUT_A6_1$outliers_pos] <- NA;
FITC_CUT_A6_1 <- rFITC_CUT_A6_1$Removed_FITC_CUT_A6_1;
FITC_out_CUT_B6_1 <- outliers_mad(x = FITC_CUT_B6_1, threshold = 2.5)
rFITC_CUT_B6_1 <- data.frame("Removed_FITC_CUT_B6_1" = FITC_CUT_B6_1);
rFITC_CUT_B6_1$Removed_FITC_CUT_B6_1[FITC_out_CUT_B6_1$outliers_pos] <- NA;
FITC_CUT_B6_1 <- rFITC_CUT_B6_1$Removed_FITC_CUT_B6_1;
FITC_out_CUT_C6_1 <- outliers_mad(x = FITC_CUT_C6_1, threshold = 2.5)
rFITC_CUT_C6_1 <- data.frame("Removed_FITC_CUT_C6_1" = FITC_CUT_C6_1);
rFITC_CUT_C6_1$Removed_FITC_CUT_C6_1[FITC_out_CUT_C6_1$outliers_pos] <- NA;
FITC_CUT_C6_1 <- rFITC_CUT_C6_1$Removed_FITC_CUT_C6_1;
FITC_out_CUT_D6_1 <- outliers_mad(x = FITC_CUT_D6_1, threshold = 2.5)
rFITC_CUT_D6_1 <- data.frame("Removed_FITC_CUT_D6_1" = FITC_CUT_D6_1);
rFITC_CUT_D6_1$Removed_FITC_CUT_D6_1[FITC_out_CUT_D6_1$outliers_pos] <- NA;
FITC_CUT_D6_1 <- rFITC_CUT_D6_1$Removed_FITC_CUT_D6_1;
FITC_out_CUT_E6_1 <- outliers_mad(x = FITC_CUT_E6_1, threshold = 2.5)
rFITC_CUT_E6_1 <- data.frame("Removed_FITC_CUT_E6_1" = FITC_CUT_E6_1);
rFITC_CUT_E6_1$Removed_FITC_CUT_E6_1[FITC_out_CUT_E6_1$outliers_pos] <- NA;
FITC_CUT_E6_1 <- rFITC_CUT_E6_1$Removed_FITC_CUT_E6_1;
FITC_out_CUT_F6_1 <- outliers_mad(x = FITC_CUT_F6_1, threshold = 2.5)
rFITC_CUT_F6_1 <- data.frame("Removed_FITC_CUT_F6_1" = FITC_CUT_F6_1);
rFITC_CUT_F6_1$Removed_FITC_CUT_F6_1[FITC_out_CUT_F6_1$outliers_pos] <- NA;
FITC_CUT_F6_1 <- rFITC_CUT_F6_1$Removed_FITC_CUT_F6_1;
FITC_out_CUT_G6_1 <- outliers_mad(x = FITC_CUT_G6_1, threshold = 2.5)
rFITC_CUT_G6_1 <- data.frame("Removed_FITC_CUT_G6_1" = FITC_CUT_G6_1);
rFITC_CUT_G6_1$Removed_FITC_CUT_G6_1[FITC_out_CUT_G6_1$outliers_pos] <- NA;
FITC_CUT_G6_1 <- rFITC_CUT_G6_1$Removed_FITC_CUT_G6_1;
FITC_out_CUT_H6_1 <- outliers_mad(x = FITC_CUT_H6_1, threshold = 2.5)
rFITC_CUT_H6_1 <- data.frame("Removed_FITC_CUT_H6_1" = FITC_CUT_H6_1);
rFITC_CUT_H6_1$Removed_FITC_CUT_H6_1[FITC_out_CUT_H6_1$outliers_pos] <- NA;
FITC_CUT_H6_1 <- rFITC_CUT_H6_1$Removed_FITC_CUT_H6_1;
FITC_out_CUT_A7_1 <- outliers_mad(x = FITC_CUT_A7_1, threshold = 2.5)
rFITC_CUT_A7_1 <- data.frame("Removed_FITC_CUT_A7_1" = FITC_CUT_A7_1);
rFITC_CUT_A7_1$Removed_FITC_CUT_A7_1[FITC_out_CUT_A7_1$outliers_pos] <- NA;
FITC_CUT_A7_1 <- rFITC_CUT_A7_1$Removed_FITC_CUT_A7_1;
FITC_out_CUT_B7_1 <- outliers_mad(x = FITC_CUT_B7_1, threshold = 2.5)
rFITC_CUT_B7_1 <- data.frame("Removed_FITC_CUT_B7_1" = FITC_CUT_B7_1);
rFITC_CUT_B7_1$Removed_FITC_CUT_B7_1[FITC_out_CUT_B7_1$outliers_pos] <- NA;
FITC_CUT_B7_1 <- rFITC_CUT_B7_1$Removed_FITC_CUT_B7_1;
FITC_out_CUT_C7_1 <- outliers_mad(x = FITC_CUT_C7_1, threshold = 2.5)
rFITC_CUT_C7_1 <- data.frame("Removed_FITC_CUT_C7_1" = FITC_CUT_C7_1);
rFITC_CUT_C7_1$Removed_FITC_CUT_C7_1[FITC_out_CUT_C7_1$outliers_pos] <- NA;
FITC_CUT_C7_1 <- rFITC_CUT_C7_1$Removed_FITC_CUT_C7_1;
FITC_out_CUT_D7_1 <- outliers_mad(x = FITC_CUT_D7_1, threshold = 2.5)
rFITC_CUT_D7_1 <- data.frame("Removed_FITC_CUT_D7_1" = FITC_CUT_D7_1);
rFITC_CUT_D7_1$Removed_FITC_CUT_D7_1[FITC_out_CUT_D7_1$outliers_pos] <- NA;
FITC_CUT_D7_1 <- rFITC_CUT_D7_1$Removed_FITC_CUT_D7_1;
FITC_out_CUT_E7_1 <- outliers_mad(x = FITC_CUT_E7_1, threshold = 2.5)
rFITC_CUT_E7_1 <- data.frame("Removed_FITC_CUT_E7_1" = FITC_CUT_E7_1);
rFITC_CUT_E7_1$Removed_FITC_CUT_E7_1[FITC_out_CUT_E7_1$outliers_pos] <- NA;
FITC_CUT_E7_1 <- rFITC_CUT_E7_1$Removed_FITC_CUT_E7_1;
FITC_out_CUT_F7_1 <- outliers_mad(x = FITC_CUT_F7_1, threshold = 2.5)
rFITC_CUT_F7_1 <- data.frame("Removed_FITC_CUT_F7_1" = FITC_CUT_F7_1);
rFITC_CUT_F7_1$Removed_FITC_CUT_F7_1[FITC_out_CUT_F7_1$outliers_pos] <- NA;
FITC_CUT_F7_1 <- rFITC_CUT_F7_1$Removed_FITC_CUT_F7_1;
FITC_out_CUT_G7_1 <- outliers_mad(x = FITC_CUT_G7_1, threshold = 2.5)
rFITC_CUT_G7_1 <- data.frame("Removed_FITC_CUT_G7_1" = FITC_CUT_G7_1);
rFITC_CUT_G7_1$Removed_FITC_CUT_G7_1[FITC_out_CUT_G7_1$outliers_pos] <- NA;
FITC_CUT_G7_1 <- rFITC_CUT_G7_1$Removed_FITC_CUT_G7_1;
FITC_out_CUT_H7_1 <- outliers_mad(x = FITC_CUT_H7_1, threshold = 2.5)
rFITC_CUT_H7_1 <- data.frame("Removed_FITC_CUT_H7_1" = FITC_CUT_H7_1);
rFITC_CUT_H7_1$Removed_FITC_CUT_H7_1[FITC_out_CUT_H7_1$outliers_pos] <- NA;
FITC_CUT_H7_1 <- rFITC_CUT_H7_1$Removed_FITC_CUT_H7_1;
FITC_out_CUT_A8_1 <- outliers_mad(x = FITC_CUT_A8_1, threshold = 2.5)
rFITC_CUT_A8_1 <- data.frame("Removed_FITC_CUT_A8_1" = FITC_CUT_A8_1);
rFITC_CUT_A8_1$Removed_FITC_CUT_A8_1[FITC_out_CUT_A8_1$outliers_pos] <- NA;
FITC_CUT_A8_1 <- rFITC_CUT_A8_1$Removed_FITC_CUT_A8_1;
FITC_out_CUT_B8_1 <- outliers_mad(x = FITC_CUT_B8_1, threshold = 2.5)
rFITC_CUT_B8_1 <- data.frame("Removed_FITC_CUT_B8_1" = FITC_CUT_B8_1);
rFITC_CUT_B8_1$Removed_FITC_CUT_B8_1[FITC_out_CUT_B8_1$outliers_pos] <- NA;
FITC_CUT_B8_1 <- rFITC_CUT_B8_1$Removed_FITC_CUT_B8_1;
FITC_out_CUT_C8_1 <- outliers_mad(x = FITC_CUT_C8_1, threshold = 2.5)
rFITC_CUT_C8_1 <- data.frame("Removed_FITC_CUT_C8_1" = FITC_CUT_C8_1);
rFITC_CUT_C8_1$Removed_FITC_CUT_C8_1[FITC_out_CUT_C8_1$outliers_pos] <- NA;
FITC_CUT_C8_1 <- rFITC_CUT_C8_1$Removed_FITC_CUT_C8_1;
FITC_out_CUT_D8_1 <- outliers_mad(x = FITC_CUT_D8_1, threshold = 2.5)
rFITC_CUT_D8_1 <- data.frame("Removed_FITC_CUT_D8_1" = FITC_CUT_D8_1);
rFITC_CUT_D8_1$Removed_FITC_CUT_D8_1[FITC_out_CUT_D8_1$outliers_pos] <- NA;
FITC_CUT_D8_1 <- rFITC_CUT_D8_1$Removed_FITC_CUT_D8_1;
FITC_out_CUT_E8_1 <- outliers_mad(x = FITC_CUT_E8_1, threshold = 2.5)
rFITC_CUT_E8_1 <- data.frame("Removed_FITC_CUT_E8_1" = FITC_CUT_E8_1);
rFITC_CUT_E8_1$Removed_FITC_CUT_E8_1[FITC_out_CUT_E8_1$outliers_pos] <- NA;
FITC_CUT_E8_1 <- rFITC_CUT_E8_1$Removed_FITC_CUT_E8_1;
FITC_out_CUT_F8_1 <- outliers_mad(x = FITC_CUT_F8_1, threshold = 2.5)
rFITC_CUT_F8_1 <- data.frame("Removed_FITC_CUT_F8_1" = FITC_CUT_F8_1);
rFITC_CUT_F8_1$Removed_FITC_CUT_F8_1[FITC_out_CUT_F8_1$outliers_pos] <- NA;
FITC_CUT_F8_1 <- rFITC_CUT_F8_1$Removed_FITC_CUT_F8_1;
FITC_out_CUT_G8_1 <- outliers_mad(x = FITC_CUT_G8_1, threshold = 2.5)
rFITC_CUT_G8_1 <- data.frame("Removed_FITC_CUT_G8_1" = FITC_CUT_G8_1);
rFITC_CUT_G8_1$Removed_FITC_CUT_G8_1[FITC_out_CUT_G8_1$outliers_pos] <- NA;
FITC_CUT_G8_1 <- rFITC_CUT_G8_1$Removed_FITC_CUT_G8_1;
FITC_out_CUT_H8_1 <- outliers_mad(x = FITC_CUT_H8_1, threshold = 2.5)
rFITC_CUT_H8_1 <- data.frame("Removed_FITC_CUT_H8_1" = FITC_CUT_H8_1);
rFITC_CUT_H8_1$Removed_FITC_CUT_H8_1[FITC_out_CUT_H8_1$outliers_pos] <- NA;
FITC_CUT_H8_1 <- rFITC_CUT_H8_1$Removed_FITC_CUT_H8_1;
FITC_out_CUT_A9_1 <- outliers_mad(x = FITC_CUT_A9_1, threshold = 2.5)
rFITC_CUT_A9_1 <- data.frame("Removed_FITC_CUT_A9_1" = FITC_CUT_A9_1);
rFITC_CUT_A9_1$Removed_FITC_CUT_A9_1[FITC_out_CUT_A9_1$outliers_pos] <- NA;
FITC_CUT_A9_1 <- rFITC_CUT_A9_1$Removed_FITC_CUT_A9_1;
FITC_out_CUT_B9_1 <- outliers_mad(x = FITC_CUT_B9_1, threshold = 2.5)
rFITC_CUT_B9_1 <- data.frame("Removed_FITC_CUT_B9_1" = FITC_CUT_B9_1);
rFITC_CUT_B9_1$Removed_FITC_CUT_B9_1[FITC_out_CUT_B9_1$outliers_pos] <- NA;
FITC_CUT_B9_1 <- rFITC_CUT_B9_1$Removed_FITC_CUT_B9_1;
FITC_out_CUT_C9_1 <- outliers_mad(x = FITC_CUT_C9_1, threshold = 2.5)
rFITC_CUT_C9_1 <- data.frame("Removed_FITC_CUT_C9_1" = FITC_CUT_C9_1);
rFITC_CUT_C9_1$Removed_FITC_CUT_C9_1[FITC_out_CUT_C9_1$outliers_pos] <- NA;
FITC_CUT_C9_1 <- rFITC_CUT_C9_1$Removed_FITC_CUT_C9_1;
FITC_out_CUT_D9_1 <- outliers_mad(x = FITC_CUT_D9_1, threshold = 2.5)
rFITC_CUT_D9_1 <- data.frame("Removed_FITC_CUT_D9_1" = FITC_CUT_D9_1);
rFITC_CUT_D9_1$Removed_FITC_CUT_D9_1[FITC_out_CUT_D9_1$outliers_pos] <- NA;
FITC_CUT_D9_1 <- rFITC_CUT_D9_1$Removed_FITC_CUT_D9_1;
FITC_out_CUT_E9_1 <- outliers_mad(x = FITC_CUT_E9_1, threshold = 2.5)
rFITC_CUT_E9_1 <- data.frame("Removed_FITC_CUT_E9_1" = FITC_CUT_E9_1);
rFITC_CUT_E9_1$Removed_FITC_CUT_E9_1[FITC_out_CUT_E9_1$outliers_pos] <- NA;
FITC_CUT_E9_1 <- rFITC_CUT_E9_1$Removed_FITC_CUT_E9_1;
FITC_out_CUT_F9_1 <- outliers_mad(x = FITC_CUT_F9_1, threshold = 2.5)
rFITC_CUT_F9_1 <- data.frame("Removed_FITC_CUT_F9_1" = FITC_CUT_F9_1);
rFITC_CUT_F9_1$Removed_FITC_CUT_F9_1[FITC_out_CUT_F9_1$outliers_pos] <- NA;
FITC_CUT_F9_1 <- rFITC_CUT_F9_1$Removed_FITC_CUT_F9_1;
FITC_out_CUT_G9_1 <- outliers_mad(x = FITC_CUT_G9_1, threshold = 2.5)
rFITC_CUT_G9_1 <- data.frame("Removed_FITC_CUT_G9_1" = FITC_CUT_G9_1);
rFITC_CUT_G9_1$Removed_FITC_CUT_G9_1[FITC_out_CUT_G9_1$outliers_pos] <- NA;
FITC_CUT_G9_1 <- rFITC_CUT_G9_1$Removed_FITC_CUT_G9_1;
FITC_out_CUT_H9_1 <- outliers_mad(x = FITC_CUT_H9_1, threshold = 2.5)
rFITC_CUT_H9_1 <- data.frame("Removed_FITC_CUT_H9_1" = FITC_CUT_H9_1);
rFITC_CUT_H9_1$Removed_FITC_CUT_H9_1[FITC_out_CUT_H9_1$outliers_pos] <- NA;
FITC_CUT_H9_1 <- rFITC_CUT_H9_1$Removed_FITC_CUT_H9_1;
FITC_out_CUT_A10_1 <- outliers_mad(x = FITC_CUT_A10_1, threshold = 2.5)
rFITC_CUT_A10_1 <- data.frame("Removed_FITC_CUT_A10_1" = FITC_CUT_A10_1);
rFITC_CUT_A10_1$Removed_FITC_CUT_A10_1[FITC_out_CUT_A10_1$outliers_pos] <- NA;
FITC_CUT_A10_1 <- rFITC_CUT_A10_1$Removed_FITC_CUT_A10_1;
FITC_out_CUT_B10_1 <- outliers_mad(x = FITC_CUT_B10_1, threshold = 2.5)
rFITC_CUT_B10_1 <- data.frame("Removed_FITC_CUT_B10_1" = FITC_CUT_B10_1);
rFITC_CUT_B10_1$Removed_FITC_CUT_B10_1[FITC_out_CUT_B10_1$outliers_pos] <- NA;
FITC_CUT_B10_1 <- rFITC_CUT_B10_1$Removed_FITC_CUT_B10_1;
FITC_out_CUT_C10_1 <- outliers_mad(x = FITC_CUT_C10_1, threshold = 2.5)
rFITC_CUT_C10_1 <- data.frame("Removed_FITC_CUT_C10_1" = FITC_CUT_C10_1);
rFITC_CUT_C10_1$Removed_FITC_CUT_C10_1[FITC_out_CUT_C10_1$outliers_pos] <- NA;
FITC_CUT_C10_1 <- rFITC_CUT_C10_1$Removed_FITC_CUT_C10_1;
FITC_out_CUT_D10_1 <- outliers_mad(x = FITC_CUT_D10_1, threshold = 2.5)
rFITC_CUT_D10_1 <- data.frame("Removed_FITC_CUT_D10_1" = FITC_CUT_D10_1);
rFITC_CUT_D10_1$Removed_FITC_CUT_D10_1[FITC_out_CUT_D10_1$outliers_pos] <- NA;
FITC_CUT_D10_1 <- rFITC_CUT_D10_1$Removed_FITC_CUT_D10_1;
FITC_out_CUT_E10_1 <- outliers_mad(x = FITC_CUT_E10_1, threshold = 2.5)
rFITC_CUT_E10_1 <- data.frame("Removed_FITC_CUT_E10_1" = FITC_CUT_E10_1);
rFITC_CUT_E10_1$Removed_FITC_CUT_E10_1[FITC_out_CUT_E10_1$outliers_pos] <- NA;
FITC_CUT_E10_1 <- rFITC_CUT_E10_1$Removed_FITC_CUT_E10_1;
FITC_out_CUT_F10_1 <- outliers_mad(x = FITC_CUT_F10_1, threshold = 2.5)
rFITC_CUT_F10_1 <- data.frame("Removed_FITC_CUT_F10_1" = FITC_CUT_F10_1);
rFITC_CUT_F10_1$Removed_FITC_CUT_F10_1[FITC_out_CUT_F10_1$outliers_pos] <- NA;
FITC_CUT_F10_1 <- rFITC_CUT_F10_1$Removed_FITC_CUT_F10_1;
FITC_out_CUT_G10_1 <- outliers_mad(x = FITC_CUT_G10_1, threshold = 2.5)
rFITC_CUT_G10_1 <- data.frame("Removed_FITC_CUT_G10_1" = FITC_CUT_G10_1);
rFITC_CUT_G10_1$Removed_FITC_CUT_G10_1[FITC_out_CUT_G10_1$outliers_pos] <- NA;
FITC_CUT_G10_1 <- rFITC_CUT_G10_1$Removed_FITC_CUT_G10_1;
FITC_out_CUT_H10_1 <- outliers_mad(x = FITC_CUT_H10_1, threshold = 2.5)
rFITC_CUT_H10_1 <- data.frame("Removed_FITC_CUT_H10_1" = FITC_CUT_H10_1);
rFITC_CUT_H10_1$Removed_FITC_CUT_H10_1[FITC_out_CUT_H10_1$outliers_pos] <- NA;
FITC_CUT_H10_1 <- rFITC_CUT_H10_1$Removed_FITC_CUT_H10_1;
FITC_out_CUT_A11_1 <- outliers_mad(x = FITC_CUT_A11_1, threshold = 2.5)
rFITC_CUT_A11_1 <- data.frame("Removed_FITC_CUT_A11_1" = FITC_CUT_A11_1);
rFITC_CUT_A11_1$Removed_FITC_CUT_A11_1[FITC_out_CUT_A11_1$outliers_pos] <- NA;
FITC_CUT_A11_1 <- rFITC_CUT_A11_1$Removed_FITC_CUT_A11_1;
FITC_out_CUT_B11_1 <- outliers_mad(x = FITC_CUT_B11_1, threshold = 2.5)
rFITC_CUT_B11_1 <- data.frame("Removed_FITC_CUT_B11_1" = FITC_CUT_B11_1);
rFITC_CUT_B11_1$Removed_FITC_CUT_B11_1[FITC_out_CUT_B11_1$outliers_pos] <- NA;
FITC_CUT_B11_1 <- rFITC_CUT_B11_1$Removed_FITC_CUT_B11_1;
FITC_out_CUT_C11_1 <- outliers_mad(x = FITC_CUT_C11_1, threshold = 2.5)
rFITC_CUT_C11_1 <- data.frame("Removed_FITC_CUT_C11_1" = FITC_CUT_C11_1);
rFITC_CUT_C11_1$Removed_FITC_CUT_C11_1[FITC_out_CUT_C11_1$outliers_pos] <- NA;
FITC_CUT_C11_1 <- rFITC_CUT_C11_1$Removed_FITC_CUT_C11_1;
FITC_out_CUT_D11_1 <- outliers_mad(x = FITC_CUT_D11_1, threshold = 2.5)
rFITC_CUT_D11_1 <- data.frame("Removed_FITC_CUT_D11_1" = FITC_CUT_D11_1);
rFITC_CUT_D11_1$Removed_FITC_CUT_D11_1[FITC_out_CUT_D11_1$outliers_pos] <- NA;
FITC_CUT_D11_1 <- rFITC_CUT_D11_1$Removed_FITC_CUT_D11_1;
FITC_out_CUT_E11_1 <- outliers_mad(x = FITC_CUT_E11_1, threshold = 2.5)
rFITC_CUT_E11_1 <- data.frame("Removed_FITC_CUT_E11_1" = FITC_CUT_E11_1);
rFITC_CUT_E11_1$Removed_FITC_CUT_E11_1[FITC_out_CUT_E11_1$outliers_pos] <- NA;
FITC_CUT_E11_1 <- rFITC_CUT_E11_1$Removed_FITC_CUT_E11_1;
FITC_out_CUT_F11_1 <- outliers_mad(x = FITC_CUT_F11_1, threshold = 2.5)
rFITC_CUT_F11_1 <- data.frame("Removed_FITC_CUT_F11_1" = FITC_CUT_F11_1);
rFITC_CUT_F11_1$Removed_FITC_CUT_F11_1[FITC_out_CUT_F11_1$outliers_pos] <- NA;
FITC_CUT_F11_1 <- rFITC_CUT_F11_1$Removed_FITC_CUT_F11_1;
FITC_out_CUT_G11_1 <- outliers_mad(x = FITC_CUT_G11_1, threshold = 2.5)
rFITC_CUT_G11_1 <- data.frame("Removed_FITC_CUT_G11_1" = FITC_CUT_G11_1);
rFITC_CUT_G11_1$Removed_FITC_CUT_G11_1[FITC_out_CUT_G11_1$outliers_pos] <- NA;
FITC_CUT_G11_1 <- rFITC_CUT_G11_1$Removed_FITC_CUT_G11_1;
FITC_out_CUT_H11_1 <- outliers_mad(x = FITC_CUT_H11_1, threshold = 2.5)
rFITC_CUT_H11_1 <- data.frame("Removed_FITC_CUT_H11_1" = FITC_CUT_H11_1);
rFITC_CUT_H11_1$Removed_FITC_CUT_H11_1[FITC_out_CUT_H11_1$outliers_pos] <- NA;
FITC_CUT_H11_1 <- rFITC_CUT_H11_1$Removed_FITC_CUT_H11_1;
FITC_out_CUT_A12_1 <- outliers_mad(x = FITC_CUT_A12_1, threshold = 2.5)
rFITC_CUT_A12_1 <- data.frame("Removed_FITC_CUT_A12_1" = FITC_CUT_A12_1);
rFITC_CUT_A12_1$Removed_FITC_CUT_A12_1[FITC_out_CUT_A12_1$outliers_pos] <- NA;
FITC_CUT_A12_1 <- rFITC_CUT_A12_1$Removed_FITC_CUT_A12_1;
FITC_out_CUT_B12_1 <- outliers_mad(x = FITC_CUT_B12_1, threshold = 2.5)
rFITC_CUT_B12_1 <- data.frame("Removed_FITC_CUT_B12_1" = FITC_CUT_B12_1);
rFITC_CUT_B12_1$Removed_FITC_CUT_B12_1[FITC_out_CUT_B12_1$outliers_pos] <- NA;
FITC_CUT_B12_1 <- rFITC_CUT_B12_1$Removed_FITC_CUT_B12_1;
FITC_out_CUT_C12_1 <- outliers_mad(x = FITC_CUT_C12_1, threshold = 2.5)
rFITC_CUT_C12_1 <- data.frame("Removed_FITC_CUT_C12_1" = FITC_CUT_C12_1);
rFITC_CUT_C12_1$Removed_FITC_CUT_C12_1[FITC_out_CUT_C12_1$outliers_pos] <- NA;
FITC_CUT_C12_1 <- rFITC_CUT_C12_1$Removed_FITC_CUT_C12_1;
FITC_out_CUT_D12_1 <- outliers_mad(x = FITC_CUT_D12_1, threshold = 2.5)
rFITC_CUT_D12_1 <- data.frame("Removed_FITC_CUT_D12_1" = FITC_CUT_D12_1);
rFITC_CUT_D12_1$Removed_FITC_CUT_D12_1[FITC_out_CUT_D12_1$outliers_pos] <- NA;
FITC_CUT_D12_1 <- rFITC_CUT_D12_1$Removed_FITC_CUT_D12_1;
FITC_out_CUT_E12_1 <- outliers_mad(x = FITC_CUT_E12_1, threshold = 2.5)
rFITC_CUT_E12_1 <- data.frame("Removed_FITC_CUT_E12_1" = FITC_CUT_E12_1);
rFITC_CUT_E12_1$Removed_FITC_CUT_E12_1[FITC_out_CUT_E12_1$outliers_pos] <- NA;
FITC_CUT_E12_1 <- rFITC_CUT_E12_1$Removed_FITC_CUT_E12_1;
FITC_out_CUT_F12_1 <- outliers_mad(x = FITC_CUT_F12_1, threshold = 2.5)
rFITC_CUT_F12_1 <- data.frame("Removed_FITC_CUT_F12_1" = FITC_CUT_F12_1);
rFITC_CUT_F12_1$Removed_FITC_CUT_F12_1[FITC_out_CUT_F12_1$outliers_pos] <- NA;
FITC_CUT_F12_1 <- rFITC_CUT_F12_1$Removed_FITC_CUT_F12_1;
FITC_out_CUT_G12_1 <- outliers_mad(x = FITC_CUT_G12_1, threshold = 2.5)
rFITC_CUT_G12_1 <- data.frame("Removed_FITC_CUT_G12_1" = FITC_CUT_G12_1);
rFITC_CUT_G12_1$Removed_FITC_CUT_G12_1[FITC_out_CUT_G12_1$outliers_pos] <- NA;
FITC_CUT_G12_1 <- rFITC_CUT_G12_1$Removed_FITC_CUT_G12_1;
FITC_out_CUT_H12_1 <- outliers_mad(x = FITC_CUT_H12_1, threshold = 2.5)
rFITC_CUT_H12_1 <- data.frame("Removed_FITC_CUT_H12_1" = FITC_CUT_H12_1);
rFITC_CUT_H12_1$Removed_FITC_CUT_H12_1[FITC_out_CUT_H12_1$outliers_pos] <- NA;
FITC_CUT_H12_1 <- rFITC_CUT_H12_1$Removed_FITC_CUT_H12_1;
FITC_out_CUT_A1_2 <- outliers_mad(x = FITC_CUT_A1_2, threshold = 2.5)
rFITC_CUT_A1_2 <- data.frame("Removed_FITC_CUT_A1_2" = FITC_CUT_A1_2);
rFITC_CUT_A1_2$Removed_FITC_CUT_A1_2[FITC_out_CUT_A1_2$outliers_pos] <- NA;
FITC_CUT_A1_2 <- rFITC_CUT_A1_2$Removed_FITC_CUT_A1_2;
FITC_out_CUT_B1_2 <- outliers_mad(x = FITC_CUT_B1_2, threshold = 2.5)
rFITC_CUT_B1_2 <- data.frame("Removed_FITC_CUT_B1_2" = FITC_CUT_B1_2);
rFITC_CUT_B1_2$Removed_FITC_CUT_B1_2[FITC_out_CUT_B1_2$outliers_pos] <- NA;
FITC_CUT_B1_2 <- rFITC_CUT_B1_2$Removed_FITC_CUT_B1_2;
FITC_out_CUT_C1_2 <- outliers_mad(x = FITC_CUT_C1_2, threshold = 2.5)
rFITC_CUT_C1_2 <- data.frame("Removed_FITC_CUT_C1_2" = FITC_CUT_C1_2);
rFITC_CUT_C1_2$Removed_FITC_CUT_C1_2[FITC_out_CUT_C1_2$outliers_pos] <- NA;
FITC_CUT_C1_2 <- rFITC_CUT_C1_2$Removed_FITC_CUT_C1_2;
FITC_out_CUT_D1_2 <- outliers_mad(x = FITC_CUT_D1_2, threshold = 2.5)
rFITC_CUT_D1_2 <- data.frame("Removed_FITC_CUT_D1_2" = FITC_CUT_D1_2);
rFITC_CUT_D1_2$Removed_FITC_CUT_D1_2[FITC_out_CUT_D1_2$outliers_pos] <- NA;
FITC_CUT_D1_2 <- rFITC_CUT_D1_2$Removed_FITC_CUT_D1_2;
FITC_out_CUT_E1_2 <- outliers_mad(x = FITC_CUT_E1_2, threshold = 2.5)
rFITC_CUT_E1_2 <- data.frame("Removed_FITC_CUT_E1_2" = FITC_CUT_E1_2);
rFITC_CUT_E1_2$Removed_FITC_CUT_E1_2[FITC_out_CUT_E1_2$outliers_pos] <- NA;
FITC_CUT_E1_2 <- rFITC_CUT_E1_2$Removed_FITC_CUT_E1_2;
FITC_out_CUT_F1_2 <- outliers_mad(x = FITC_CUT_F1_2, threshold = 2.5)
rFITC_CUT_F1_2 <- data.frame("Removed_FITC_CUT_F1_2" = FITC_CUT_F1_2);
rFITC_CUT_F1_2$Removed_FITC_CUT_F1_2[FITC_out_CUT_F1_2$outliers_pos] <- NA;
FITC_CUT_F1_2 <- rFITC_CUT_F1_2$Removed_FITC_CUT_F1_2;
FITC_out_CUT_G1_2 <- outliers_mad(x = FITC_CUT_G1_2, threshold = 2.5)
rFITC_CUT_G1_2 <- data.frame("Removed_FITC_CUT_G1_2" = FITC_CUT_G1_2);
rFITC_CUT_G1_2$Removed_FITC_CUT_G1_2[FITC_out_CUT_G1_2$outliers_pos] <- NA;
FITC_CUT_G1_2 <- rFITC_CUT_G1_2$Removed_FITC_CUT_G1_2;
FITC_out_CUT_H1_2 <- outliers_mad(x = FITC_CUT_H1_2, threshold = 2.5)
rFITC_CUT_H1_2 <- data.frame("Removed_FITC_CUT_H1_2" = FITC_CUT_H1_2);
rFITC_CUT_H1_2$Removed_FITC_CUT_H1_2[FITC_out_CUT_H1_2$outliers_pos] <- NA;
FITC_CUT_H1_2 <- rFITC_CUT_H1_2$Removed_FITC_CUT_H1_2;
FITC_out_CUT_A2_2 <- outliers_mad(x = FITC_CUT_A2_2, threshold = 2.5)
rFITC_CUT_A2_2 <- data.frame("Removed_FITC_CUT_A2_2" = FITC_CUT_A2_2);
rFITC_CUT_A2_2$Removed_FITC_CUT_A2_2[FITC_out_CUT_A2_2$outliers_pos] <- NA;
FITC_CUT_A2_2 <- rFITC_CUT_A2_2$Removed_FITC_CUT_A2_2;
FITC_out_CUT_B2_2 <- outliers_mad(x = FITC_CUT_B2_2, threshold = 2.5)
rFITC_CUT_B2_2 <- data.frame("Removed_FITC_CUT_B2_2" = FITC_CUT_B2_2);
rFITC_CUT_B2_2$Removed_FITC_CUT_B2_2[FITC_out_CUT_B2_2$outliers_pos] <- NA;
FITC_CUT_B2_2 <- rFITC_CUT_B2_2$Removed_FITC_CUT_B2_2;
FITC_out_CUT_C2_2 <- outliers_mad(x = FITC_CUT_C2_2, threshold = 2.5)
rFITC_CUT_C2_2 <- data.frame("Removed_FITC_CUT_C2_2" = FITC_CUT_C2_2);
rFITC_CUT_C2_2$Removed_FITC_CUT_C2_2[FITC_out_CUT_C2_2$outliers_pos] <- NA;
FITC_CUT_C2_2 <- rFITC_CUT_C2_2$Removed_FITC_CUT_C2_2;
FITC_out_CUT_D2_2 <- outliers_mad(x = FITC_CUT_D2_2, threshold = 2.5)
rFITC_CUT_D2_2 <- data.frame("Removed_FITC_CUT_D2_2" = FITC_CUT_D2_2);
rFITC_CUT_D2_2$Removed_FITC_CUT_D2_2[FITC_out_CUT_D2_2$outliers_pos] <- NA;
FITC_CUT_D2_2 <- rFITC_CUT_D2_2$Removed_FITC_CUT_D2_2;
FITC_out_CUT_E2_2 <- outliers_mad(x = FITC_CUT_E2_2, threshold = 2.5)
rFITC_CUT_E2_2 <- data.frame("Removed_FITC_CUT_E2_2" = FITC_CUT_E2_2);
rFITC_CUT_E2_2$Removed_FITC_CUT_E2_2[FITC_out_CUT_E2_2$outliers_pos] <- NA;
FITC_CUT_E2_2 <- rFITC_CUT_E2_2$Removed_FITC_CUT_E2_2;
FITC_out_CUT_F2_2 <- outliers_mad(x = FITC_CUT_F2_2, threshold = 2.5)
rFITC_CUT_F2_2 <- data.frame("Removed_FITC_CUT_F2_2" = FITC_CUT_F2_2);
rFITC_CUT_F2_2$Removed_FITC_CUT_F2_2[FITC_out_CUT_F2_2$outliers_pos] <- NA;
FITC_CUT_F2_2 <- rFITC_CUT_F2_2$Removed_FITC_CUT_F2_2;
FITC_out_CUT_G2_2 <- outliers_mad(x = FITC_CUT_G2_2, threshold = 2.5)
rFITC_CUT_G2_2 <- data.frame("Removed_FITC_CUT_G2_2" = FITC_CUT_G2_2);
rFITC_CUT_G2_2$Removed_FITC_CUT_G2_2[FITC_out_CUT_G2_2$outliers_pos] <- NA;
FITC_CUT_G2_2 <- rFITC_CUT_G2_2$Removed_FITC_CUT_G2_2;
FITC_out_CUT_H2_2 <- outliers_mad(x = FITC_CUT_H2_2, threshold = 2.5)
rFITC_CUT_H2_2 <- data.frame("Removed_FITC_CUT_H2_2" = FITC_CUT_H2_2);
rFITC_CUT_H2_2$Removed_FITC_CUT_H2_2[FITC_out_CUT_H2_2$outliers_pos] <- NA;
FITC_CUT_H2_2 <- rFITC_CUT_H2_2$Removed_FITC_CUT_H2_2;
FITC_out_CUT_A3_2 <- outliers_mad(x = FITC_CUT_A3_2, threshold = 2.5)
rFITC_CUT_A3_2 <- data.frame("Removed_FITC_CUT_A3_2" = FITC_CUT_A3_2);
rFITC_CUT_A3_2$Removed_FITC_CUT_A3_2[FITC_out_CUT_A3_2$outliers_pos] <- NA;
FITC_CUT_A3_2 <- rFITC_CUT_A3_2$Removed_FITC_CUT_A3_2;
FITC_out_CUT_B3_2 <- outliers_mad(x = FITC_CUT_B3_2, threshold = 2.5)
rFITC_CUT_B3_2 <- data.frame("Removed_FITC_CUT_B3_2" = FITC_CUT_B3_2);
rFITC_CUT_B3_2$Removed_FITC_CUT_B3_2[FITC_out_CUT_B3_2$outliers_pos] <- NA;
FITC_CUT_B3_2 <- rFITC_CUT_B3_2$Removed_FITC_CUT_B3_2;
FITC_out_CUT_C3_2 <- outliers_mad(x = FITC_CUT_C3_2, threshold = 2.5)
rFITC_CUT_C3_2 <- data.frame("Removed_FITC_CUT_C3_2" = FITC_CUT_C3_2);
rFITC_CUT_C3_2$Removed_FITC_CUT_C3_2[FITC_out_CUT_C3_2$outliers_pos] <- NA;
FITC_CUT_C3_2 <- rFITC_CUT_C3_2$Removed_FITC_CUT_C3_2;
FITC_out_CUT_D3_2 <- outliers_mad(x = FITC_CUT_D3_2, threshold = 2.5)
rFITC_CUT_D3_2 <- data.frame("Removed_FITC_CUT_D3_2" = FITC_CUT_D3_2);
rFITC_CUT_D3_2$Removed_FITC_CUT_D3_2[FITC_out_CUT_D3_2$outliers_pos] <- NA;
FITC_CUT_D3_2 <- rFITC_CUT_D3_2$Removed_FITC_CUT_D3_2;
FITC_out_CUT_E3_2 <- outliers_mad(x = FITC_CUT_E3_2, threshold = 2.5)
rFITC_CUT_E3_2 <- data.frame("Removed_FITC_CUT_E3_2" = FITC_CUT_E3_2);
rFITC_CUT_E3_2$Removed_FITC_CUT_E3_2[FITC_out_CUT_E3_2$outliers_pos] <- NA;
FITC_CUT_E3_2 <- rFITC_CUT_E3_2$Removed_FITC_CUT_E3_2;
FITC_out_CUT_F3_2 <- outliers_mad(x = FITC_CUT_F3_2, threshold = 2.5)
rFITC_CUT_F3_2 <- data.frame("Removed_FITC_CUT_F3_2" = FITC_CUT_F3_2);
rFITC_CUT_F3_2$Removed_FITC_CUT_F3_2[FITC_out_CUT_F3_2$outliers_pos] <- NA;
FITC_CUT_F3_2 <- rFITC_CUT_F3_2$Removed_FITC_CUT_F3_2;
FITC_out_CUT_G3_2 <- outliers_mad(x = FITC_CUT_G3_2, threshold = 2.5)
rFITC_CUT_G3_2 <- data.frame("Removed_FITC_CUT_G3_2" = FITC_CUT_G3_2);
rFITC_CUT_G3_2$Removed_FITC_CUT_G3_2[FITC_out_CUT_G3_2$outliers_pos] <- NA;
FITC_CUT_G3_2 <- rFITC_CUT_G3_2$Removed_FITC_CUT_G3_2;
FITC_out_CUT_H3_2 <- outliers_mad(x = FITC_CUT_H3_2, threshold = 2.5)
rFITC_CUT_H3_2 <- data.frame("Removed_FITC_CUT_H3_2" = FITC_CUT_H3_2);
rFITC_CUT_H3_2$Removed_FITC_CUT_H3_2[FITC_out_CUT_H3_2$outliers_pos] <- NA;
FITC_CUT_H3_2 <- rFITC_CUT_H3_2$Removed_FITC_CUT_H3_2;
FITC_out_CUT_A4_2 <- outliers_mad(x = FITC_CUT_A4_2, threshold = 2.5)
rFITC_CUT_A4_2 <- data.frame("Removed_FITC_CUT_A4_2" = FITC_CUT_A4_2);
rFITC_CUT_A4_2$Removed_FITC_CUT_A4_2[FITC_out_CUT_A4_2$outliers_pos] <- NA;
FITC_CUT_A4_2 <- rFITC_CUT_A4_2$Removed_FITC_CUT_A4_2;
FITC_out_CUT_B4_2 <- outliers_mad(x = FITC_CUT_B4_2, threshold = 2.5)
rFITC_CUT_B4_2 <- data.frame("Removed_FITC_CUT_B4_2" = FITC_CUT_B4_2);
rFITC_CUT_B4_2$Removed_FITC_CUT_B4_2[FITC_out_CUT_B4_2$outliers_pos] <- NA;
FITC_CUT_B4_2 <- rFITC_CUT_B4_2$Removed_FITC_CUT_B4_2;
FITC_out_CUT_C4_2 <- outliers_mad(x = FITC_CUT_C4_2, threshold = 2.5)
rFITC_CUT_C4_2 <- data.frame("Removed_FITC_CUT_C4_2" = FITC_CUT_C4_2);
rFITC_CUT_C4_2$Removed_FITC_CUT_C4_2[FITC_out_CUT_C4_2$outliers_pos] <- NA;
FITC_CUT_C4_2 <- rFITC_CUT_C4_2$Removed_FITC_CUT_C4_2;
FITC_out_CUT_D4_2 <- outliers_mad(x = FITC_CUT_D4_2, threshold = 2.5)
rFITC_CUT_D4_2 <- data.frame("Removed_FITC_CUT_D4_2" = FITC_CUT_D4_2);
rFITC_CUT_D4_2$Removed_FITC_CUT_D4_2[FITC_out_CUT_D4_2$outliers_pos] <- NA;
FITC_CUT_D4_2 <- rFITC_CUT_D4_2$Removed_FITC_CUT_D4_2;
FITC_out_CUT_E4_2 <- outliers_mad(x = FITC_CUT_E4_2, threshold = 2.5)
rFITC_CUT_E4_2 <- data.frame("Removed_FITC_CUT_E4_2" = FITC_CUT_E4_2);
rFITC_CUT_E4_2$Removed_FITC_CUT_E4_2[FITC_out_CUT_E4_2$outliers_pos] <- NA;
FITC_CUT_E4_2 <- rFITC_CUT_E4_2$Removed_FITC_CUT_E4_2;
FITC_out_CUT_F4_2 <- outliers_mad(x = FITC_CUT_F4_2, threshold = 2.5)
rFITC_CUT_F4_2 <- data.frame("Removed_FITC_CUT_F4_2" = FITC_CUT_F4_2);
rFITC_CUT_F4_2$Removed_FITC_CUT_F4_2[FITC_out_CUT_F4_2$outliers_pos] <- NA;
FITC_CUT_F4_2 <- rFITC_CUT_F4_2$Removed_FITC_CUT_F4_2;
FITC_out_CUT_G4_2 <- outliers_mad(x = FITC_CUT_G4_2, threshold = 2.5)
rFITC_CUT_G4_2 <- data.frame("Removed_FITC_CUT_G4_2" = FITC_CUT_G4_2);
rFITC_CUT_G4_2$Removed_FITC_CUT_G4_2[FITC_out_CUT_G4_2$outliers_pos] <- NA;
FITC_CUT_G4_2 <- rFITC_CUT_G4_2$Removed_FITC_CUT_G4_2;
FITC_out_CUT_H4_2 <- outliers_mad(x = FITC_CUT_H4_2, threshold = 2.5)
rFITC_CUT_H4_2 <- data.frame("Removed_FITC_CUT_H4_2" = FITC_CUT_H4_2);
rFITC_CUT_H4_2$Removed_FITC_CUT_H4_2[FITC_out_CUT_H4_2$outliers_pos] <- NA;
FITC_CUT_H4_2 <- rFITC_CUT_H4_2$Removed_FITC_CUT_H4_2;
FITC_out_CUT_A5_2 <- outliers_mad(x = FITC_CUT_A5_2, threshold = 2.5)
rFITC_CUT_A5_2 <- data.frame("Removed_FITC_CUT_A5_2" = FITC_CUT_A5_2);
rFITC_CUT_A5_2$Removed_FITC_CUT_A5_2[FITC_out_CUT_A5_2$outliers_pos] <- NA;
FITC_CUT_A5_2 <- rFITC_CUT_A5_2$Removed_FITC_CUT_A5_2;
FITC_out_CUT_B5_2 <- outliers_mad(x = FITC_CUT_B5_2, threshold = 2.5)
rFITC_CUT_B5_2 <- data.frame("Removed_FITC_CUT_B5_2" = FITC_CUT_B5_2);
rFITC_CUT_B5_2$Removed_FITC_CUT_B5_2[FITC_out_CUT_B5_2$outliers_pos] <- NA;
FITC_CUT_B5_2 <- rFITC_CUT_B5_2$Removed_FITC_CUT_B5_2;
FITC_out_CUT_C5_2 <- outliers_mad(x = FITC_CUT_C5_2, threshold = 2.5)
rFITC_CUT_C5_2 <- data.frame("Removed_FITC_CUT_C5_2" = FITC_CUT_C5_2);
rFITC_CUT_C5_2$Removed_FITC_CUT_C5_2[FITC_out_CUT_C5_2$outliers_pos] <- NA;
FITC_CUT_C5_2 <- rFITC_CUT_C5_2$Removed_FITC_CUT_C5_2;
FITC_out_CUT_D5_2 <- outliers_mad(x = FITC_CUT_D5_2, threshold = 2.5)
rFITC_CUT_D5_2 <- data.frame("Removed_FITC_CUT_D5_2" = FITC_CUT_D5_2);
rFITC_CUT_D5_2$Removed_FITC_CUT_D5_2[FITC_out_CUT_D5_2$outliers_pos] <- NA;
FITC_CUT_D5_2 <- rFITC_CUT_D5_2$Removed_FITC_CUT_D5_2;
FITC_out_CUT_E5_2 <- outliers_mad(x = FITC_CUT_E5_2, threshold = 2.5)
rFITC_CUT_E5_2 <- data.frame("Removed_FITC_CUT_E5_2" = FITC_CUT_E5_2);
rFITC_CUT_E5_2$Removed_FITC_CUT_E5_2[FITC_out_CUT_E5_2$outliers_pos] <- NA;
FITC_CUT_E5_2 <- rFITC_CUT_E5_2$Removed_FITC_CUT_E5_2;
FITC_out_CUT_F5_2 <- outliers_mad(x = FITC_CUT_F5_2, threshold = 2.5)
rFITC_CUT_F5_2 <- data.frame("Removed_FITC_CUT_F5_2" = FITC_CUT_F5_2);
rFITC_CUT_F5_2$Removed_FITC_CUT_F5_2[FITC_out_CUT_F5_2$outliers_pos] <- NA;
FITC_CUT_F5_2 <- rFITC_CUT_F5_2$Removed_FITC_CUT_F5_2;
FITC_out_CUT_G5_2 <- outliers_mad(x = FITC_CUT_G5_2, threshold = 2.5)
rFITC_CUT_G5_2 <- data.frame("Removed_FITC_CUT_G5_2" = FITC_CUT_G5_2);
rFITC_CUT_G5_2$Removed_FITC_CUT_G5_2[FITC_out_CUT_G5_2$outliers_pos] <- NA;
FITC_CUT_G5_2 <- rFITC_CUT_G5_2$Removed_FITC_CUT_G5_2;
FITC_out_CUT_H5_2 <- outliers_mad(x = FITC_CUT_H5_2, threshold = 2.5)
rFITC_CUT_H5_2 <- data.frame("Removed_FITC_CUT_H5_2" = FITC_CUT_H5_2);
rFITC_CUT_H5_2$Removed_FITC_CUT_H5_2[FITC_out_CUT_H5_2$outliers_pos] <- NA;
FITC_CUT_H5_2 <- rFITC_CUT_H5_2$Removed_FITC_CUT_H5_2;
FITC_out_CUT_A6_2 <- outliers_mad(x = FITC_CUT_A6_2, threshold = 2.5)
rFITC_CUT_A6_2 <- data.frame("Removed_FITC_CUT_A6_2" = FITC_CUT_A6_2);
rFITC_CUT_A6_2$Removed_FITC_CUT_A6_2[FITC_out_CUT_A6_2$outliers_pos] <- NA;
FITC_CUT_A6_2 <- rFITC_CUT_A6_2$Removed_FITC_CUT_A6_2;
FITC_out_CUT_B6_2 <- outliers_mad(x = FITC_CUT_B6_2, threshold = 2.5)
rFITC_CUT_B6_2 <- data.frame("Removed_FITC_CUT_B6_2" = FITC_CUT_B6_2);
rFITC_CUT_B6_2$Removed_FITC_CUT_B6_2[FITC_out_CUT_B6_2$outliers_pos] <- NA;
FITC_CUT_B6_2 <- rFITC_CUT_B6_2$Removed_FITC_CUT_B6_2;
FITC_out_CUT_C6_2 <- outliers_mad(x = FITC_CUT_C6_2, threshold = 2.5)
rFITC_CUT_C6_2 <- data.frame("Removed_FITC_CUT_C6_2" = FITC_CUT_C6_2);
rFITC_CUT_C6_2$Removed_FITC_CUT_C6_2[FITC_out_CUT_C6_2$outliers_pos] <- NA;
FITC_CUT_C6_2 <- rFITC_CUT_C6_2$Removed_FITC_CUT_C6_2;
FITC_out_CUT_D6_2 <- outliers_mad(x = FITC_CUT_D6_2, threshold = 2.5)
rFITC_CUT_D6_2 <- data.frame("Removed_FITC_CUT_D6_2" = FITC_CUT_D6_2);
rFITC_CUT_D6_2$Removed_FITC_CUT_D6_2[FITC_out_CUT_D6_2$outliers_pos] <- NA;
FITC_CUT_D6_2 <- rFITC_CUT_D6_2$Removed_FITC_CUT_D6_2;
FITC_out_CUT_E6_2 <- outliers_mad(x = FITC_CUT_E6_2, threshold = 2.5)
rFITC_CUT_E6_2 <- data.frame("Removed_FITC_CUT_E6_2" = FITC_CUT_E6_2);
rFITC_CUT_E6_2$Removed_FITC_CUT_E6_2[FITC_out_CUT_E6_2$outliers_pos] <- NA;
FITC_CUT_E6_2 <- rFITC_CUT_E6_2$Removed_FITC_CUT_E6_2;
FITC_out_CUT_F6_2 <- outliers_mad(x = FITC_CUT_F6_2, threshold = 2.5)
rFITC_CUT_F6_2 <- data.frame("Removed_FITC_CUT_F6_2" = FITC_CUT_F6_2);
rFITC_CUT_F6_2$Removed_FITC_CUT_F6_2[FITC_out_CUT_F6_2$outliers_pos] <- NA;
FITC_CUT_F6_2 <- rFITC_CUT_F6_2$Removed_FITC_CUT_F6_2;
FITC_out_CUT_G6_2 <- outliers_mad(x = FITC_CUT_G6_2, threshold = 2.5)
rFITC_CUT_G6_2 <- data.frame("Removed_FITC_CUT_G6_2" = FITC_CUT_G6_2);
rFITC_CUT_G6_2$Removed_FITC_CUT_G6_2[FITC_out_CUT_G6_2$outliers_pos] <- NA;
FITC_CUT_G6_2 <- rFITC_CUT_G6_2$Removed_FITC_CUT_G6_2;
FITC_out_CUT_H6_2 <- outliers_mad(x = FITC_CUT_H6_2, threshold = 2.5)
rFITC_CUT_H6_2 <- data.frame("Removed_FITC_CUT_H6_2" = FITC_CUT_H6_2);
rFITC_CUT_H6_2$Removed_FITC_CUT_H6_2[FITC_out_CUT_H6_2$outliers_pos] <- NA;
FITC_CUT_H6_2 <- rFITC_CUT_H6_2$Removed_FITC_CUT_H6_2;
FITC_out_CUT_A7_2 <- outliers_mad(x = FITC_CUT_A7_2, threshold = 2.5)
rFITC_CUT_A7_2 <- data.frame("Removed_FITC_CUT_A7_2" = FITC_CUT_A7_2);
rFITC_CUT_A7_2$Removed_FITC_CUT_A7_2[FITC_out_CUT_A7_2$outliers_pos] <- NA;
FITC_CUT_A7_2 <- rFITC_CUT_A7_2$Removed_FITC_CUT_A7_2;
FITC_out_CUT_B7_2 <- outliers_mad(x = FITC_CUT_B7_2, threshold = 2.5)
rFITC_CUT_B7_2 <- data.frame("Removed_FITC_CUT_B7_2" = FITC_CUT_B7_2);
rFITC_CUT_B7_2$Removed_FITC_CUT_B7_2[FITC_out_CUT_B7_2$outliers_pos] <- NA;
FITC_CUT_B7_2 <- rFITC_CUT_B7_2$Removed_FITC_CUT_B7_2;
FITC_out_CUT_C7_2 <- outliers_mad(x = FITC_CUT_C7_2, threshold = 2.5)
rFITC_CUT_C7_2 <- data.frame("Removed_FITC_CUT_C7_2" = FITC_CUT_C7_2);
rFITC_CUT_C7_2$Removed_FITC_CUT_C7_2[FITC_out_CUT_C7_2$outliers_pos] <- NA;
FITC_CUT_C7_2 <- rFITC_CUT_C7_2$Removed_FITC_CUT_C7_2;
FITC_out_CUT_D7_2 <- outliers_mad(x = FITC_CUT_D7_2, threshold = 2.5)
rFITC_CUT_D7_2 <- data.frame("Removed_FITC_CUT_D7_2" = FITC_CUT_D7_2);
rFITC_CUT_D7_2$Removed_FITC_CUT_D7_2[FITC_out_CUT_D7_2$outliers_pos] <- NA;
FITC_CUT_D7_2 <- rFITC_CUT_D7_2$Removed_FITC_CUT_D7_2;
FITC_out_CUT_E7_2 <- outliers_mad(x = FITC_CUT_E7_2, threshold = 2.5)
rFITC_CUT_E7_2 <- data.frame("Removed_FITC_CUT_E7_2" = FITC_CUT_E7_2);
rFITC_CUT_E7_2$Removed_FITC_CUT_E7_2[FITC_out_CUT_E7_2$outliers_pos] <- NA;
FITC_CUT_E7_2 <- rFITC_CUT_E7_2$Removed_FITC_CUT_E7_2;
FITC_out_CUT_F7_2 <- outliers_mad(x = FITC_CUT_F7_2, threshold = 2.5)
rFITC_CUT_F7_2 <- data.frame("Removed_FITC_CUT_F7_2" = FITC_CUT_F7_2);
rFITC_CUT_F7_2$Removed_FITC_CUT_F7_2[FITC_out_CUT_F7_2$outliers_pos] <- NA;
FITC_CUT_F7_2 <- rFITC_CUT_F7_2$Removed_FITC_CUT_F7_2;
FITC_out_CUT_G7_2 <- outliers_mad(x = FITC_CUT_G7_2, threshold = 2.5)
rFITC_CUT_G7_2 <- data.frame("Removed_FITC_CUT_G7_2" = FITC_CUT_G7_2);
rFITC_CUT_G7_2$Removed_FITC_CUT_G7_2[FITC_out_CUT_G7_2$outliers_pos] <- NA;
FITC_CUT_G7_2 <- rFITC_CUT_G7_2$Removed_FITC_CUT_G7_2;
FITC_out_CUT_H7_2 <- outliers_mad(x = FITC_CUT_H7_2, threshold = 2.5)
rFITC_CUT_H7_2 <- data.frame("Removed_FITC_CUT_H7_2" = FITC_CUT_H7_2);
rFITC_CUT_H7_2$Removed_FITC_CUT_H7_2[FITC_out_CUT_H7_2$outliers_pos] <- NA;
FITC_CUT_H7_2 <- rFITC_CUT_H7_2$Removed_FITC_CUT_H7_2;
FITC_out_CUT_A8_2 <- outliers_mad(x = FITC_CUT_A8_2, threshold = 2.5)
rFITC_CUT_A8_2 <- data.frame("Removed_FITC_CUT_A8_2" = FITC_CUT_A8_2);
rFITC_CUT_A8_2$Removed_FITC_CUT_A8_2[FITC_out_CUT_A8_2$outliers_pos] <- NA;
FITC_CUT_A8_2 <- rFITC_CUT_A8_2$Removed_FITC_CUT_A8_2;
FITC_out_CUT_B8_2 <- outliers_mad(x = FITC_CUT_B8_2, threshold = 2.5)
rFITC_CUT_B8_2 <- data.frame("Removed_FITC_CUT_B8_2" = FITC_CUT_B8_2);
rFITC_CUT_B8_2$Removed_FITC_CUT_B8_2[FITC_out_CUT_B8_2$outliers_pos] <- NA;
FITC_CUT_B8_2 <- rFITC_CUT_B8_2$Removed_FITC_CUT_B8_2;
FITC_out_CUT_C8_2 <- outliers_mad(x = FITC_CUT_C8_2, threshold = 2.5)
rFITC_CUT_C8_2 <- data.frame("Removed_FITC_CUT_C8_2" = FITC_CUT_C8_2);
rFITC_CUT_C8_2$Removed_FITC_CUT_C8_2[FITC_out_CUT_C8_2$outliers_pos] <- NA;
FITC_CUT_C8_2 <- rFITC_CUT_C8_2$Removed_FITC_CUT_C8_2;
FITC_out_CUT_D8_2 <- outliers_mad(x = FITC_CUT_D8_2, threshold = 2.5)
rFITC_CUT_D8_2 <- data.frame("Removed_FITC_CUT_D8_2" = FITC_CUT_D8_2);
rFITC_CUT_D8_2$Removed_FITC_CUT_D8_2[FITC_out_CUT_D8_2$outliers_pos] <- NA;
FITC_CUT_D8_2 <- rFITC_CUT_D8_2$Removed_FITC_CUT_D8_2;
FITC_out_CUT_E8_2 <- outliers_mad(x = FITC_CUT_E8_2, threshold = 2.5)
rFITC_CUT_E8_2 <- data.frame("Removed_FITC_CUT_E8_2" = FITC_CUT_E8_2);
rFITC_CUT_E8_2$Removed_FITC_CUT_E8_2[FITC_out_CUT_E8_2$outliers_pos] <- NA;
FITC_CUT_E8_2 <- rFITC_CUT_E8_2$Removed_FITC_CUT_E8_2;
FITC_out_CUT_F8_2 <- outliers_mad(x = FITC_CUT_F8_2, threshold = 2.5)
rFITC_CUT_F8_2 <- data.frame("Removed_FITC_CUT_F8_2" = FITC_CUT_F8_2);
rFITC_CUT_F8_2$Removed_FITC_CUT_F8_2[FITC_out_CUT_F8_2$outliers_pos] <- NA;
FITC_CUT_F8_2 <- rFITC_CUT_F8_2$Removed_FITC_CUT_F8_2;
FITC_out_CUT_G8_2 <- outliers_mad(x = FITC_CUT_G8_2, threshold = 2.5)
rFITC_CUT_G8_2 <- data.frame("Removed_FITC_CUT_G8_2" = FITC_CUT_G8_2);
rFITC_CUT_G8_2$Removed_FITC_CUT_G8_2[FITC_out_CUT_G8_2$outliers_pos] <- NA;
FITC_CUT_G8_2 <- rFITC_CUT_G8_2$Removed_FITC_CUT_G8_2;
FITC_out_CUT_H8_2 <- outliers_mad(x = FITC_CUT_H8_2, threshold = 2.5)
rFITC_CUT_H8_2 <- data.frame("Removed_FITC_CUT_H8_2" = FITC_CUT_H8_2);
rFITC_CUT_H8_2$Removed_FITC_CUT_H8_2[FITC_out_CUT_H8_2$outliers_pos] <- NA;
FITC_CUT_H8_2 <- rFITC_CUT_H8_2$Removed_FITC_CUT_H8_2;
FITC_out_CUT_A9_2 <- outliers_mad(x = FITC_CUT_A9_2, threshold = 2.5)
rFITC_CUT_A9_2 <- data.frame("Removed_FITC_CUT_A9_2" = FITC_CUT_A9_2);
rFITC_CUT_A9_2$Removed_FITC_CUT_A9_2[FITC_out_CUT_A9_2$outliers_pos] <- NA;
FITC_CUT_A9_2 <- rFITC_CUT_A9_2$Removed_FITC_CUT_A9_2;
FITC_out_CUT_B9_2 <- outliers_mad(x = FITC_CUT_B9_2, threshold = 2.5)
rFITC_CUT_B9_2 <- data.frame("Removed_FITC_CUT_B9_2" = FITC_CUT_B9_2);
rFITC_CUT_B9_2$Removed_FITC_CUT_B9_2[FITC_out_CUT_B9_2$outliers_pos] <- NA;
FITC_CUT_B9_2 <- rFITC_CUT_B9_2$Removed_FITC_CUT_B9_2;
FITC_out_CUT_C9_2 <- outliers_mad(x = FITC_CUT_C9_2, threshold = 2.5)
rFITC_CUT_C9_2 <- data.frame("Removed_FITC_CUT_C9_2" = FITC_CUT_C9_2);
rFITC_CUT_C9_2$Removed_FITC_CUT_C9_2[FITC_out_CUT_C9_2$outliers_pos] <- NA;
FITC_CUT_C9_2 <- rFITC_CUT_C9_2$Removed_FITC_CUT_C9_2;
FITC_out_CUT_D9_2 <- outliers_mad(x = FITC_CUT_D9_2, threshold = 2.5)
rFITC_CUT_D9_2 <- data.frame("Removed_FITC_CUT_D9_2" = FITC_CUT_D9_2);
rFITC_CUT_D9_2$Removed_FITC_CUT_D9_2[FITC_out_CUT_D9_2$outliers_pos] <- NA;
FITC_CUT_D9_2 <- rFITC_CUT_D9_2$Removed_FITC_CUT_D9_2;
FITC_out_CUT_E9_2 <- outliers_mad(x = FITC_CUT_E9_2, threshold = 2.5)
rFITC_CUT_E9_2 <- data.frame("Removed_FITC_CUT_E9_2" = FITC_CUT_E9_2);
rFITC_CUT_E9_2$Removed_FITC_CUT_E9_2[FITC_out_CUT_E9_2$outliers_pos] <- NA;
FITC_CUT_E9_2 <- rFITC_CUT_E9_2$Removed_FITC_CUT_E9_2;
FITC_out_CUT_F9_2 <- outliers_mad(x = FITC_CUT_F9_2, threshold = 2.5)
rFITC_CUT_F9_2 <- data.frame("Removed_FITC_CUT_F9_2" = FITC_CUT_F9_2);
rFITC_CUT_F9_2$Removed_FITC_CUT_F9_2[FITC_out_CUT_F9_2$outliers_pos] <- NA;
FITC_CUT_F9_2 <- rFITC_CUT_F9_2$Removed_FITC_CUT_F9_2;
FITC_out_CUT_G9_2 <- outliers_mad(x = FITC_CUT_G9_2, threshold = 2.5)
rFITC_CUT_G9_2 <- data.frame("Removed_FITC_CUT_G9_2" = FITC_CUT_G9_2);
rFITC_CUT_G9_2$Removed_FITC_CUT_G9_2[FITC_out_CUT_G9_2$outliers_pos] <- NA;
FITC_CUT_G9_2 <- rFITC_CUT_G9_2$Removed_FITC_CUT_G9_2;
FITC_out_CUT_H9_2 <- outliers_mad(x = FITC_CUT_H9_2, threshold = 2.5)
rFITC_CUT_H9_2 <- data.frame("Removed_FITC_CUT_H9_2" = FITC_CUT_H9_2);
rFITC_CUT_H9_2$Removed_FITC_CUT_H9_2[FITC_out_CUT_H9_2$outliers_pos] <- NA;
FITC_CUT_H9_2 <- rFITC_CUT_H9_2$Removed_FITC_CUT_H9_2;
FITC_out_CUT_A10_2 <- outliers_mad(x = FITC_CUT_A10_2, threshold = 2.5)
rFITC_CUT_A10_2 <- data.frame("Removed_FITC_CUT_A10_2" = FITC_CUT_A10_2);
rFITC_CUT_A10_2$Removed_FITC_CUT_A10_2[FITC_out_CUT_A10_2$outliers_pos] <- NA;
FITC_CUT_A10_2 <- rFITC_CUT_A10_2$Removed_FITC_CUT_A10_2;
FITC_out_CUT_B10_2 <- outliers_mad(x = FITC_CUT_B10_2, threshold = 2.5)
rFITC_CUT_B10_2 <- data.frame("Removed_FITC_CUT_B10_2" = FITC_CUT_B10_2);
rFITC_CUT_B10_2$Removed_FITC_CUT_B10_2[FITC_out_CUT_B10_2$outliers_pos] <- NA;
FITC_CUT_B10_2 <- rFITC_CUT_B10_2$Removed_FITC_CUT_B10_2;
FITC_out_CUT_C10_2 <- outliers_mad(x = FITC_CUT_C10_2, threshold = 2.5)
rFITC_CUT_C10_2 <- data.frame("Removed_FITC_CUT_C10_2" = FITC_CUT_C10_2);
rFITC_CUT_C10_2$Removed_FITC_CUT_C10_2[FITC_out_CUT_C10_2$outliers_pos] <- NA;
FITC_CUT_C10_2 <- rFITC_CUT_C10_2$Removed_FITC_CUT_C10_2;
FITC_out_CUT_D10_2 <- outliers_mad(x = FITC_CUT_D10_2, threshold = 2.5)
rFITC_CUT_D10_2 <- data.frame("Removed_FITC_CUT_D10_2" = FITC_CUT_D10_2);
rFITC_CUT_D10_2$Removed_FITC_CUT_D10_2[FITC_out_CUT_D10_2$outliers_pos] <- NA;
FITC_CUT_D10_2 <- rFITC_CUT_D10_2$Removed_FITC_CUT_D10_2;
FITC_out_CUT_E10_2 <- outliers_mad(x = FITC_CUT_E10_2, threshold = 2.5)
rFITC_CUT_E10_2 <- data.frame("Removed_FITC_CUT_E10_2" = FITC_CUT_E10_2);
rFITC_CUT_E10_2$Removed_FITC_CUT_E10_2[FITC_out_CUT_E10_2$outliers_pos] <- NA;
FITC_CUT_E10_2 <- rFITC_CUT_E10_2$Removed_FITC_CUT_E10_2;
FITC_out_CUT_F10_2 <- outliers_mad(x = FITC_CUT_F10_2, threshold = 2.5)
rFITC_CUT_F10_2 <- data.frame("Removed_FITC_CUT_F10_2" = FITC_CUT_F10_2);
rFITC_CUT_F10_2$Removed_FITC_CUT_F10_2[FITC_out_CUT_F10_2$outliers_pos] <- NA;
FITC_CUT_F10_2 <- rFITC_CUT_F10_2$Removed_FITC_CUT_F10_2;
FITC_out_CUT_G10_2 <- outliers_mad(x = FITC_CUT_G10_2, threshold = 2.5)
rFITC_CUT_G10_2 <- data.frame("Removed_FITC_CUT_G10_2" = FITC_CUT_G10_2);
rFITC_CUT_G10_2$Removed_FITC_CUT_G10_2[FITC_out_CUT_G10_2$outliers_pos] <- NA;
FITC_CUT_G10_2 <- rFITC_CUT_G10_2$Removed_FITC_CUT_G10_2;
FITC_out_CUT_H10_2 <- outliers_mad(x = FITC_CUT_H10_2, threshold = 2.5)
rFITC_CUT_H10_2 <- data.frame("Removed_FITC_CUT_H10_2" = FITC_CUT_H10_2);
rFITC_CUT_H10_2$Removed_FITC_CUT_H10_2[FITC_out_CUT_H10_2$outliers_pos] <- NA;
FITC_CUT_H10_2 <- rFITC_CUT_H10_2$Removed_FITC_CUT_H10_2;
FITC_out_CUT_A11_2 <- outliers_mad(x = FITC_CUT_A11_2, threshold = 2.5)
rFITC_CUT_A11_2 <- data.frame("Removed_FITC_CUT_A11_2" = FITC_CUT_A11_2);
rFITC_CUT_A11_2$Removed_FITC_CUT_A11_2[FITC_out_CUT_A11_2$outliers_pos] <- NA;
FITC_CUT_A11_2 <- rFITC_CUT_A11_2$Removed_FITC_CUT_A11_2;
FITC_out_CUT_B11_2 <- outliers_mad(x = FITC_CUT_B11_2, threshold = 2.5)
rFITC_CUT_B11_2 <- data.frame("Removed_FITC_CUT_B11_2" = FITC_CUT_B11_2);
rFITC_CUT_B11_2$Removed_FITC_CUT_B11_2[FITC_out_CUT_B11_2$outliers_pos] <- NA;
FITC_CUT_B11_2 <- rFITC_CUT_B11_2$Removed_FITC_CUT_B11_2;
FITC_out_CUT_C11_2 <- outliers_mad(x = FITC_CUT_C11_2, threshold = 2.5)
rFITC_CUT_C11_2 <- data.frame("Removed_FITC_CUT_C11_2" = FITC_CUT_C11_2);
rFITC_CUT_C11_2$Removed_FITC_CUT_C11_2[FITC_out_CUT_C11_2$outliers_pos] <- NA;
FITC_CUT_C11_2 <- rFITC_CUT_C11_2$Removed_FITC_CUT_C11_2;
FITC_out_CUT_D11_2 <- outliers_mad(x = FITC_CUT_D11_2, threshold = 2.5)
rFITC_CUT_D11_2 <- data.frame("Removed_FITC_CUT_D11_2" = FITC_CUT_D11_2);
rFITC_CUT_D11_2$Removed_FITC_CUT_D11_2[FITC_out_CUT_D11_2$outliers_pos] <- NA;
FITC_CUT_D11_2 <- rFITC_CUT_D11_2$Removed_FITC_CUT_D11_2;
FITC_out_CUT_E11_2 <- outliers_mad(x = FITC_CUT_E11_2, threshold = 2.5)
rFITC_CUT_E11_2 <- data.frame("Removed_FITC_CUT_E11_2" = FITC_CUT_E11_2);
rFITC_CUT_E11_2$Removed_FITC_CUT_E11_2[FITC_out_CUT_E11_2$outliers_pos] <- NA;
FITC_CUT_E11_2 <- rFITC_CUT_E11_2$Removed_FITC_CUT_E11_2;
FITC_out_CUT_F11_2 <- outliers_mad(x = FITC_CUT_F11_2, threshold = 2.5)
rFITC_CUT_F11_2 <- data.frame("Removed_FITC_CUT_F11_2" = FITC_CUT_F11_2);
rFITC_CUT_F11_2$Removed_FITC_CUT_F11_2[FITC_out_CUT_F11_2$outliers_pos] <- NA;
FITC_CUT_F11_2 <- rFITC_CUT_F11_2$Removed_FITC_CUT_F11_2;
FITC_out_CUT_G11_2 <- outliers_mad(x = FITC_CUT_G11_2, threshold = 2.5)
rFITC_CUT_G11_2 <- data.frame("Removed_FITC_CUT_G11_2" = FITC_CUT_G11_2);
rFITC_CUT_G11_2$Removed_FITC_CUT_G11_2[FITC_out_CUT_G11_2$outliers_pos] <- NA;
FITC_CUT_G11_2 <- rFITC_CUT_G11_2$Removed_FITC_CUT_G11_2;
FITC_out_CUT_H11_2 <- outliers_mad(x = FITC_CUT_H11_2, threshold = 2.5)
rFITC_CUT_H11_2 <- data.frame("Removed_FITC_CUT_H11_2" = FITC_CUT_H11_2);
rFITC_CUT_H11_2$Removed_FITC_CUT_H11_2[FITC_out_CUT_H11_2$outliers_pos] <- NA;
FITC_CUT_H11_2 <- rFITC_CUT_H11_2$Removed_FITC_CUT_H11_2;
FITC_out_CUT_A12_2 <- outliers_mad(x = FITC_CUT_A12_2, threshold = 2.5)
rFITC_CUT_A12_2 <- data.frame("Removed_FITC_CUT_A12_2" = FITC_CUT_A12_2);
rFITC_CUT_A12_2$Removed_FITC_CUT_A12_2[FITC_out_CUT_A12_2$outliers_pos] <- NA;
FITC_CUT_A12_2 <- rFITC_CUT_A12_2$Removed_FITC_CUT_A12_2;
FITC_out_CUT_B12_2 <- outliers_mad(x = FITC_CUT_B12_2, threshold = 2.5)
rFITC_CUT_B12_2 <- data.frame("Removed_FITC_CUT_B12_2" = FITC_CUT_B12_2);
rFITC_CUT_B12_2$Removed_FITC_CUT_B12_2[FITC_out_CUT_B12_2$outliers_pos] <- NA;
FITC_CUT_B12_2 <- rFITC_CUT_B12_2$Removed_FITC_CUT_B12_2;
FITC_out_CUT_C12_2 <- outliers_mad(x = FITC_CUT_C12_2, threshold = 2.5)
rFITC_CUT_C12_2 <- data.frame("Removed_FITC_CUT_C12_2" = FITC_CUT_C12_2);
rFITC_CUT_C12_2$Removed_FITC_CUT_C12_2[FITC_out_CUT_C12_2$outliers_pos] <- NA;
FITC_CUT_C12_2 <- rFITC_CUT_C12_2$Removed_FITC_CUT_C12_2;
FITC_out_CUT_D12_2 <- outliers_mad(x = FITC_CUT_D12_2, threshold = 2.5)
rFITC_CUT_D12_2 <- data.frame("Removed_FITC_CUT_D12_2" = FITC_CUT_D12_2);
rFITC_CUT_D12_2$Removed_FITC_CUT_D12_2[FITC_out_CUT_D12_2$outliers_pos] <- NA;
FITC_CUT_D12_2 <- rFITC_CUT_D12_2$Removed_FITC_CUT_D12_2;
FITC_out_CUT_E12_2 <- outliers_mad(x = FITC_CUT_E12_2, threshold = 2.5)
rFITC_CUT_E12_2 <- data.frame("Removed_FITC_CUT_E12_2" = FITC_CUT_E12_2);
rFITC_CUT_E12_2$Removed_FITC_CUT_E12_2[FITC_out_CUT_E12_2$outliers_pos] <- NA;
FITC_CUT_E12_2 <- rFITC_CUT_E12_2$Removed_FITC_CUT_E12_2;
FITC_out_CUT_F12_2 <- outliers_mad(x = FITC_CUT_F12_2, threshold = 2.5)
rFITC_CUT_F12_2 <- data.frame("Removed_FITC_CUT_F12_2" = FITC_CUT_F12_2);
rFITC_CUT_F12_2$Removed_FITC_CUT_F12_2[FITC_out_CUT_F12_2$outliers_pos] <- NA;
FITC_CUT_F12_2 <- rFITC_CUT_F12_2$Removed_FITC_CUT_F12_2;
FITC_out_CUT_G12_2 <- outliers_mad(x = FITC_CUT_G12_2, threshold = 2.5)
rFITC_CUT_G12_2 <- data.frame("Removed_FITC_CUT_G12_2" = FITC_CUT_G12_2);
rFITC_CUT_G12_2$Removed_FITC_CUT_G12_2[FITC_out_CUT_G12_2$outliers_pos] <- NA;
FITC_CUT_G12_2 <- rFITC_CUT_G12_2$Removed_FITC_CUT_G12_2;
FITC_out_CUT_H12_2 <- outliers_mad(x = FITC_CUT_H12_2, threshold = 2.5)
rFITC_CUT_H12_2 <- data.frame("Removed_FITC_CUT_H12_2" = FITC_CUT_H12_2);
rFITC_CUT_H12_2$Removed_FITC_CUT_H12_2[FITC_out_CUT_H12_2$outliers_pos] <- NA;
FITC_CUT_H12_2 <- rFITC_CUT_H12_2$Removed_FITC_CUT_H12_2;

PE_out_CUT_A1_1 <- outliers_mad(x = PE_CUT_A1_1, threshold = 2.5)
rPE_CUT_A1_1 <- data.frame("Removed_PE_CUT_A1_1" = PE_CUT_A1_1);
rPE_CUT_A1_1$Removed_PE_CUT_A1_1[PE_out_CUT_A1_1$outliers_pos] <- NA;
PE_CUT_A1_1 <- rPE_CUT_A1_1$Removed_PE_CUT_A1_1;
PE_out_CUT_B1_1 <- outliers_mad(x = PE_CUT_B1_1, threshold = 2.5)
rPE_CUT_B1_1 <- data.frame("Removed_PE_CUT_B1_1" = PE_CUT_B1_1);
rPE_CUT_B1_1$Removed_PE_CUT_B1_1[PE_out_CUT_B1_1$outliers_pos] <- NA;
PE_CUT_B1_1 <- rPE_CUT_B1_1$Removed_PE_CUT_B1_1;
PE_out_CUT_C1_1 <- outliers_mad(x = PE_CUT_C1_1, threshold = 2.5)
rPE_CUT_C1_1 <- data.frame("Removed_PE_CUT_C1_1" = PE_CUT_C1_1);
rPE_CUT_C1_1$Removed_PE_CUT_C1_1[PE_out_CUT_C1_1$outliers_pos] <- NA;
PE_CUT_C1_1 <- rPE_CUT_C1_1$Removed_PE_CUT_C1_1;
PE_out_CUT_D1_1 <- outliers_mad(x = PE_CUT_D1_1, threshold = 2.5)
rPE_CUT_D1_1 <- data.frame("Removed_PE_CUT_D1_1" = PE_CUT_D1_1);
rPE_CUT_D1_1$Removed_PE_CUT_D1_1[PE_out_CUT_D1_1$outliers_pos] <- NA;
PE_CUT_D1_1 <- rPE_CUT_D1_1$Removed_PE_CUT_D1_1;
PE_out_CUT_E1_1 <- outliers_mad(x = PE_CUT_E1_1, threshold = 2.5)
rPE_CUT_E1_1 <- data.frame("Removed_PE_CUT_E1_1" = PE_CUT_E1_1);
rPE_CUT_E1_1$Removed_PE_CUT_E1_1[PE_out_CUT_E1_1$outliers_pos] <- NA;
PE_CUT_E1_1 <- rPE_CUT_E1_1$Removed_PE_CUT_E1_1;
PE_out_CUT_F1_1 <- outliers_mad(x = PE_CUT_F1_1, threshold = 2.5)
rPE_CUT_F1_1 <- data.frame("Removed_PE_CUT_F1_1" = PE_CUT_F1_1);
rPE_CUT_F1_1$Removed_PE_CUT_F1_1[PE_out_CUT_F1_1$outliers_pos] <- NA;
PE_CUT_F1_1 <- rPE_CUT_F1_1$Removed_PE_CUT_F1_1;
PE_out_CUT_G1_1 <- outliers_mad(x = PE_CUT_G1_1, threshold = 2.5)
rPE_CUT_G1_1 <- data.frame("Removed_PE_CUT_G1_1" = PE_CUT_G1_1);
rPE_CUT_G1_1$Removed_PE_CUT_G1_1[PE_out_CUT_G1_1$outliers_pos] <- NA;
PE_CUT_G1_1 <- rPE_CUT_G1_1$Removed_PE_CUT_G1_1;
PE_out_CUT_H1_1 <- outliers_mad(x = PE_CUT_H1_1, threshold = 2.5)
rPE_CUT_H1_1 <- data.frame("Removed_PE_CUT_H1_1" = PE_CUT_H1_1);
rPE_CUT_H1_1$Removed_PE_CUT_H1_1[PE_out_CUT_H1_1$outliers_pos] <- NA;
PE_CUT_H1_1 <- rPE_CUT_H1_1$Removed_PE_CUT_H1_1;
PE_out_CUT_A2_1 <- outliers_mad(x = PE_CUT_A2_1, threshold = 2.5)
rPE_CUT_A2_1 <- data.frame("Removed_PE_CUT_A2_1" = PE_CUT_A2_1);
rPE_CUT_A2_1$Removed_PE_CUT_A2_1[PE_out_CUT_A2_1$outliers_pos] <- NA;
PE_CUT_A2_1 <- rPE_CUT_A2_1$Removed_PE_CUT_A2_1;
PE_out_CUT_B2_1 <- outliers_mad(x = PE_CUT_B2_1, threshold = 2.5)
rPE_CUT_B2_1 <- data.frame("Removed_PE_CUT_B2_1" = PE_CUT_B2_1);
rPE_CUT_B2_1$Removed_PE_CUT_B2_1[PE_out_CUT_B2_1$outliers_pos] <- NA;
PE_CUT_B2_1 <- rPE_CUT_B2_1$Removed_PE_CUT_B2_1;
PE_out_CUT_C2_1 <- outliers_mad(x = PE_CUT_C2_1, threshold = 2.5)
rPE_CUT_C2_1 <- data.frame("Removed_PE_CUT_C2_1" = PE_CUT_C2_1);
rPE_CUT_C2_1$Removed_PE_CUT_C2_1[PE_out_CUT_C2_1$outliers_pos] <- NA;
PE_CUT_C2_1 <- rPE_CUT_C2_1$Removed_PE_CUT_C2_1;
PE_out_CUT_D2_1 <- outliers_mad(x = PE_CUT_D2_1, threshold = 2.5)
rPE_CUT_D2_1 <- data.frame("Removed_PE_CUT_D2_1" = PE_CUT_D2_1);
rPE_CUT_D2_1$Removed_PE_CUT_D2_1[PE_out_CUT_D2_1$outliers_pos] <- NA;
PE_CUT_D2_1 <- rPE_CUT_D2_1$Removed_PE_CUT_D2_1;
PE_out_CUT_E2_1 <- outliers_mad(x = PE_CUT_E2_1, threshold = 2.5)
rPE_CUT_E2_1 <- data.frame("Removed_PE_CUT_E2_1" = PE_CUT_E2_1);
rPE_CUT_E2_1$Removed_PE_CUT_E2_1[PE_out_CUT_E2_1$outliers_pos] <- NA;
PE_CUT_E2_1 <- rPE_CUT_E2_1$Removed_PE_CUT_E2_1;
PE_out_CUT_F2_1 <- outliers_mad(x = PE_CUT_F2_1, threshold = 2.5)
rPE_CUT_F2_1 <- data.frame("Removed_PE_CUT_F2_1" = PE_CUT_F2_1);
rPE_CUT_F2_1$Removed_PE_CUT_F2_1[PE_out_CUT_F2_1$outliers_pos] <- NA;
PE_CUT_F2_1 <- rPE_CUT_F2_1$Removed_PE_CUT_F2_1;
PE_out_CUT_G2_1 <- outliers_mad(x = PE_CUT_G2_1, threshold = 2.5)
rPE_CUT_G2_1 <- data.frame("Removed_PE_CUT_G2_1" = PE_CUT_G2_1);
rPE_CUT_G2_1$Removed_PE_CUT_G2_1[PE_out_CUT_G2_1$outliers_pos] <- NA;
PE_CUT_G2_1 <- rPE_CUT_G2_1$Removed_PE_CUT_G2_1;
PE_out_CUT_H2_1 <- outliers_mad(x = PE_CUT_H2_1, threshold = 2.5)
rPE_CUT_H2_1 <- data.frame("Removed_PE_CUT_H2_1" = PE_CUT_H2_1);
rPE_CUT_H2_1$Removed_PE_CUT_H2_1[PE_out_CUT_H2_1$outliers_pos] <- NA;
PE_CUT_H2_1 <- rPE_CUT_H2_1$Removed_PE_CUT_H2_1;
PE_out_CUT_A3_1 <- outliers_mad(x = PE_CUT_A3_1, threshold = 2.5)
rPE_CUT_A3_1 <- data.frame("Removed_PE_CUT_A3_1" = PE_CUT_A3_1);
rPE_CUT_A3_1$Removed_PE_CUT_A3_1[PE_out_CUT_A3_1$outliers_pos] <- NA;
PE_CUT_A3_1 <- rPE_CUT_A3_1$Removed_PE_CUT_A3_1;
PE_out_CUT_B3_1 <- outliers_mad(x = PE_CUT_B3_1, threshold = 2.5)
rPE_CUT_B3_1 <- data.frame("Removed_PE_CUT_B3_1" = PE_CUT_B3_1);
rPE_CUT_B3_1$Removed_PE_CUT_B3_1[PE_out_CUT_B3_1$outliers_pos] <- NA;
PE_CUT_B3_1 <- rPE_CUT_B3_1$Removed_PE_CUT_B3_1;
PE_out_CUT_C3_1 <- outliers_mad(x = PE_CUT_C3_1, threshold = 2.5)
rPE_CUT_C3_1 <- data.frame("Removed_PE_CUT_C3_1" = PE_CUT_C3_1);
rPE_CUT_C3_1$Removed_PE_CUT_C3_1[PE_out_CUT_C3_1$outliers_pos] <- NA;
PE_CUT_C3_1 <- rPE_CUT_C3_1$Removed_PE_CUT_C3_1;
PE_out_CUT_D3_1 <- outliers_mad(x = PE_CUT_D3_1, threshold = 2.5)
rPE_CUT_D3_1 <- data.frame("Removed_PE_CUT_D3_1" = PE_CUT_D3_1);
rPE_CUT_D3_1$Removed_PE_CUT_D3_1[PE_out_CUT_D3_1$outliers_pos] <- NA;
PE_CUT_D3_1 <- rPE_CUT_D3_1$Removed_PE_CUT_D3_1;
PE_out_CUT_E3_1 <- outliers_mad(x = PE_CUT_E3_1, threshold = 2.5)
rPE_CUT_E3_1 <- data.frame("Removed_PE_CUT_E3_1" = PE_CUT_E3_1);
rPE_CUT_E3_1$Removed_PE_CUT_E3_1[PE_out_CUT_E3_1$outliers_pos] <- NA;
PE_CUT_E3_1 <- rPE_CUT_E3_1$Removed_PE_CUT_E3_1;
PE_out_CUT_F3_1 <- outliers_mad(x = PE_CUT_F3_1, threshold = 2.5)
rPE_CUT_F3_1 <- data.frame("Removed_PE_CUT_F3_1" = PE_CUT_F3_1);
rPE_CUT_F3_1$Removed_PE_CUT_F3_1[PE_out_CUT_F3_1$outliers_pos] <- NA;
PE_CUT_F3_1 <- rPE_CUT_F3_1$Removed_PE_CUT_F3_1;
PE_out_CUT_G3_1 <- outliers_mad(x = PE_CUT_G3_1, threshold = 2.5)
rPE_CUT_G3_1 <- data.frame("Removed_PE_CUT_G3_1" = PE_CUT_G3_1);
rPE_CUT_G3_1$Removed_PE_CUT_G3_1[PE_out_CUT_G3_1$outliers_pos] <- NA;
PE_CUT_G3_1 <- rPE_CUT_G3_1$Removed_PE_CUT_G3_1;
PE_out_CUT_H3_1 <- outliers_mad(x = PE_CUT_H3_1, threshold = 2.5)
rPE_CUT_H3_1 <- data.frame("Removed_PE_CUT_H3_1" = PE_CUT_H3_1);
rPE_CUT_H3_1$Removed_PE_CUT_H3_1[PE_out_CUT_H3_1$outliers_pos] <- NA;
PE_CUT_H3_1 <- rPE_CUT_H3_1$Removed_PE_CUT_H3_1;
PE_out_CUT_A4_1 <- outliers_mad(x = PE_CUT_A4_1, threshold = 2.5)
rPE_CUT_A4_1 <- data.frame("Removed_PE_CUT_A4_1" = PE_CUT_A4_1);
rPE_CUT_A4_1$Removed_PE_CUT_A4_1[PE_out_CUT_A4_1$outliers_pos] <- NA;
PE_CUT_A4_1 <- rPE_CUT_A4_1$Removed_PE_CUT_A4_1;
PE_out_CUT_B4_1 <- outliers_mad(x = PE_CUT_B4_1, threshold = 2.5)
rPE_CUT_B4_1 <- data.frame("Removed_PE_CUT_B4_1" = PE_CUT_B4_1);
rPE_CUT_B4_1$Removed_PE_CUT_B4_1[PE_out_CUT_B4_1$outliers_pos] <- NA;
PE_CUT_B4_1 <- rPE_CUT_B4_1$Removed_PE_CUT_B4_1;
PE_out_CUT_C4_1 <- outliers_mad(x = PE_CUT_C4_1, threshold = 2.5)
rPE_CUT_C4_1 <- data.frame("Removed_PE_CUT_C4_1" = PE_CUT_C4_1);
rPE_CUT_C4_1$Removed_PE_CUT_C4_1[PE_out_CUT_C4_1$outliers_pos] <- NA;
PE_CUT_C4_1 <- rPE_CUT_C4_1$Removed_PE_CUT_C4_1;
PE_out_CUT_D4_1 <- outliers_mad(x = PE_CUT_D4_1, threshold = 2.5)
rPE_CUT_D4_1 <- data.frame("Removed_PE_CUT_D4_1" = PE_CUT_D4_1);
rPE_CUT_D4_1$Removed_PE_CUT_D4_1[PE_out_CUT_D4_1$outliers_pos] <- NA;
PE_CUT_D4_1 <- rPE_CUT_D4_1$Removed_PE_CUT_D4_1;
PE_out_CUT_E4_1 <- outliers_mad(x = PE_CUT_E4_1, threshold = 2.5)
rPE_CUT_E4_1 <- data.frame("Removed_PE_CUT_E4_1" = PE_CUT_E4_1);
rPE_CUT_E4_1$Removed_PE_CUT_E4_1[PE_out_CUT_E4_1$outliers_pos] <- NA;
PE_CUT_E4_1 <- rPE_CUT_E4_1$Removed_PE_CUT_E4_1;
PE_out_CUT_F4_1 <- outliers_mad(x = PE_CUT_F4_1, threshold = 2.5)
rPE_CUT_F4_1 <- data.frame("Removed_PE_CUT_F4_1" = PE_CUT_F4_1);
rPE_CUT_F4_1$Removed_PE_CUT_F4_1[PE_out_CUT_F4_1$outliers_pos] <- NA;
PE_CUT_F4_1 <- rPE_CUT_F4_1$Removed_PE_CUT_F4_1;
PE_out_CUT_G4_1 <- outliers_mad(x = PE_CUT_G4_1, threshold = 2.5)
rPE_CUT_G4_1 <- data.frame("Removed_PE_CUT_G4_1" = PE_CUT_G4_1);
rPE_CUT_G4_1$Removed_PE_CUT_G4_1[PE_out_CUT_G4_1$outliers_pos] <- NA;
PE_CUT_G4_1 <- rPE_CUT_G4_1$Removed_PE_CUT_G4_1;
PE_out_CUT_H4_1 <- outliers_mad(x = PE_CUT_H4_1, threshold = 2.5)
rPE_CUT_H4_1 <- data.frame("Removed_PE_CUT_H4_1" = PE_CUT_H4_1);
rPE_CUT_H4_1$Removed_PE_CUT_H4_1[PE_out_CUT_H4_1$outliers_pos] <- NA;
PE_CUT_H4_1 <- rPE_CUT_H4_1$Removed_PE_CUT_H4_1;
PE_out_CUT_A5_1 <- outliers_mad(x = PE_CUT_A5_1, threshold = 2.5)
rPE_CUT_A5_1 <- data.frame("Removed_PE_CUT_A5_1" = PE_CUT_A5_1);
rPE_CUT_A5_1$Removed_PE_CUT_A5_1[PE_out_CUT_A5_1$outliers_pos] <- NA;
PE_CUT_A5_1 <- rPE_CUT_A5_1$Removed_PE_CUT_A5_1;
PE_out_CUT_B5_1 <- outliers_mad(x = PE_CUT_B5_1, threshold = 2.5)
rPE_CUT_B5_1 <- data.frame("Removed_PE_CUT_B5_1" = PE_CUT_B5_1);
rPE_CUT_B5_1$Removed_PE_CUT_B5_1[PE_out_CUT_B5_1$outliers_pos] <- NA;
PE_CUT_B5_1 <- rPE_CUT_B5_1$Removed_PE_CUT_B5_1;
PE_out_CUT_C5_1 <- outliers_mad(x = PE_CUT_C5_1, threshold = 2.5)
rPE_CUT_C5_1 <- data.frame("Removed_PE_CUT_C5_1" = PE_CUT_C5_1);
rPE_CUT_C5_1$Removed_PE_CUT_C5_1[PE_out_CUT_C5_1$outliers_pos] <- NA;
PE_CUT_C5_1 <- rPE_CUT_C5_1$Removed_PE_CUT_C5_1;
PE_out_CUT_D5_1 <- outliers_mad(x = PE_CUT_D5_1, threshold = 2.5)
rPE_CUT_D5_1 <- data.frame("Removed_PE_CUT_D5_1" = PE_CUT_D5_1);
rPE_CUT_D5_1$Removed_PE_CUT_D5_1[PE_out_CUT_D5_1$outliers_pos] <- NA;
PE_CUT_D5_1 <- rPE_CUT_D5_1$Removed_PE_CUT_D5_1;
PE_out_CUT_E5_1 <- outliers_mad(x = PE_CUT_E5_1, threshold = 2.5)
rPE_CUT_E5_1 <- data.frame("Removed_PE_CUT_E5_1" = PE_CUT_E5_1);
rPE_CUT_E5_1$Removed_PE_CUT_E5_1[PE_out_CUT_E5_1$outliers_pos] <- NA;
PE_CUT_E5_1 <- rPE_CUT_E5_1$Removed_PE_CUT_E5_1;
PE_out_CUT_F5_1 <- outliers_mad(x = PE_CUT_F5_1, threshold = 2.5)
rPE_CUT_F5_1 <- data.frame("Removed_PE_CUT_F5_1" = PE_CUT_F5_1);
rPE_CUT_F5_1$Removed_PE_CUT_F5_1[PE_out_CUT_F5_1$outliers_pos] <- NA;
PE_CUT_F5_1 <- rPE_CUT_F5_1$Removed_PE_CUT_F5_1;
PE_out_CUT_G5_1 <- outliers_mad(x = PE_CUT_G5_1, threshold = 2.5)
rPE_CUT_G5_1 <- data.frame("Removed_PE_CUT_G5_1" = PE_CUT_G5_1);
rPE_CUT_G5_1$Removed_PE_CUT_G5_1[PE_out_CUT_G5_1$outliers_pos] <- NA;
PE_CUT_G5_1 <- rPE_CUT_G5_1$Removed_PE_CUT_G5_1;
PE_out_CUT_H5_1 <- outliers_mad(x = PE_CUT_H5_1, threshold = 2.5)
rPE_CUT_H5_1 <- data.frame("Removed_PE_CUT_H5_1" = PE_CUT_H5_1);
rPE_CUT_H5_1$Removed_PE_CUT_H5_1[PE_out_CUT_H5_1$outliers_pos] <- NA;
PE_CUT_H5_1 <- rPE_CUT_H5_1$Removed_PE_CUT_H5_1;
PE_out_CUT_A6_1 <- outliers_mad(x = PE_CUT_A6_1, threshold = 2.5)
rPE_CUT_A6_1 <- data.frame("Removed_PE_CUT_A6_1" = PE_CUT_A6_1);
rPE_CUT_A6_1$Removed_PE_CUT_A6_1[PE_out_CUT_A6_1$outliers_pos] <- NA;
PE_CUT_A6_1 <- rPE_CUT_A6_1$Removed_PE_CUT_A6_1;
PE_out_CUT_B6_1 <- outliers_mad(x = PE_CUT_B6_1, threshold = 2.5)
rPE_CUT_B6_1 <- data.frame("Removed_PE_CUT_B6_1" = PE_CUT_B6_1);
rPE_CUT_B6_1$Removed_PE_CUT_B6_1[PE_out_CUT_B6_1$outliers_pos] <- NA;
PE_CUT_B6_1 <- rPE_CUT_B6_1$Removed_PE_CUT_B6_1;
PE_out_CUT_C6_1 <- outliers_mad(x = PE_CUT_C6_1, threshold = 2.5)
rPE_CUT_C6_1 <- data.frame("Removed_PE_CUT_C6_1" = PE_CUT_C6_1);
rPE_CUT_C6_1$Removed_PE_CUT_C6_1[PE_out_CUT_C6_1$outliers_pos] <- NA;
PE_CUT_C6_1 <- rPE_CUT_C6_1$Removed_PE_CUT_C6_1;
PE_out_CUT_D6_1 <- outliers_mad(x = PE_CUT_D6_1, threshold = 2.5)
rPE_CUT_D6_1 <- data.frame("Removed_PE_CUT_D6_1" = PE_CUT_D6_1);
rPE_CUT_D6_1$Removed_PE_CUT_D6_1[PE_out_CUT_D6_1$outliers_pos] <- NA;
PE_CUT_D6_1 <- rPE_CUT_D6_1$Removed_PE_CUT_D6_1;
PE_out_CUT_E6_1 <- outliers_mad(x = PE_CUT_E6_1, threshold = 2.5)
rPE_CUT_E6_1 <- data.frame("Removed_PE_CUT_E6_1" = PE_CUT_E6_1);
rPE_CUT_E6_1$Removed_PE_CUT_E6_1[PE_out_CUT_E6_1$outliers_pos] <- NA;
PE_CUT_E6_1 <- rPE_CUT_E6_1$Removed_PE_CUT_E6_1;
PE_out_CUT_F6_1 <- outliers_mad(x = PE_CUT_F6_1, threshold = 2.5)
rPE_CUT_F6_1 <- data.frame("Removed_PE_CUT_F6_1" = PE_CUT_F6_1);
rPE_CUT_F6_1$Removed_PE_CUT_F6_1[PE_out_CUT_F6_1$outliers_pos] <- NA;
PE_CUT_F6_1 <- rPE_CUT_F6_1$Removed_PE_CUT_F6_1;
PE_out_CUT_G6_1 <- outliers_mad(x = PE_CUT_G6_1, threshold = 2.5)
rPE_CUT_G6_1 <- data.frame("Removed_PE_CUT_G6_1" = PE_CUT_G6_1);
rPE_CUT_G6_1$Removed_PE_CUT_G6_1[PE_out_CUT_G6_1$outliers_pos] <- NA;
PE_CUT_G6_1 <- rPE_CUT_G6_1$Removed_PE_CUT_G6_1;
PE_out_CUT_H6_1 <- outliers_mad(x = PE_CUT_H6_1, threshold = 2.5)
rPE_CUT_H6_1 <- data.frame("Removed_PE_CUT_H6_1" = PE_CUT_H6_1);
rPE_CUT_H6_1$Removed_PE_CUT_H6_1[PE_out_CUT_H6_1$outliers_pos] <- NA;
PE_CUT_H6_1 <- rPE_CUT_H6_1$Removed_PE_CUT_H6_1;
PE_out_CUT_A7_1 <- outliers_mad(x = PE_CUT_A7_1, threshold = 2.5)
rPE_CUT_A7_1 <- data.frame("Removed_PE_CUT_A7_1" = PE_CUT_A7_1);
rPE_CUT_A7_1$Removed_PE_CUT_A7_1[PE_out_CUT_A7_1$outliers_pos] <- NA;
PE_CUT_A7_1 <- rPE_CUT_A7_1$Removed_PE_CUT_A7_1;
PE_out_CUT_B7_1 <- outliers_mad(x = PE_CUT_B7_1, threshold = 2.5)
rPE_CUT_B7_1 <- data.frame("Removed_PE_CUT_B7_1" = PE_CUT_B7_1);
rPE_CUT_B7_1$Removed_PE_CUT_B7_1[PE_out_CUT_B7_1$outliers_pos] <- NA;
PE_CUT_B7_1 <- rPE_CUT_B7_1$Removed_PE_CUT_B7_1;
PE_out_CUT_C7_1 <- outliers_mad(x = PE_CUT_C7_1, threshold = 2.5)
rPE_CUT_C7_1 <- data.frame("Removed_PE_CUT_C7_1" = PE_CUT_C7_1);
rPE_CUT_C7_1$Removed_PE_CUT_C7_1[PE_out_CUT_C7_1$outliers_pos] <- NA;
PE_CUT_C7_1 <- rPE_CUT_C7_1$Removed_PE_CUT_C7_1;
PE_out_CUT_D7_1 <- outliers_mad(x = PE_CUT_D7_1, threshold = 2.5)
rPE_CUT_D7_1 <- data.frame("Removed_PE_CUT_D7_1" = PE_CUT_D7_1);
rPE_CUT_D7_1$Removed_PE_CUT_D7_1[PE_out_CUT_D7_1$outliers_pos] <- NA;
PE_CUT_D7_1 <- rPE_CUT_D7_1$Removed_PE_CUT_D7_1;
PE_out_CUT_E7_1 <- outliers_mad(x = PE_CUT_E7_1, threshold = 2.5)
rPE_CUT_E7_1 <- data.frame("Removed_PE_CUT_E7_1" = PE_CUT_E7_1);
rPE_CUT_E7_1$Removed_PE_CUT_E7_1[PE_out_CUT_E7_1$outliers_pos] <- NA;
PE_CUT_E7_1 <- rPE_CUT_E7_1$Removed_PE_CUT_E7_1;
PE_out_CUT_F7_1 <- outliers_mad(x = PE_CUT_F7_1, threshold = 2.5)
rPE_CUT_F7_1 <- data.frame("Removed_PE_CUT_F7_1" = PE_CUT_F7_1);
rPE_CUT_F7_1$Removed_PE_CUT_F7_1[PE_out_CUT_F7_1$outliers_pos] <- NA;
PE_CUT_F7_1 <- rPE_CUT_F7_1$Removed_PE_CUT_F7_1;
PE_out_CUT_G7_1 <- outliers_mad(x = PE_CUT_G7_1, threshold = 2.5)
rPE_CUT_G7_1 <- data.frame("Removed_PE_CUT_G7_1" = PE_CUT_G7_1);
rPE_CUT_G7_1$Removed_PE_CUT_G7_1[PE_out_CUT_G7_1$outliers_pos] <- NA;
PE_CUT_G7_1 <- rPE_CUT_G7_1$Removed_PE_CUT_G7_1;
PE_out_CUT_H7_1 <- outliers_mad(x = PE_CUT_H7_1, threshold = 2.5)
rPE_CUT_H7_1 <- data.frame("Removed_PE_CUT_H7_1" = PE_CUT_H7_1);
rPE_CUT_H7_1$Removed_PE_CUT_H7_1[PE_out_CUT_H7_1$outliers_pos] <- NA;
PE_CUT_H7_1 <- rPE_CUT_H7_1$Removed_PE_CUT_H7_1;
PE_out_CUT_A8_1 <- outliers_mad(x = PE_CUT_A8_1, threshold = 2.5)
rPE_CUT_A8_1 <- data.frame("Removed_PE_CUT_A8_1" = PE_CUT_A8_1);
rPE_CUT_A8_1$Removed_PE_CUT_A8_1[PE_out_CUT_A8_1$outliers_pos] <- NA;
PE_CUT_A8_1 <- rPE_CUT_A8_1$Removed_PE_CUT_A8_1;
PE_out_CUT_B8_1 <- outliers_mad(x = PE_CUT_B8_1, threshold = 2.5)
rPE_CUT_B8_1 <- data.frame("Removed_PE_CUT_B8_1" = PE_CUT_B8_1);
rPE_CUT_B8_1$Removed_PE_CUT_B8_1[PE_out_CUT_B8_1$outliers_pos] <- NA;
PE_CUT_B8_1 <- rPE_CUT_B8_1$Removed_PE_CUT_B8_1;
PE_out_CUT_C8_1 <- outliers_mad(x = PE_CUT_C8_1, threshold = 2.5)
rPE_CUT_C8_1 <- data.frame("Removed_PE_CUT_C8_1" = PE_CUT_C8_1);
rPE_CUT_C8_1$Removed_PE_CUT_C8_1[PE_out_CUT_C8_1$outliers_pos] <- NA;
PE_CUT_C8_1 <- rPE_CUT_C8_1$Removed_PE_CUT_C8_1;
PE_out_CUT_D8_1 <- outliers_mad(x = PE_CUT_D8_1, threshold = 2.5)
rPE_CUT_D8_1 <- data.frame("Removed_PE_CUT_D8_1" = PE_CUT_D8_1);
rPE_CUT_D8_1$Removed_PE_CUT_D8_1[PE_out_CUT_D8_1$outliers_pos] <- NA;
PE_CUT_D8_1 <- rPE_CUT_D8_1$Removed_PE_CUT_D8_1;
PE_out_CUT_E8_1 <- outliers_mad(x = PE_CUT_E8_1, threshold = 2.5)
rPE_CUT_E8_1 <- data.frame("Removed_PE_CUT_E8_1" = PE_CUT_E8_1);
rPE_CUT_E8_1$Removed_PE_CUT_E8_1[PE_out_CUT_E8_1$outliers_pos] <- NA;
PE_CUT_E8_1 <- rPE_CUT_E8_1$Removed_PE_CUT_E8_1;
PE_out_CUT_F8_1 <- outliers_mad(x = PE_CUT_F8_1, threshold = 2.5)
rPE_CUT_F8_1 <- data.frame("Removed_PE_CUT_F8_1" = PE_CUT_F8_1);
rPE_CUT_F8_1$Removed_PE_CUT_F8_1[PE_out_CUT_F8_1$outliers_pos] <- NA;
PE_CUT_F8_1 <- rPE_CUT_F8_1$Removed_PE_CUT_F8_1;
PE_out_CUT_G8_1 <- outliers_mad(x = PE_CUT_G8_1, threshold = 2.5)
rPE_CUT_G8_1 <- data.frame("Removed_PE_CUT_G8_1" = PE_CUT_G8_1);
rPE_CUT_G8_1$Removed_PE_CUT_G8_1[PE_out_CUT_G8_1$outliers_pos] <- NA;
PE_CUT_G8_1 <- rPE_CUT_G8_1$Removed_PE_CUT_G8_1;
PE_out_CUT_H8_1 <- outliers_mad(x = PE_CUT_H8_1, threshold = 2.5)
rPE_CUT_H8_1 <- data.frame("Removed_PE_CUT_H8_1" = PE_CUT_H8_1);
rPE_CUT_H8_1$Removed_PE_CUT_H8_1[PE_out_CUT_H8_1$outliers_pos] <- NA;
PE_CUT_H8_1 <- rPE_CUT_H8_1$Removed_PE_CUT_H8_1;
PE_out_CUT_A9_1 <- outliers_mad(x = PE_CUT_A9_1, threshold = 2.5)
rPE_CUT_A9_1 <- data.frame("Removed_PE_CUT_A9_1" = PE_CUT_A9_1);
rPE_CUT_A9_1$Removed_PE_CUT_A9_1[PE_out_CUT_A9_1$outliers_pos] <- NA;
PE_CUT_A9_1 <- rPE_CUT_A9_1$Removed_PE_CUT_A9_1;
PE_out_CUT_B9_1 <- outliers_mad(x = PE_CUT_B9_1, threshold = 2.5)
rPE_CUT_B9_1 <- data.frame("Removed_PE_CUT_B9_1" = PE_CUT_B9_1);
rPE_CUT_B9_1$Removed_PE_CUT_B9_1[PE_out_CUT_B9_1$outliers_pos] <- NA;
PE_CUT_B9_1 <- rPE_CUT_B9_1$Removed_PE_CUT_B9_1;
PE_out_CUT_C9_1 <- outliers_mad(x = PE_CUT_C9_1, threshold = 2.5)
rPE_CUT_C9_1 <- data.frame("Removed_PE_CUT_C9_1" = PE_CUT_C9_1);
rPE_CUT_C9_1$Removed_PE_CUT_C9_1[PE_out_CUT_C9_1$outliers_pos] <- NA;
PE_CUT_C9_1 <- rPE_CUT_C9_1$Removed_PE_CUT_C9_1;
PE_out_CUT_D9_1 <- outliers_mad(x = PE_CUT_D9_1, threshold = 2.5)
rPE_CUT_D9_1 <- data.frame("Removed_PE_CUT_D9_1" = PE_CUT_D9_1);
rPE_CUT_D9_1$Removed_PE_CUT_D9_1[PE_out_CUT_D9_1$outliers_pos] <- NA;
PE_CUT_D9_1 <- rPE_CUT_D9_1$Removed_PE_CUT_D9_1;
PE_out_CUT_E9_1 <- outliers_mad(x = PE_CUT_E9_1, threshold = 2.5)
rPE_CUT_E9_1 <- data.frame("Removed_PE_CUT_E9_1" = PE_CUT_E9_1);
rPE_CUT_E9_1$Removed_PE_CUT_E9_1[PE_out_CUT_E9_1$outliers_pos] <- NA;
PE_CUT_E9_1 <- rPE_CUT_E9_1$Removed_PE_CUT_E9_1;
PE_out_CUT_F9_1 <- outliers_mad(x = PE_CUT_F9_1, threshold = 2.5)
rPE_CUT_F9_1 <- data.frame("Removed_PE_CUT_F9_1" = PE_CUT_F9_1);
rPE_CUT_F9_1$Removed_PE_CUT_F9_1[PE_out_CUT_F9_1$outliers_pos] <- NA;
PE_CUT_F9_1 <- rPE_CUT_F9_1$Removed_PE_CUT_F9_1;
PE_out_CUT_G9_1 <- outliers_mad(x = PE_CUT_G9_1, threshold = 2.5)
rPE_CUT_G9_1 <- data.frame("Removed_PE_CUT_G9_1" = PE_CUT_G9_1);
rPE_CUT_G9_1$Removed_PE_CUT_G9_1[PE_out_CUT_G9_1$outliers_pos] <- NA;
PE_CUT_G9_1 <- rPE_CUT_G9_1$Removed_PE_CUT_G9_1;
PE_out_CUT_H9_1 <- outliers_mad(x = PE_CUT_H9_1, threshold = 2.5)
rPE_CUT_H9_1 <- data.frame("Removed_PE_CUT_H9_1" = PE_CUT_H9_1);
rPE_CUT_H9_1$Removed_PE_CUT_H9_1[PE_out_CUT_H9_1$outliers_pos] <- NA;
PE_CUT_H9_1 <- rPE_CUT_H9_1$Removed_PE_CUT_H9_1;
PE_out_CUT_A10_1 <- outliers_mad(x = PE_CUT_A10_1, threshold = 2.5)
rPE_CUT_A10_1 <- data.frame("Removed_PE_CUT_A10_1" = PE_CUT_A10_1);
rPE_CUT_A10_1$Removed_PE_CUT_A10_1[PE_out_CUT_A10_1$outliers_pos] <- NA;
PE_CUT_A10_1 <- rPE_CUT_A10_1$Removed_PE_CUT_A10_1;
PE_out_CUT_B10_1 <- outliers_mad(x = PE_CUT_B10_1, threshold = 2.5)
rPE_CUT_B10_1 <- data.frame("Removed_PE_CUT_B10_1" = PE_CUT_B10_1);
rPE_CUT_B10_1$Removed_PE_CUT_B10_1[PE_out_CUT_B10_1$outliers_pos] <- NA;
PE_CUT_B10_1 <- rPE_CUT_B10_1$Removed_PE_CUT_B10_1;
PE_out_CUT_C10_1 <- outliers_mad(x = PE_CUT_C10_1, threshold = 2.5)
rPE_CUT_C10_1 <- data.frame("Removed_PE_CUT_C10_1" = PE_CUT_C10_1);
rPE_CUT_C10_1$Removed_PE_CUT_C10_1[PE_out_CUT_C10_1$outliers_pos] <- NA;
PE_CUT_C10_1 <- rPE_CUT_C10_1$Removed_PE_CUT_C10_1;
PE_out_CUT_D10_1 <- outliers_mad(x = PE_CUT_D10_1, threshold = 2.5)
rPE_CUT_D10_1 <- data.frame("Removed_PE_CUT_D10_1" = PE_CUT_D10_1);
rPE_CUT_D10_1$Removed_PE_CUT_D10_1[PE_out_CUT_D10_1$outliers_pos] <- NA;
PE_CUT_D10_1 <- rPE_CUT_D10_1$Removed_PE_CUT_D10_1;
PE_out_CUT_E10_1 <- outliers_mad(x = PE_CUT_E10_1, threshold = 2.5)
rPE_CUT_E10_1 <- data.frame("Removed_PE_CUT_E10_1" = PE_CUT_E10_1);
rPE_CUT_E10_1$Removed_PE_CUT_E10_1[PE_out_CUT_E10_1$outliers_pos] <- NA;
PE_CUT_E10_1 <- rPE_CUT_E10_1$Removed_PE_CUT_E10_1;
PE_out_CUT_F10_1 <- outliers_mad(x = PE_CUT_F10_1, threshold = 2.5)
rPE_CUT_F10_1 <- data.frame("Removed_PE_CUT_F10_1" = PE_CUT_F10_1);
rPE_CUT_F10_1$Removed_PE_CUT_F10_1[PE_out_CUT_F10_1$outliers_pos] <- NA;
PE_CUT_F10_1 <- rPE_CUT_F10_1$Removed_PE_CUT_F10_1;
PE_out_CUT_G10_1 <- outliers_mad(x = PE_CUT_G10_1, threshold = 2.5)
rPE_CUT_G10_1 <- data.frame("Removed_PE_CUT_G10_1" = PE_CUT_G10_1);
rPE_CUT_G10_1$Removed_PE_CUT_G10_1[PE_out_CUT_G10_1$outliers_pos] <- NA;
PE_CUT_G10_1 <- rPE_CUT_G10_1$Removed_PE_CUT_G10_1;
PE_out_CUT_H10_1 <- outliers_mad(x = PE_CUT_H10_1, threshold = 2.5)
rPE_CUT_H10_1 <- data.frame("Removed_PE_CUT_H10_1" = PE_CUT_H10_1);
rPE_CUT_H10_1$Removed_PE_CUT_H10_1[PE_out_CUT_H10_1$outliers_pos] <- NA;
PE_CUT_H10_1 <- rPE_CUT_H10_1$Removed_PE_CUT_H10_1;
PE_out_CUT_A11_1 <- outliers_mad(x = PE_CUT_A11_1, threshold = 2.5)
rPE_CUT_A11_1 <- data.frame("Removed_PE_CUT_A11_1" = PE_CUT_A11_1);
rPE_CUT_A11_1$Removed_PE_CUT_A11_1[PE_out_CUT_A11_1$outliers_pos] <- NA;
PE_CUT_A11_1 <- rPE_CUT_A11_1$Removed_PE_CUT_A11_1;
PE_out_CUT_B11_1 <- outliers_mad(x = PE_CUT_B11_1, threshold = 2.5)
rPE_CUT_B11_1 <- data.frame("Removed_PE_CUT_B11_1" = PE_CUT_B11_1);
rPE_CUT_B11_1$Removed_PE_CUT_B11_1[PE_out_CUT_B11_1$outliers_pos] <- NA;
PE_CUT_B11_1 <- rPE_CUT_B11_1$Removed_PE_CUT_B11_1;
PE_out_CUT_C11_1 <- outliers_mad(x = PE_CUT_C11_1, threshold = 2.5)
rPE_CUT_C11_1 <- data.frame("Removed_PE_CUT_C11_1" = PE_CUT_C11_1);
rPE_CUT_C11_1$Removed_PE_CUT_C11_1[PE_out_CUT_C11_1$outliers_pos] <- NA;
PE_CUT_C11_1 <- rPE_CUT_C11_1$Removed_PE_CUT_C11_1;
PE_out_CUT_D11_1 <- outliers_mad(x = PE_CUT_D11_1, threshold = 2.5)
rPE_CUT_D11_1 <- data.frame("Removed_PE_CUT_D11_1" = PE_CUT_D11_1);
rPE_CUT_D11_1$Removed_PE_CUT_D11_1[PE_out_CUT_D11_1$outliers_pos] <- NA;
PE_CUT_D11_1 <- rPE_CUT_D11_1$Removed_PE_CUT_D11_1;
PE_out_CUT_E11_1 <- outliers_mad(x = PE_CUT_E11_1, threshold = 2.5)
rPE_CUT_E11_1 <- data.frame("Removed_PE_CUT_E11_1" = PE_CUT_E11_1);
rPE_CUT_E11_1$Removed_PE_CUT_E11_1[PE_out_CUT_E11_1$outliers_pos] <- NA;
PE_CUT_E11_1 <- rPE_CUT_E11_1$Removed_PE_CUT_E11_1;
PE_out_CUT_F11_1 <- outliers_mad(x = PE_CUT_F11_1, threshold = 2.5)
rPE_CUT_F11_1 <- data.frame("Removed_PE_CUT_F11_1" = PE_CUT_F11_1);
rPE_CUT_F11_1$Removed_PE_CUT_F11_1[PE_out_CUT_F11_1$outliers_pos] <- NA;
PE_CUT_F11_1 <- rPE_CUT_F11_1$Removed_PE_CUT_F11_1;
PE_out_CUT_G11_1 <- outliers_mad(x = PE_CUT_G11_1, threshold = 2.5)
rPE_CUT_G11_1 <- data.frame("Removed_PE_CUT_G11_1" = PE_CUT_G11_1);
rPE_CUT_G11_1$Removed_PE_CUT_G11_1[PE_out_CUT_G11_1$outliers_pos] <- NA;
PE_CUT_G11_1 <- rPE_CUT_G11_1$Removed_PE_CUT_G11_1;
PE_out_CUT_H11_1 <- outliers_mad(x = PE_CUT_H11_1, threshold = 2.5)
rPE_CUT_H11_1 <- data.frame("Removed_PE_CUT_H11_1" = PE_CUT_H11_1);
rPE_CUT_H11_1$Removed_PE_CUT_H11_1[PE_out_CUT_H11_1$outliers_pos] <- NA;
PE_CUT_H11_1 <- rPE_CUT_H11_1$Removed_PE_CUT_H11_1;
PE_out_CUT_A12_1 <- outliers_mad(x = PE_CUT_A12_1, threshold = 2.5)
rPE_CUT_A12_1 <- data.frame("Removed_PE_CUT_A12_1" = PE_CUT_A12_1);
rPE_CUT_A12_1$Removed_PE_CUT_A12_1[PE_out_CUT_A12_1$outliers_pos] <- NA;
PE_CUT_A12_1 <- rPE_CUT_A12_1$Removed_PE_CUT_A12_1;
PE_out_CUT_B12_1 <- outliers_mad(x = PE_CUT_B12_1, threshold = 2.5)
rPE_CUT_B12_1 <- data.frame("Removed_PE_CUT_B12_1" = PE_CUT_B12_1);
rPE_CUT_B12_1$Removed_PE_CUT_B12_1[PE_out_CUT_B12_1$outliers_pos] <- NA;
PE_CUT_B12_1 <- rPE_CUT_B12_1$Removed_PE_CUT_B12_1;
PE_out_CUT_C12_1 <- outliers_mad(x = PE_CUT_C12_1, threshold = 2.5)
rPE_CUT_C12_1 <- data.frame("Removed_PE_CUT_C12_1" = PE_CUT_C12_1);
rPE_CUT_C12_1$Removed_PE_CUT_C12_1[PE_out_CUT_C12_1$outliers_pos] <- NA;
PE_CUT_C12_1 <- rPE_CUT_C12_1$Removed_PE_CUT_C12_1;
PE_out_CUT_D12_1 <- outliers_mad(x = PE_CUT_D12_1, threshold = 2.5)
rPE_CUT_D12_1 <- data.frame("Removed_PE_CUT_D12_1" = PE_CUT_D12_1);
rPE_CUT_D12_1$Removed_PE_CUT_D12_1[PE_out_CUT_D12_1$outliers_pos] <- NA;
PE_CUT_D12_1 <- rPE_CUT_D12_1$Removed_PE_CUT_D12_1;
PE_out_CUT_E12_1 <- outliers_mad(x = PE_CUT_E12_1, threshold = 2.5)
rPE_CUT_E12_1 <- data.frame("Removed_PE_CUT_E12_1" = PE_CUT_E12_1);
rPE_CUT_E12_1$Removed_PE_CUT_E12_1[PE_out_CUT_E12_1$outliers_pos] <- NA;
PE_CUT_E12_1 <- rPE_CUT_E12_1$Removed_PE_CUT_E12_1;
PE_out_CUT_F12_1 <- outliers_mad(x = PE_CUT_F12_1, threshold = 2.5)
rPE_CUT_F12_1 <- data.frame("Removed_PE_CUT_F12_1" = PE_CUT_F12_1);
rPE_CUT_F12_1$Removed_PE_CUT_F12_1[PE_out_CUT_F12_1$outliers_pos] <- NA;
PE_CUT_F12_1 <- rPE_CUT_F12_1$Removed_PE_CUT_F12_1;
PE_out_CUT_G12_1 <- outliers_mad(x = PE_CUT_G12_1, threshold = 2.5)
rPE_CUT_G12_1 <- data.frame("Removed_PE_CUT_G12_1" = PE_CUT_G12_1);
rPE_CUT_G12_1$Removed_PE_CUT_G12_1[PE_out_CUT_G12_1$outliers_pos] <- NA;
PE_CUT_G12_1 <- rPE_CUT_G12_1$Removed_PE_CUT_G12_1;
PE_out_CUT_H12_1 <- outliers_mad(x = PE_CUT_H12_1, threshold = 2.5)
rPE_CUT_H12_1 <- data.frame("Removed_PE_CUT_H12_1" = PE_CUT_H12_1);
rPE_CUT_H12_1$Removed_PE_CUT_H12_1[PE_out_CUT_H12_1$outliers_pos] <- NA;
PE_CUT_H12_1 <- rPE_CUT_H12_1$Removed_PE_CUT_H12_1;
PE_out_CUT_A1_2 <- outliers_mad(x = PE_CUT_A1_2, threshold = 2.5)
rPE_CUT_A1_2 <- data.frame("Removed_PE_CUT_A1_2" = PE_CUT_A1_2);
rPE_CUT_A1_2$Removed_PE_CUT_A1_2[PE_out_CUT_A1_2$outliers_pos] <- NA;
PE_CUT_A1_2 <- rPE_CUT_A1_2$Removed_PE_CUT_A1_2;
PE_out_CUT_B1_2 <- outliers_mad(x = PE_CUT_B1_2, threshold = 2.5)
rPE_CUT_B1_2 <- data.frame("Removed_PE_CUT_B1_2" = PE_CUT_B1_2);
rPE_CUT_B1_2$Removed_PE_CUT_B1_2[PE_out_CUT_B1_2$outliers_pos] <- NA;
PE_CUT_B1_2 <- rPE_CUT_B1_2$Removed_PE_CUT_B1_2;
PE_out_CUT_C1_2 <- outliers_mad(x = PE_CUT_C1_2, threshold = 2.5)
rPE_CUT_C1_2 <- data.frame("Removed_PE_CUT_C1_2" = PE_CUT_C1_2);
rPE_CUT_C1_2$Removed_PE_CUT_C1_2[PE_out_CUT_C1_2$outliers_pos] <- NA;
PE_CUT_C1_2 <- rPE_CUT_C1_2$Removed_PE_CUT_C1_2;
PE_out_CUT_D1_2 <- outliers_mad(x = PE_CUT_D1_2, threshold = 2.5)
rPE_CUT_D1_2 <- data.frame("Removed_PE_CUT_D1_2" = PE_CUT_D1_2);
rPE_CUT_D1_2$Removed_PE_CUT_D1_2[PE_out_CUT_D1_2$outliers_pos] <- NA;
PE_CUT_D1_2 <- rPE_CUT_D1_2$Removed_PE_CUT_D1_2;
PE_out_CUT_E1_2 <- outliers_mad(x = PE_CUT_E1_2, threshold = 2.5)
rPE_CUT_E1_2 <- data.frame("Removed_PE_CUT_E1_2" = PE_CUT_E1_2);
rPE_CUT_E1_2$Removed_PE_CUT_E1_2[PE_out_CUT_E1_2$outliers_pos] <- NA;
PE_CUT_E1_2 <- rPE_CUT_E1_2$Removed_PE_CUT_E1_2;
PE_out_CUT_F1_2 <- outliers_mad(x = PE_CUT_F1_2, threshold = 2.5)
rPE_CUT_F1_2 <- data.frame("Removed_PE_CUT_F1_2" = PE_CUT_F1_2);
rPE_CUT_F1_2$Removed_PE_CUT_F1_2[PE_out_CUT_F1_2$outliers_pos] <- NA;
PE_CUT_F1_2 <- rPE_CUT_F1_2$Removed_PE_CUT_F1_2;
PE_out_CUT_G1_2 <- outliers_mad(x = PE_CUT_G1_2, threshold = 2.5)
rPE_CUT_G1_2 <- data.frame("Removed_PE_CUT_G1_2" = PE_CUT_G1_2);
rPE_CUT_G1_2$Removed_PE_CUT_G1_2[PE_out_CUT_G1_2$outliers_pos] <- NA;
PE_CUT_G1_2 <- rPE_CUT_G1_2$Removed_PE_CUT_G1_2;
PE_out_CUT_H1_2 <- outliers_mad(x = PE_CUT_H1_2, threshold = 2.5)
rPE_CUT_H1_2 <- data.frame("Removed_PE_CUT_H1_2" = PE_CUT_H1_2);
rPE_CUT_H1_2$Removed_PE_CUT_H1_2[PE_out_CUT_H1_2$outliers_pos] <- NA;
PE_CUT_H1_2 <- rPE_CUT_H1_2$Removed_PE_CUT_H1_2;
PE_out_CUT_A2_2 <- outliers_mad(x = PE_CUT_A2_2, threshold = 2.5)
rPE_CUT_A2_2 <- data.frame("Removed_PE_CUT_A2_2" = PE_CUT_A2_2);
rPE_CUT_A2_2$Removed_PE_CUT_A2_2[PE_out_CUT_A2_2$outliers_pos] <- NA;
PE_CUT_A2_2 <- rPE_CUT_A2_2$Removed_PE_CUT_A2_2;
PE_out_CUT_B2_2 <- outliers_mad(x = PE_CUT_B2_2, threshold = 2.5)
rPE_CUT_B2_2 <- data.frame("Removed_PE_CUT_B2_2" = PE_CUT_B2_2);
rPE_CUT_B2_2$Removed_PE_CUT_B2_2[PE_out_CUT_B2_2$outliers_pos] <- NA;
PE_CUT_B2_2 <- rPE_CUT_B2_2$Removed_PE_CUT_B2_2;
PE_out_CUT_C2_2 <- outliers_mad(x = PE_CUT_C2_2, threshold = 2.5)
rPE_CUT_C2_2 <- data.frame("Removed_PE_CUT_C2_2" = PE_CUT_C2_2);
rPE_CUT_C2_2$Removed_PE_CUT_C2_2[PE_out_CUT_C2_2$outliers_pos] <- NA;
PE_CUT_C2_2 <- rPE_CUT_C2_2$Removed_PE_CUT_C2_2;
PE_out_CUT_D2_2 <- outliers_mad(x = PE_CUT_D2_2, threshold = 2.5)
rPE_CUT_D2_2 <- data.frame("Removed_PE_CUT_D2_2" = PE_CUT_D2_2);
rPE_CUT_D2_2$Removed_PE_CUT_D2_2[PE_out_CUT_D2_2$outliers_pos] <- NA;
PE_CUT_D2_2 <- rPE_CUT_D2_2$Removed_PE_CUT_D2_2;
PE_out_CUT_E2_2 <- outliers_mad(x = PE_CUT_E2_2, threshold = 2.5)
rPE_CUT_E2_2 <- data.frame("Removed_PE_CUT_E2_2" = PE_CUT_E2_2);
rPE_CUT_E2_2$Removed_PE_CUT_E2_2[PE_out_CUT_E2_2$outliers_pos] <- NA;
PE_CUT_E2_2 <- rPE_CUT_E2_2$Removed_PE_CUT_E2_2;
PE_out_CUT_F2_2 <- outliers_mad(x = PE_CUT_F2_2, threshold = 2.5)
rPE_CUT_F2_2 <- data.frame("Removed_PE_CUT_F2_2" = PE_CUT_F2_2);
rPE_CUT_F2_2$Removed_PE_CUT_F2_2[PE_out_CUT_F2_2$outliers_pos] <- NA;
PE_CUT_F2_2 <- rPE_CUT_F2_2$Removed_PE_CUT_F2_2;
PE_out_CUT_G2_2 <- outliers_mad(x = PE_CUT_G2_2, threshold = 2.5)
rPE_CUT_G2_2 <- data.frame("Removed_PE_CUT_G2_2" = PE_CUT_G2_2);
rPE_CUT_G2_2$Removed_PE_CUT_G2_2[PE_out_CUT_G2_2$outliers_pos] <- NA;
PE_CUT_G2_2 <- rPE_CUT_G2_2$Removed_PE_CUT_G2_2;
PE_out_CUT_H2_2 <- outliers_mad(x = PE_CUT_H2_2, threshold = 2.5)
rPE_CUT_H2_2 <- data.frame("Removed_PE_CUT_H2_2" = PE_CUT_H2_2);
rPE_CUT_H2_2$Removed_PE_CUT_H2_2[PE_out_CUT_H2_2$outliers_pos] <- NA;
PE_CUT_H2_2 <- rPE_CUT_H2_2$Removed_PE_CUT_H2_2;
PE_out_CUT_A3_2 <- outliers_mad(x = PE_CUT_A3_2, threshold = 2.5)
rPE_CUT_A3_2 <- data.frame("Removed_PE_CUT_A3_2" = PE_CUT_A3_2);
rPE_CUT_A3_2$Removed_PE_CUT_A3_2[PE_out_CUT_A3_2$outliers_pos] <- NA;
PE_CUT_A3_2 <- rPE_CUT_A3_2$Removed_PE_CUT_A3_2;
PE_out_CUT_B3_2 <- outliers_mad(x = PE_CUT_B3_2, threshold = 2.5)
rPE_CUT_B3_2 <- data.frame("Removed_PE_CUT_B3_2" = PE_CUT_B3_2);
rPE_CUT_B3_2$Removed_PE_CUT_B3_2[PE_out_CUT_B3_2$outliers_pos] <- NA;
PE_CUT_B3_2 <- rPE_CUT_B3_2$Removed_PE_CUT_B3_2;
PE_out_CUT_C3_2 <- outliers_mad(x = PE_CUT_C3_2, threshold = 2.5)
rPE_CUT_C3_2 <- data.frame("Removed_PE_CUT_C3_2" = PE_CUT_C3_2);
rPE_CUT_C3_2$Removed_PE_CUT_C3_2[PE_out_CUT_C3_2$outliers_pos] <- NA;
PE_CUT_C3_2 <- rPE_CUT_C3_2$Removed_PE_CUT_C3_2;
PE_out_CUT_D3_2 <- outliers_mad(x = PE_CUT_D3_2, threshold = 2.5)
rPE_CUT_D3_2 <- data.frame("Removed_PE_CUT_D3_2" = PE_CUT_D3_2);
rPE_CUT_D3_2$Removed_PE_CUT_D3_2[PE_out_CUT_D3_2$outliers_pos] <- NA;
PE_CUT_D3_2 <- rPE_CUT_D3_2$Removed_PE_CUT_D3_2;
PE_out_CUT_E3_2 <- outliers_mad(x = PE_CUT_E3_2, threshold = 2.5)
rPE_CUT_E3_2 <- data.frame("Removed_PE_CUT_E3_2" = PE_CUT_E3_2);
rPE_CUT_E3_2$Removed_PE_CUT_E3_2[PE_out_CUT_E3_2$outliers_pos] <- NA;
PE_CUT_E3_2 <- rPE_CUT_E3_2$Removed_PE_CUT_E3_2;
PE_out_CUT_F3_2 <- outliers_mad(x = PE_CUT_F3_2, threshold = 2.5)
rPE_CUT_F3_2 <- data.frame("Removed_PE_CUT_F3_2" = PE_CUT_F3_2);
rPE_CUT_F3_2$Removed_PE_CUT_F3_2[PE_out_CUT_F3_2$outliers_pos] <- NA;
PE_CUT_F3_2 <- rPE_CUT_F3_2$Removed_PE_CUT_F3_2;
PE_out_CUT_G3_2 <- outliers_mad(x = PE_CUT_G3_2, threshold = 2.5)
rPE_CUT_G3_2 <- data.frame("Removed_PE_CUT_G3_2" = PE_CUT_G3_2);
rPE_CUT_G3_2$Removed_PE_CUT_G3_2[PE_out_CUT_G3_2$outliers_pos] <- NA;
PE_CUT_G3_2 <- rPE_CUT_G3_2$Removed_PE_CUT_G3_2;
PE_out_CUT_H3_2 <- outliers_mad(x = PE_CUT_H3_2, threshold = 2.5)
rPE_CUT_H3_2 <- data.frame("Removed_PE_CUT_H3_2" = PE_CUT_H3_2);
rPE_CUT_H3_2$Removed_PE_CUT_H3_2[PE_out_CUT_H3_2$outliers_pos] <- NA;
PE_CUT_H3_2 <- rPE_CUT_H3_2$Removed_PE_CUT_H3_2;
PE_out_CUT_A4_2 <- outliers_mad(x = PE_CUT_A4_2, threshold = 2.5)
rPE_CUT_A4_2 <- data.frame("Removed_PE_CUT_A4_2" = PE_CUT_A4_2);
rPE_CUT_A4_2$Removed_PE_CUT_A4_2[PE_out_CUT_A4_2$outliers_pos] <- NA;
PE_CUT_A4_2 <- rPE_CUT_A4_2$Removed_PE_CUT_A4_2;
PE_out_CUT_B4_2 <- outliers_mad(x = PE_CUT_B4_2, threshold = 2.5)
rPE_CUT_B4_2 <- data.frame("Removed_PE_CUT_B4_2" = PE_CUT_B4_2);
rPE_CUT_B4_2$Removed_PE_CUT_B4_2[PE_out_CUT_B4_2$outliers_pos] <- NA;
PE_CUT_B4_2 <- rPE_CUT_B4_2$Removed_PE_CUT_B4_2;
PE_out_CUT_C4_2 <- outliers_mad(x = PE_CUT_C4_2, threshold = 2.5)
rPE_CUT_C4_2 <- data.frame("Removed_PE_CUT_C4_2" = PE_CUT_C4_2);
rPE_CUT_C4_2$Removed_PE_CUT_C4_2[PE_out_CUT_C4_2$outliers_pos] <- NA;
PE_CUT_C4_2 <- rPE_CUT_C4_2$Removed_PE_CUT_C4_2;
PE_out_CUT_D4_2 <- outliers_mad(x = PE_CUT_D4_2, threshold = 2.5)
rPE_CUT_D4_2 <- data.frame("Removed_PE_CUT_D4_2" = PE_CUT_D4_2);
rPE_CUT_D4_2$Removed_PE_CUT_D4_2[PE_out_CUT_D4_2$outliers_pos] <- NA;
PE_CUT_D4_2 <- rPE_CUT_D4_2$Removed_PE_CUT_D4_2;
PE_out_CUT_E4_2 <- outliers_mad(x = PE_CUT_E4_2, threshold = 2.5)
rPE_CUT_E4_2 <- data.frame("Removed_PE_CUT_E4_2" = PE_CUT_E4_2);
rPE_CUT_E4_2$Removed_PE_CUT_E4_2[PE_out_CUT_E4_2$outliers_pos] <- NA;
PE_CUT_E4_2 <- rPE_CUT_E4_2$Removed_PE_CUT_E4_2;
PE_out_CUT_F4_2 <- outliers_mad(x = PE_CUT_F4_2, threshold = 2.5)
rPE_CUT_F4_2 <- data.frame("Removed_PE_CUT_F4_2" = PE_CUT_F4_2);
rPE_CUT_F4_2$Removed_PE_CUT_F4_2[PE_out_CUT_F4_2$outliers_pos] <- NA;
PE_CUT_F4_2 <- rPE_CUT_F4_2$Removed_PE_CUT_F4_2;
PE_out_CUT_G4_2 <- outliers_mad(x = PE_CUT_G4_2, threshold = 2.5)
rPE_CUT_G4_2 <- data.frame("Removed_PE_CUT_G4_2" = PE_CUT_G4_2);
rPE_CUT_G4_2$Removed_PE_CUT_G4_2[PE_out_CUT_G4_2$outliers_pos] <- NA;
PE_CUT_G4_2 <- rPE_CUT_G4_2$Removed_PE_CUT_G4_2;
PE_out_CUT_H4_2 <- outliers_mad(x = PE_CUT_H4_2, threshold = 2.5)
rPE_CUT_H4_2 <- data.frame("Removed_PE_CUT_H4_2" = PE_CUT_H4_2);
rPE_CUT_H4_2$Removed_PE_CUT_H4_2[PE_out_CUT_H4_2$outliers_pos] <- NA;
PE_CUT_H4_2 <- rPE_CUT_H4_2$Removed_PE_CUT_H4_2;
PE_out_CUT_A5_2 <- outliers_mad(x = PE_CUT_A5_2, threshold = 2.5)
rPE_CUT_A5_2 <- data.frame("Removed_PE_CUT_A5_2" = PE_CUT_A5_2);
rPE_CUT_A5_2$Removed_PE_CUT_A5_2[PE_out_CUT_A5_2$outliers_pos] <- NA;
PE_CUT_A5_2 <- rPE_CUT_A5_2$Removed_PE_CUT_A5_2;
PE_out_CUT_B5_2 <- outliers_mad(x = PE_CUT_B5_2, threshold = 2.5)
rPE_CUT_B5_2 <- data.frame("Removed_PE_CUT_B5_2" = PE_CUT_B5_2);
rPE_CUT_B5_2$Removed_PE_CUT_B5_2[PE_out_CUT_B5_2$outliers_pos] <- NA;
PE_CUT_B5_2 <- rPE_CUT_B5_2$Removed_PE_CUT_B5_2;
PE_out_CUT_C5_2 <- outliers_mad(x = PE_CUT_C5_2, threshold = 2.5)
rPE_CUT_C5_2 <- data.frame("Removed_PE_CUT_C5_2" = PE_CUT_C5_2);
rPE_CUT_C5_2$Removed_PE_CUT_C5_2[PE_out_CUT_C5_2$outliers_pos] <- NA;
PE_CUT_C5_2 <- rPE_CUT_C5_2$Removed_PE_CUT_C5_2;
PE_out_CUT_D5_2 <- outliers_mad(x = PE_CUT_D5_2, threshold = 2.5)
rPE_CUT_D5_2 <- data.frame("Removed_PE_CUT_D5_2" = PE_CUT_D5_2);
rPE_CUT_D5_2$Removed_PE_CUT_D5_2[PE_out_CUT_D5_2$outliers_pos] <- NA;
PE_CUT_D5_2 <- rPE_CUT_D5_2$Removed_PE_CUT_D5_2;
PE_out_CUT_E5_2 <- outliers_mad(x = PE_CUT_E5_2, threshold = 2.5)
rPE_CUT_E5_2 <- data.frame("Removed_PE_CUT_E5_2" = PE_CUT_E5_2);
rPE_CUT_E5_2$Removed_PE_CUT_E5_2[PE_out_CUT_E5_2$outliers_pos] <- NA;
PE_CUT_E5_2 <- rPE_CUT_E5_2$Removed_PE_CUT_E5_2;
PE_out_CUT_F5_2 <- outliers_mad(x = PE_CUT_F5_2, threshold = 2.5)
rPE_CUT_F5_2 <- data.frame("Removed_PE_CUT_F5_2" = PE_CUT_F5_2);
rPE_CUT_F5_2$Removed_PE_CUT_F5_2[PE_out_CUT_F5_2$outliers_pos] <- NA;
PE_CUT_F5_2 <- rPE_CUT_F5_2$Removed_PE_CUT_F5_2;
PE_out_CUT_G5_2 <- outliers_mad(x = PE_CUT_G5_2, threshold = 2.5)
rPE_CUT_G5_2 <- data.frame("Removed_PE_CUT_G5_2" = PE_CUT_G5_2);
rPE_CUT_G5_2$Removed_PE_CUT_G5_2[PE_out_CUT_G5_2$outliers_pos] <- NA;
PE_CUT_G5_2 <- rPE_CUT_G5_2$Removed_PE_CUT_G5_2;
PE_out_CUT_H5_2 <- outliers_mad(x = PE_CUT_H5_2, threshold = 2.5)
rPE_CUT_H5_2 <- data.frame("Removed_PE_CUT_H5_2" = PE_CUT_H5_2);
rPE_CUT_H5_2$Removed_PE_CUT_H5_2[PE_out_CUT_H5_2$outliers_pos] <- NA;
PE_CUT_H5_2 <- rPE_CUT_H5_2$Removed_PE_CUT_H5_2;
PE_out_CUT_A6_2 <- outliers_mad(x = PE_CUT_A6_2, threshold = 2.5)
rPE_CUT_A6_2 <- data.frame("Removed_PE_CUT_A6_2" = PE_CUT_A6_2);
rPE_CUT_A6_2$Removed_PE_CUT_A6_2[PE_out_CUT_A6_2$outliers_pos] <- NA;
PE_CUT_A6_2 <- rPE_CUT_A6_2$Removed_PE_CUT_A6_2;
PE_out_CUT_B6_2 <- outliers_mad(x = PE_CUT_B6_2, threshold = 2.5)
rPE_CUT_B6_2 <- data.frame("Removed_PE_CUT_B6_2" = PE_CUT_B6_2);
rPE_CUT_B6_2$Removed_PE_CUT_B6_2[PE_out_CUT_B6_2$outliers_pos] <- NA;
PE_CUT_B6_2 <- rPE_CUT_B6_2$Removed_PE_CUT_B6_2;
PE_out_CUT_C6_2 <- outliers_mad(x = PE_CUT_C6_2, threshold = 2.5)
rPE_CUT_C6_2 <- data.frame("Removed_PE_CUT_C6_2" = PE_CUT_C6_2);
rPE_CUT_C6_2$Removed_PE_CUT_C6_2[PE_out_CUT_C6_2$outliers_pos] <- NA;
PE_CUT_C6_2 <- rPE_CUT_C6_2$Removed_PE_CUT_C6_2;
PE_out_CUT_D6_2 <- outliers_mad(x = PE_CUT_D6_2, threshold = 2.5)
rPE_CUT_D6_2 <- data.frame("Removed_PE_CUT_D6_2" = PE_CUT_D6_2);
rPE_CUT_D6_2$Removed_PE_CUT_D6_2[PE_out_CUT_D6_2$outliers_pos] <- NA;
PE_CUT_D6_2 <- rPE_CUT_D6_2$Removed_PE_CUT_D6_2;
PE_out_CUT_E6_2 <- outliers_mad(x = PE_CUT_E6_2, threshold = 2.5)
rPE_CUT_E6_2 <- data.frame("Removed_PE_CUT_E6_2" = PE_CUT_E6_2);
rPE_CUT_E6_2$Removed_PE_CUT_E6_2[PE_out_CUT_E6_2$outliers_pos] <- NA;
PE_CUT_E6_2 <- rPE_CUT_E6_2$Removed_PE_CUT_E6_2;
PE_out_CUT_F6_2 <- outliers_mad(x = PE_CUT_F6_2, threshold = 2.5)
rPE_CUT_F6_2 <- data.frame("Removed_PE_CUT_F6_2" = PE_CUT_F6_2);
rPE_CUT_F6_2$Removed_PE_CUT_F6_2[PE_out_CUT_F6_2$outliers_pos] <- NA;
PE_CUT_F6_2 <- rPE_CUT_F6_2$Removed_PE_CUT_F6_2;
PE_out_CUT_G6_2 <- outliers_mad(x = PE_CUT_G6_2, threshold = 2.5)
rPE_CUT_G6_2 <- data.frame("Removed_PE_CUT_G6_2" = PE_CUT_G6_2);
rPE_CUT_G6_2$Removed_PE_CUT_G6_2[PE_out_CUT_G6_2$outliers_pos] <- NA;
PE_CUT_G6_2 <- rPE_CUT_G6_2$Removed_PE_CUT_G6_2;
PE_out_CUT_H6_2 <- outliers_mad(x = PE_CUT_H6_2, threshold = 2.5)
rPE_CUT_H6_2 <- data.frame("Removed_PE_CUT_H6_2" = PE_CUT_H6_2);
rPE_CUT_H6_2$Removed_PE_CUT_H6_2[PE_out_CUT_H6_2$outliers_pos] <- NA;
PE_CUT_H6_2 <- rPE_CUT_H6_2$Removed_PE_CUT_H6_2;
PE_out_CUT_A7_2 <- outliers_mad(x = PE_CUT_A7_2, threshold = 2.5)
rPE_CUT_A7_2 <- data.frame("Removed_PE_CUT_A7_2" = PE_CUT_A7_2);
rPE_CUT_A7_2$Removed_PE_CUT_A7_2[PE_out_CUT_A7_2$outliers_pos] <- NA;
PE_CUT_A7_2 <- rPE_CUT_A7_2$Removed_PE_CUT_A7_2;
PE_out_CUT_B7_2 <- outliers_mad(x = PE_CUT_B7_2, threshold = 2.5)
rPE_CUT_B7_2 <- data.frame("Removed_PE_CUT_B7_2" = PE_CUT_B7_2);
rPE_CUT_B7_2$Removed_PE_CUT_B7_2[PE_out_CUT_B7_2$outliers_pos] <- NA;
PE_CUT_B7_2 <- rPE_CUT_B7_2$Removed_PE_CUT_B7_2;
PE_out_CUT_C7_2 <- outliers_mad(x = PE_CUT_C7_2, threshold = 2.5)
rPE_CUT_C7_2 <- data.frame("Removed_PE_CUT_C7_2" = PE_CUT_C7_2);
rPE_CUT_C7_2$Removed_PE_CUT_C7_2[PE_out_CUT_C7_2$outliers_pos] <- NA;
PE_CUT_C7_2 <- rPE_CUT_C7_2$Removed_PE_CUT_C7_2;
PE_out_CUT_D7_2 <- outliers_mad(x = PE_CUT_D7_2, threshold = 2.5)
rPE_CUT_D7_2 <- data.frame("Removed_PE_CUT_D7_2" = PE_CUT_D7_2);
rPE_CUT_D7_2$Removed_PE_CUT_D7_2[PE_out_CUT_D7_2$outliers_pos] <- NA;
PE_CUT_D7_2 <- rPE_CUT_D7_2$Removed_PE_CUT_D7_2;
PE_out_CUT_E7_2 <- outliers_mad(x = PE_CUT_E7_2, threshold = 2.5)
rPE_CUT_E7_2 <- data.frame("Removed_PE_CUT_E7_2" = PE_CUT_E7_2);
rPE_CUT_E7_2$Removed_PE_CUT_E7_2[PE_out_CUT_E7_2$outliers_pos] <- NA;
PE_CUT_E7_2 <- rPE_CUT_E7_2$Removed_PE_CUT_E7_2;
PE_out_CUT_F7_2 <- outliers_mad(x = PE_CUT_F7_2, threshold = 2.5)
rPE_CUT_F7_2 <- data.frame("Removed_PE_CUT_F7_2" = PE_CUT_F7_2);
rPE_CUT_F7_2$Removed_PE_CUT_F7_2[PE_out_CUT_F7_2$outliers_pos] <- NA;
PE_CUT_F7_2 <- rPE_CUT_F7_2$Removed_PE_CUT_F7_2;
PE_out_CUT_G7_2 <- outliers_mad(x = PE_CUT_G7_2, threshold = 2.5)
rPE_CUT_G7_2 <- data.frame("Removed_PE_CUT_G7_2" = PE_CUT_G7_2);
rPE_CUT_G7_2$Removed_PE_CUT_G7_2[PE_out_CUT_G7_2$outliers_pos] <- NA;
PE_CUT_G7_2 <- rPE_CUT_G7_2$Removed_PE_CUT_G7_2;
PE_out_CUT_H7_2 <- outliers_mad(x = PE_CUT_H7_2, threshold = 2.5)
rPE_CUT_H7_2 <- data.frame("Removed_PE_CUT_H7_2" = PE_CUT_H7_2);
rPE_CUT_H7_2$Removed_PE_CUT_H7_2[PE_out_CUT_H7_2$outliers_pos] <- NA;
PE_CUT_H7_2 <- rPE_CUT_H7_2$Removed_PE_CUT_H7_2;
PE_out_CUT_A8_2 <- outliers_mad(x = PE_CUT_A8_2, threshold = 2.5)
rPE_CUT_A8_2 <- data.frame("Removed_PE_CUT_A8_2" = PE_CUT_A8_2);
rPE_CUT_A8_2$Removed_PE_CUT_A8_2[PE_out_CUT_A8_2$outliers_pos] <- NA;
PE_CUT_A8_2 <- rPE_CUT_A8_2$Removed_PE_CUT_A8_2;
PE_out_CUT_B8_2 <- outliers_mad(x = PE_CUT_B8_2, threshold = 2.5)
rPE_CUT_B8_2 <- data.frame("Removed_PE_CUT_B8_2" = PE_CUT_B8_2);
rPE_CUT_B8_2$Removed_PE_CUT_B8_2[PE_out_CUT_B8_2$outliers_pos] <- NA;
PE_CUT_B8_2 <- rPE_CUT_B8_2$Removed_PE_CUT_B8_2;
PE_out_CUT_C8_2 <- outliers_mad(x = PE_CUT_C8_2, threshold = 2.5)
rPE_CUT_C8_2 <- data.frame("Removed_PE_CUT_C8_2" = PE_CUT_C8_2);
rPE_CUT_C8_2$Removed_PE_CUT_C8_2[PE_out_CUT_C8_2$outliers_pos] <- NA;
PE_CUT_C8_2 <- rPE_CUT_C8_2$Removed_PE_CUT_C8_2;
PE_out_CUT_D8_2 <- outliers_mad(x = PE_CUT_D8_2, threshold = 2.5)
rPE_CUT_D8_2 <- data.frame("Removed_PE_CUT_D8_2" = PE_CUT_D8_2);
rPE_CUT_D8_2$Removed_PE_CUT_D8_2[PE_out_CUT_D8_2$outliers_pos] <- NA;
PE_CUT_D8_2 <- rPE_CUT_D8_2$Removed_PE_CUT_D8_2;
PE_out_CUT_E8_2 <- outliers_mad(x = PE_CUT_E8_2, threshold = 2.5)
rPE_CUT_E8_2 <- data.frame("Removed_PE_CUT_E8_2" = PE_CUT_E8_2);
rPE_CUT_E8_2$Removed_PE_CUT_E8_2[PE_out_CUT_E8_2$outliers_pos] <- NA;
PE_CUT_E8_2 <- rPE_CUT_E8_2$Removed_PE_CUT_E8_2;
PE_out_CUT_F8_2 <- outliers_mad(x = PE_CUT_F8_2, threshold = 2.5)
rPE_CUT_F8_2 <- data.frame("Removed_PE_CUT_F8_2" = PE_CUT_F8_2);
rPE_CUT_F8_2$Removed_PE_CUT_F8_2[PE_out_CUT_F8_2$outliers_pos] <- NA;
PE_CUT_F8_2 <- rPE_CUT_F8_2$Removed_PE_CUT_F8_2;
PE_out_CUT_G8_2 <- outliers_mad(x = PE_CUT_G8_2, threshold = 2.5)
rPE_CUT_G8_2 <- data.frame("Removed_PE_CUT_G8_2" = PE_CUT_G8_2);
rPE_CUT_G8_2$Removed_PE_CUT_G8_2[PE_out_CUT_G8_2$outliers_pos] <- NA;
PE_CUT_G8_2 <- rPE_CUT_G8_2$Removed_PE_CUT_G8_2;
PE_out_CUT_H8_2 <- outliers_mad(x = PE_CUT_H8_2, threshold = 2.5)
rPE_CUT_H8_2 <- data.frame("Removed_PE_CUT_H8_2" = PE_CUT_H8_2);
rPE_CUT_H8_2$Removed_PE_CUT_H8_2[PE_out_CUT_H8_2$outliers_pos] <- NA;
PE_CUT_H8_2 <- rPE_CUT_H8_2$Removed_PE_CUT_H8_2;
PE_out_CUT_A9_2 <- outliers_mad(x = PE_CUT_A9_2, threshold = 2.5)
rPE_CUT_A9_2 <- data.frame("Removed_PE_CUT_A9_2" = PE_CUT_A9_2);
rPE_CUT_A9_2$Removed_PE_CUT_A9_2[PE_out_CUT_A9_2$outliers_pos] <- NA;
PE_CUT_A9_2 <- rPE_CUT_A9_2$Removed_PE_CUT_A9_2;
PE_out_CUT_B9_2 <- outliers_mad(x = PE_CUT_B9_2, threshold = 2.5)
rPE_CUT_B9_2 <- data.frame("Removed_PE_CUT_B9_2" = PE_CUT_B9_2);
rPE_CUT_B9_2$Removed_PE_CUT_B9_2[PE_out_CUT_B9_2$outliers_pos] <- NA;
PE_CUT_B9_2 <- rPE_CUT_B9_2$Removed_PE_CUT_B9_2;
PE_out_CUT_C9_2 <- outliers_mad(x = PE_CUT_C9_2, threshold = 2.5)
rPE_CUT_C9_2 <- data.frame("Removed_PE_CUT_C9_2" = PE_CUT_C9_2);
rPE_CUT_C9_2$Removed_PE_CUT_C9_2[PE_out_CUT_C9_2$outliers_pos] <- NA;
PE_CUT_C9_2 <- rPE_CUT_C9_2$Removed_PE_CUT_C9_2;
PE_out_CUT_D9_2 <- outliers_mad(x = PE_CUT_D9_2, threshold = 2.5)
rPE_CUT_D9_2 <- data.frame("Removed_PE_CUT_D9_2" = PE_CUT_D9_2);
rPE_CUT_D9_2$Removed_PE_CUT_D9_2[PE_out_CUT_D9_2$outliers_pos] <- NA;
PE_CUT_D9_2 <- rPE_CUT_D9_2$Removed_PE_CUT_D9_2;
PE_out_CUT_E9_2 <- outliers_mad(x = PE_CUT_E9_2, threshold = 2.5)
rPE_CUT_E9_2 <- data.frame("Removed_PE_CUT_E9_2" = PE_CUT_E9_2);
rPE_CUT_E9_2$Removed_PE_CUT_E9_2[PE_out_CUT_E9_2$outliers_pos] <- NA;
PE_CUT_E9_2 <- rPE_CUT_E9_2$Removed_PE_CUT_E9_2;
PE_out_CUT_F9_2 <- outliers_mad(x = PE_CUT_F9_2, threshold = 2.5)
rPE_CUT_F9_2 <- data.frame("Removed_PE_CUT_F9_2" = PE_CUT_F9_2);
rPE_CUT_F9_2$Removed_PE_CUT_F9_2[PE_out_CUT_F9_2$outliers_pos] <- NA;
PE_CUT_F9_2 <- rPE_CUT_F9_2$Removed_PE_CUT_F9_2;
PE_out_CUT_G9_2 <- outliers_mad(x = PE_CUT_G9_2, threshold = 2.5)
rPE_CUT_G9_2 <- data.frame("Removed_PE_CUT_G9_2" = PE_CUT_G9_2);
rPE_CUT_G9_2$Removed_PE_CUT_G9_2[PE_out_CUT_G9_2$outliers_pos] <- NA;
PE_CUT_G9_2 <- rPE_CUT_G9_2$Removed_PE_CUT_G9_2;
PE_out_CUT_H9_2 <- outliers_mad(x = PE_CUT_H9_2, threshold = 2.5)
rPE_CUT_H9_2 <- data.frame("Removed_PE_CUT_H9_2" = PE_CUT_H9_2);
rPE_CUT_H9_2$Removed_PE_CUT_H9_2[PE_out_CUT_H9_2$outliers_pos] <- NA;
PE_CUT_H9_2 <- rPE_CUT_H9_2$Removed_PE_CUT_H9_2;
PE_out_CUT_A10_2 <- outliers_mad(x = PE_CUT_A10_2, threshold = 2.5)
rPE_CUT_A10_2 <- data.frame("Removed_PE_CUT_A10_2" = PE_CUT_A10_2);
rPE_CUT_A10_2$Removed_PE_CUT_A10_2[PE_out_CUT_A10_2$outliers_pos] <- NA;
PE_CUT_A10_2 <- rPE_CUT_A10_2$Removed_PE_CUT_A10_2;
PE_out_CUT_B10_2 <- outliers_mad(x = PE_CUT_B10_2, threshold = 2.5)
rPE_CUT_B10_2 <- data.frame("Removed_PE_CUT_B10_2" = PE_CUT_B10_2);
rPE_CUT_B10_2$Removed_PE_CUT_B10_2[PE_out_CUT_B10_2$outliers_pos] <- NA;
PE_CUT_B10_2 <- rPE_CUT_B10_2$Removed_PE_CUT_B10_2;
PE_out_CUT_C10_2 <- outliers_mad(x = PE_CUT_C10_2, threshold = 2.5)
rPE_CUT_C10_2 <- data.frame("Removed_PE_CUT_C10_2" = PE_CUT_C10_2);
rPE_CUT_C10_2$Removed_PE_CUT_C10_2[PE_out_CUT_C10_2$outliers_pos] <- NA;
PE_CUT_C10_2 <- rPE_CUT_C10_2$Removed_PE_CUT_C10_2;
PE_out_CUT_D10_2 <- outliers_mad(x = PE_CUT_D10_2, threshold = 2.5)
rPE_CUT_D10_2 <- data.frame("Removed_PE_CUT_D10_2" = PE_CUT_D10_2);
rPE_CUT_D10_2$Removed_PE_CUT_D10_2[PE_out_CUT_D10_2$outliers_pos] <- NA;
PE_CUT_D10_2 <- rPE_CUT_D10_2$Removed_PE_CUT_D10_2;
PE_out_CUT_E10_2 <- outliers_mad(x = PE_CUT_E10_2, threshold = 2.5)
rPE_CUT_E10_2 <- data.frame("Removed_PE_CUT_E10_2" = PE_CUT_E10_2);
rPE_CUT_E10_2$Removed_PE_CUT_E10_2[PE_out_CUT_E10_2$outliers_pos] <- NA;
PE_CUT_E10_2 <- rPE_CUT_E10_2$Removed_PE_CUT_E10_2;
PE_out_CUT_F10_2 <- outliers_mad(x = PE_CUT_F10_2, threshold = 2.5)
rPE_CUT_F10_2 <- data.frame("Removed_PE_CUT_F10_2" = PE_CUT_F10_2);
rPE_CUT_F10_2$Removed_PE_CUT_F10_2[PE_out_CUT_F10_2$outliers_pos] <- NA;
PE_CUT_F10_2 <- rPE_CUT_F10_2$Removed_PE_CUT_F10_2;
PE_out_CUT_G10_2 <- outliers_mad(x = PE_CUT_G10_2, threshold = 2.5)
rPE_CUT_G10_2 <- data.frame("Removed_PE_CUT_G10_2" = PE_CUT_G10_2);
rPE_CUT_G10_2$Removed_PE_CUT_G10_2[PE_out_CUT_G10_2$outliers_pos] <- NA;
PE_CUT_G10_2 <- rPE_CUT_G10_2$Removed_PE_CUT_G10_2;
PE_out_CUT_H10_2 <- outliers_mad(x = PE_CUT_H10_2, threshold = 2.5)
rPE_CUT_H10_2 <- data.frame("Removed_PE_CUT_H10_2" = PE_CUT_H10_2);
rPE_CUT_H10_2$Removed_PE_CUT_H10_2[PE_out_CUT_H10_2$outliers_pos] <- NA;
PE_CUT_H10_2 <- rPE_CUT_H10_2$Removed_PE_CUT_H10_2;
PE_out_CUT_A11_2 <- outliers_mad(x = PE_CUT_A11_2, threshold = 2.5)
rPE_CUT_A11_2 <- data.frame("Removed_PE_CUT_A11_2" = PE_CUT_A11_2);
rPE_CUT_A11_2$Removed_PE_CUT_A11_2[PE_out_CUT_A11_2$outliers_pos] <- NA;
PE_CUT_A11_2 <- rPE_CUT_A11_2$Removed_PE_CUT_A11_2;
PE_out_CUT_B11_2 <- outliers_mad(x = PE_CUT_B11_2, threshold = 2.5)
rPE_CUT_B11_2 <- data.frame("Removed_PE_CUT_B11_2" = PE_CUT_B11_2);
rPE_CUT_B11_2$Removed_PE_CUT_B11_2[PE_out_CUT_B11_2$outliers_pos] <- NA;
PE_CUT_B11_2 <- rPE_CUT_B11_2$Removed_PE_CUT_B11_2;
PE_out_CUT_C11_2 <- outliers_mad(x = PE_CUT_C11_2, threshold = 2.5)
rPE_CUT_C11_2 <- data.frame("Removed_PE_CUT_C11_2" = PE_CUT_C11_2);
rPE_CUT_C11_2$Removed_PE_CUT_C11_2[PE_out_CUT_C11_2$outliers_pos] <- NA;
PE_CUT_C11_2 <- rPE_CUT_C11_2$Removed_PE_CUT_C11_2;
PE_out_CUT_D11_2 <- outliers_mad(x = PE_CUT_D11_2, threshold = 2.5)
rPE_CUT_D11_2 <- data.frame("Removed_PE_CUT_D11_2" = PE_CUT_D11_2);
rPE_CUT_D11_2$Removed_PE_CUT_D11_2[PE_out_CUT_D11_2$outliers_pos] <- NA;
PE_CUT_D11_2 <- rPE_CUT_D11_2$Removed_PE_CUT_D11_2;
PE_out_CUT_E11_2 <- outliers_mad(x = PE_CUT_E11_2, threshold = 2.5)
rPE_CUT_E11_2 <- data.frame("Removed_PE_CUT_E11_2" = PE_CUT_E11_2);
rPE_CUT_E11_2$Removed_PE_CUT_E11_2[PE_out_CUT_E11_2$outliers_pos] <- NA;
PE_CUT_E11_2 <- rPE_CUT_E11_2$Removed_PE_CUT_E11_2;
PE_out_CUT_F11_2 <- outliers_mad(x = PE_CUT_F11_2, threshold = 2.5)
rPE_CUT_F11_2 <- data.frame("Removed_PE_CUT_F11_2" = PE_CUT_F11_2);
rPE_CUT_F11_2$Removed_PE_CUT_F11_2[PE_out_CUT_F11_2$outliers_pos] <- NA;
PE_CUT_F11_2 <- rPE_CUT_F11_2$Removed_PE_CUT_F11_2;
PE_out_CUT_G11_2 <- outliers_mad(x = PE_CUT_G11_2, threshold = 2.5)
rPE_CUT_G11_2 <- data.frame("Removed_PE_CUT_G11_2" = PE_CUT_G11_2);
rPE_CUT_G11_2$Removed_PE_CUT_G11_2[PE_out_CUT_G11_2$outliers_pos] <- NA;
PE_CUT_G11_2 <- rPE_CUT_G11_2$Removed_PE_CUT_G11_2;
PE_out_CUT_H11_2 <- outliers_mad(x = PE_CUT_H11_2, threshold = 2.5)
rPE_CUT_H11_2 <- data.frame("Removed_PE_CUT_H11_2" = PE_CUT_H11_2);
rPE_CUT_H11_2$Removed_PE_CUT_H11_2[PE_out_CUT_H11_2$outliers_pos] <- NA;
PE_CUT_H11_2 <- rPE_CUT_H11_2$Removed_PE_CUT_H11_2;
PE_out_CUT_A12_2 <- outliers_mad(x = PE_CUT_A12_2, threshold = 2.5)
rPE_CUT_A12_2 <- data.frame("Removed_PE_CUT_A12_2" = PE_CUT_A12_2);
rPE_CUT_A12_2$Removed_PE_CUT_A12_2[PE_out_CUT_A12_2$outliers_pos] <- NA;
PE_CUT_A12_2 <- rPE_CUT_A12_2$Removed_PE_CUT_A12_2;
PE_out_CUT_B12_2 <- outliers_mad(x = PE_CUT_B12_2, threshold = 2.5)
rPE_CUT_B12_2 <- data.frame("Removed_PE_CUT_B12_2" = PE_CUT_B12_2);
rPE_CUT_B12_2$Removed_PE_CUT_B12_2[PE_out_CUT_B12_2$outliers_pos] <- NA;
PE_CUT_B12_2 <- rPE_CUT_B12_2$Removed_PE_CUT_B12_2;
PE_out_CUT_C12_2 <- outliers_mad(x = PE_CUT_C12_2, threshold = 2.5)
rPE_CUT_C12_2 <- data.frame("Removed_PE_CUT_C12_2" = PE_CUT_C12_2);
rPE_CUT_C12_2$Removed_PE_CUT_C12_2[PE_out_CUT_C12_2$outliers_pos] <- NA;
PE_CUT_C12_2 <- rPE_CUT_C12_2$Removed_PE_CUT_C12_2;
PE_out_CUT_D12_2 <- outliers_mad(x = PE_CUT_D12_2, threshold = 2.5)
rPE_CUT_D12_2 <- data.frame("Removed_PE_CUT_D12_2" = PE_CUT_D12_2);
rPE_CUT_D12_2$Removed_PE_CUT_D12_2[PE_out_CUT_D12_2$outliers_pos] <- NA;
PE_CUT_D12_2 <- rPE_CUT_D12_2$Removed_PE_CUT_D12_2;
PE_out_CUT_E12_2 <- outliers_mad(x = PE_CUT_E12_2, threshold = 2.5)
rPE_CUT_E12_2 <- data.frame("Removed_PE_CUT_E12_2" = PE_CUT_E12_2);
rPE_CUT_E12_2$Removed_PE_CUT_E12_2[PE_out_CUT_E12_2$outliers_pos] <- NA;
PE_CUT_E12_2 <- rPE_CUT_E12_2$Removed_PE_CUT_E12_2;
PE_out_CUT_F12_2 <- outliers_mad(x = PE_CUT_F12_2, threshold = 2.5)
rPE_CUT_F12_2 <- data.frame("Removed_PE_CUT_F12_2" = PE_CUT_F12_2);
rPE_CUT_F12_2$Removed_PE_CUT_F12_2[PE_out_CUT_F12_2$outliers_pos] <- NA;
PE_CUT_F12_2 <- rPE_CUT_F12_2$Removed_PE_CUT_F12_2;
PE_out_CUT_G12_2 <- outliers_mad(x = PE_CUT_G12_2, threshold = 2.5)
rPE_CUT_G12_2 <- data.frame("Removed_PE_CUT_G12_2" = PE_CUT_G12_2);
rPE_CUT_G12_2$Removed_PE_CUT_G12_2[PE_out_CUT_G12_2$outliers_pos] <- NA;
PE_CUT_G12_2 <- rPE_CUT_G12_2$Removed_PE_CUT_G12_2;
PE_out_CUT_H12_2 <- outliers_mad(x = PE_CUT_H12_2, threshold = 2.5)
rPE_CUT_H12_2 <- data.frame("Removed_PE_CUT_H12_2" = PE_CUT_H12_2);
rPE_CUT_H12_2$Removed_PE_CUT_H12_2[PE_out_CUT_H12_2$outliers_pos] <- NA;
PE_CUT_H12_2 <- rPE_CUT_H12_2$Removed_PE_CUT_H12_2;

FITC_CUT_A1_1<-data.frame(length=c(1:length(FITC_CUT_A1_1)),FITC_CUT_A1_1)
FITC_CUT_A1_2<-data.frame(length=c(1:length(FITC_CUT_A1_2)),FITC_CUT_A1_2)
FITC_CUT_B1_1<-data.frame(length=c(1:length(FITC_CUT_B1_1)),FITC_CUT_B1_1)
FITC_CUT_B1_2<-data.frame(length=c(1:length(FITC_CUT_B1_2)),FITC_CUT_B1_2)
FITC_CUT_C1_1<-data.frame(length=c(1:length(FITC_CUT_C1_1)),FITC_CUT_C1_1)
FITC_CUT_C1_2<-data.frame(length=c(1:length(FITC_CUT_C1_2)),FITC_CUT_C1_2)
FITC_CUT_D1_1<-data.frame(length=c(1:length(FITC_CUT_D1_1)),FITC_CUT_D1_1)
FITC_CUT_D1_2<-data.frame(length=c(1:length(FITC_CUT_D1_2)),FITC_CUT_D1_2)
FITC_CUT_E1_1<-data.frame(length=c(1:length(FITC_CUT_E1_1)),FITC_CUT_E1_1)
FITC_CUT_E1_2<-data.frame(length=c(1:length(FITC_CUT_E1_2)),FITC_CUT_E1_2)
FITC_CUT_F1_1<-data.frame(length=c(1:length(FITC_CUT_F1_1)),FITC_CUT_F1_1)
FITC_CUT_F1_2<-data.frame(length=c(1:length(FITC_CUT_F1_2)),FITC_CUT_F1_2)
FITC_CUT_G1_1<-data.frame(length=c(1:length(FITC_CUT_G1_1)),FITC_CUT_G1_1)
FITC_CUT_G1_2<-data.frame(length=c(1:length(FITC_CUT_G1_2)),FITC_CUT_G1_2)
FITC_CUT_H1_1<-data.frame(length=c(1:length(FITC_CUT_H1_1)),FITC_CUT_H1_1)
FITC_CUT_H1_2<-data.frame(length=c(1:length(FITC_CUT_H1_2)),FITC_CUT_H1_2)

PE_CUT_A1_1<-data.frame(length=c(1:length(PE_CUT_A1_1)),PE_CUT_A1_1)
PE_CUT_A1_2<-data.frame(length=c(1:length(PE_CUT_A1_2)),PE_CUT_A1_2)
PE_CUT_B1_1<-data.frame(length=c(1:length(PE_CUT_B1_1)),PE_CUT_B1_1)
PE_CUT_B1_2<-data.frame(length=c(1:length(PE_CUT_B1_2)),PE_CUT_B1_2)
PE_CUT_C1_1<-data.frame(length=c(1:length(PE_CUT_C1_1)),PE_CUT_C1_1)
PE_CUT_C1_2<-data.frame(length=c(1:length(PE_CUT_C1_2)),PE_CUT_C1_2)
PE_CUT_D1_1<-data.frame(length=c(1:length(PE_CUT_D1_1)),PE_CUT_D1_1)
PE_CUT_D1_2<-data.frame(length=c(1:length(PE_CUT_D1_2)),PE_CUT_D1_2)
PE_CUT_E1_1<-data.frame(length=c(1:length(PE_CUT_E1_1)),PE_CUT_E1_1)
PE_CUT_E1_2<-data.frame(length=c(1:length(PE_CUT_E1_2)),PE_CUT_E1_2)
PE_CUT_F1_1<-data.frame(length=c(1:length(PE_CUT_F1_1)),PE_CUT_F1_1)
PE_CUT_F1_2<-data.frame(length=c(1:length(PE_CUT_F1_2)),PE_CUT_F1_2)
PE_CUT_G1_1<-data.frame(length=c(1:length(PE_CUT_G1_1)),PE_CUT_G1_1)
PE_CUT_G1_2<-data.frame(length=c(1:length(PE_CUT_G1_2)),PE_CUT_G1_2)
PE_CUT_H1_1<-data.frame(length=c(1:length(PE_CUT_H1_1)),PE_CUT_H1_1)
PE_CUT_H1_2<-data.frame(length=c(1:length(PE_CUT_H1_2)),PE_CUT_H1_2)


FITC_CUT_A2_1<-data.frame(length=c(1:length(FITC_CUT_A2_1)),FITC_CUT_A2_1)
FITC_CUT_A2_2<-data.frame(length=c(1:length(FITC_CUT_A2_2)),FITC_CUT_A2_2)
FITC_CUT_B2_1<-data.frame(length=c(1:length(FITC_CUT_B2_1)),FITC_CUT_B2_1)
FITC_CUT_B2_2<-data.frame(length=c(1:length(FITC_CUT_B2_2)),FITC_CUT_B2_2)
FITC_CUT_C2_1<-data.frame(length=c(1:length(FITC_CUT_C2_1)),FITC_CUT_C2_1)
FITC_CUT_C2_2<-data.frame(length=c(1:length(FITC_CUT_C2_2)),FITC_CUT_C2_2)
FITC_CUT_D2_1<-data.frame(length=c(1:length(FITC_CUT_D2_1)),FITC_CUT_D2_1)
FITC_CUT_D2_2<-data.frame(length=c(1:length(FITC_CUT_D2_2)),FITC_CUT_D2_2)
FITC_CUT_E2_1<-data.frame(length=c(1:length(FITC_CUT_E2_1)),FITC_CUT_E2_1)
FITC_CUT_E2_2<-data.frame(length=c(1:length(FITC_CUT_E2_2)),FITC_CUT_E2_2)
FITC_CUT_F2_1<-data.frame(length=c(1:length(FITC_CUT_F2_1)),FITC_CUT_F2_1)
FITC_CUT_F2_2<-data.frame(length=c(1:length(FITC_CUT_F2_2)),FITC_CUT_F2_2)
FITC_CUT_G2_1<-data.frame(length=c(1:length(FITC_CUT_G2_1)),FITC_CUT_G2_1)
FITC_CUT_G2_2<-data.frame(length=c(1:length(FITC_CUT_G2_2)),FITC_CUT_G2_2)
FITC_CUT_H2_1<-data.frame(length=c(1:length(FITC_CUT_H2_1)),FITC_CUT_H2_1)
FITC_CUT_H2_2<-data.frame(length=c(1:length(FITC_CUT_H2_2)),FITC_CUT_H2_2)

PE_CUT_A2_1<-data.frame(length=c(1:length(PE_CUT_A2_1)),PE_CUT_A2_1)
PE_CUT_A2_2<-data.frame(length=c(1:length(PE_CUT_A2_2)),PE_CUT_A2_2)
PE_CUT_B2_1<-data.frame(length=c(1:length(PE_CUT_B2_1)),PE_CUT_B2_1)
PE_CUT_B2_2<-data.frame(length=c(1:length(PE_CUT_B2_2)),PE_CUT_B2_2)
PE_CUT_C2_1<-data.frame(length=c(1:length(PE_CUT_C2_1)),PE_CUT_C2_1)
PE_CUT_C2_2<-data.frame(length=c(1:length(PE_CUT_C2_2)),PE_CUT_C2_2)
PE_CUT_D2_1<-data.frame(length=c(1:length(PE_CUT_D2_1)),PE_CUT_D2_1)
PE_CUT_D2_2<-data.frame(length=c(1:length(PE_CUT_D2_2)),PE_CUT_D2_2)
PE_CUT_E2_1<-data.frame(length=c(1:length(PE_CUT_E2_1)),PE_CUT_E2_1)
PE_CUT_E2_2<-data.frame(length=c(1:length(PE_CUT_E2_2)),PE_CUT_E2_2)
PE_CUT_F2_1<-data.frame(length=c(1:length(PE_CUT_F2_1)),PE_CUT_F2_1)
PE_CUT_F2_2<-data.frame(length=c(1:length(PE_CUT_F2_2)),PE_CUT_F2_2)
PE_CUT_G2_1<-data.frame(length=c(1:length(PE_CUT_G2_1)),PE_CUT_G2_1)
PE_CUT_G2_2<-data.frame(length=c(1:length(PE_CUT_G2_2)),PE_CUT_G2_2)
PE_CUT_H2_1<-data.frame(length=c(1:length(PE_CUT_H2_1)),PE_CUT_H2_1)
PE_CUT_H2_2<-data.frame(length=c(1:length(PE_CUT_H2_2)),PE_CUT_H2_2)


FITC_CUT_A3_1<-data.frame(length=c(1:length(FITC_CUT_A3_1)),FITC_CUT_A3_1)
FITC_CUT_A3_2<-data.frame(length=c(1:length(FITC_CUT_A3_2)),FITC_CUT_A3_2)
FITC_CUT_B3_1<-data.frame(length=c(1:length(FITC_CUT_B3_1)),FITC_CUT_B3_1)
FITC_CUT_B3_2<-data.frame(length=c(1:length(FITC_CUT_B3_2)),FITC_CUT_B3_2)
FITC_CUT_C3_1<-data.frame(length=c(1:length(FITC_CUT_C3_1)),FITC_CUT_C3_1)
FITC_CUT_C3_2<-data.frame(length=c(1:length(FITC_CUT_C3_2)),FITC_CUT_C3_2)
FITC_CUT_D3_1<-data.frame(length=c(1:length(FITC_CUT_D3_1)),FITC_CUT_D3_1)
FITC_CUT_D3_2<-data.frame(length=c(1:length(FITC_CUT_D3_2)),FITC_CUT_D3_2)
FITC_CUT_E3_1<-data.frame(length=c(1:length(FITC_CUT_E3_1)),FITC_CUT_E3_1)
FITC_CUT_E3_2<-data.frame(length=c(1:length(FITC_CUT_E3_2)),FITC_CUT_E3_2)
FITC_CUT_F3_1<-data.frame(length=c(1:length(FITC_CUT_F3_1)),FITC_CUT_F3_1)
FITC_CUT_F3_2<-data.frame(length=c(1:length(FITC_CUT_F3_2)),FITC_CUT_F3_2)
FITC_CUT_G3_1<-data.frame(length=c(1:length(FITC_CUT_G3_1)),FITC_CUT_G3_1)
FITC_CUT_G3_2<-data.frame(length=c(1:length(FITC_CUT_G3_2)),FITC_CUT_G3_2)
FITC_CUT_H3_1<-data.frame(length=c(1:length(FITC_CUT_H3_1)),FITC_CUT_H3_1)
FITC_CUT_H3_2<-data.frame(length=c(1:length(FITC_CUT_H3_2)),FITC_CUT_H3_2)

PE_CUT_A3_1<-data.frame(length=c(1:length(PE_CUT_A3_1)),PE_CUT_A3_1)
PE_CUT_A3_2<-data.frame(length=c(1:length(PE_CUT_A3_2)),PE_CUT_A3_2)
PE_CUT_B3_1<-data.frame(length=c(1:length(PE_CUT_B3_1)),PE_CUT_B3_1)
PE_CUT_B3_2<-data.frame(length=c(1:length(PE_CUT_B3_2)),PE_CUT_B3_2)
PE_CUT_C3_1<-data.frame(length=c(1:length(PE_CUT_C3_1)),PE_CUT_C3_1)
PE_CUT_C3_2<-data.frame(length=c(1:length(PE_CUT_C3_2)),PE_CUT_C3_2)
PE_CUT_D3_1<-data.frame(length=c(1:length(PE_CUT_D3_1)),PE_CUT_D3_1)
PE_CUT_D3_2<-data.frame(length=c(1:length(PE_CUT_D3_2)),PE_CUT_D3_2)
PE_CUT_E3_1<-data.frame(length=c(1:length(PE_CUT_E3_1)),PE_CUT_E3_1)
PE_CUT_E3_2<-data.frame(length=c(1:length(PE_CUT_E3_2)),PE_CUT_E3_2)
PE_CUT_F3_1<-data.frame(length=c(1:length(PE_CUT_F3_1)),PE_CUT_F3_1)
PE_CUT_F3_2<-data.frame(length=c(1:length(PE_CUT_F3_2)),PE_CUT_F3_2)
PE_CUT_G3_1<-data.frame(length=c(1:length(PE_CUT_G3_1)),PE_CUT_G3_1)
PE_CUT_G3_2<-data.frame(length=c(1:length(PE_CUT_G3_2)),PE_CUT_G3_2)
PE_CUT_H3_1<-data.frame(length=c(1:length(PE_CUT_H3_1)),PE_CUT_H3_1)
PE_CUT_H3_2<-data.frame(length=c(1:length(PE_CUT_H3_2)),PE_CUT_H3_2)


FITC_CUT_A4_1<-data.frame(length=c(1:length(FITC_CUT_A4_1)),FITC_CUT_A4_1)
FITC_CUT_A4_2<-data.frame(length=c(1:length(FITC_CUT_A4_2)),FITC_CUT_A4_2)
FITC_CUT_B4_1<-data.frame(length=c(1:length(FITC_CUT_B4_1)),FITC_CUT_B4_1)
FITC_CUT_B4_2<-data.frame(length=c(1:length(FITC_CUT_B4_2)),FITC_CUT_B4_2)
FITC_CUT_C4_1<-data.frame(length=c(1:length(FITC_CUT_C4_1)),FITC_CUT_C4_1)
FITC_CUT_C4_2<-data.frame(length=c(1:length(FITC_CUT_C4_2)),FITC_CUT_C4_2)
FITC_CUT_D4_1<-data.frame(length=c(1:length(FITC_CUT_D4_1)),FITC_CUT_D4_1)
FITC_CUT_D4_2<-data.frame(length=c(1:length(FITC_CUT_D4_2)),FITC_CUT_D4_2)
FITC_CUT_E4_1<-data.frame(length=c(1:length(FITC_CUT_E4_1)),FITC_CUT_E4_1)
FITC_CUT_E4_2<-data.frame(length=c(1:length(FITC_CUT_E4_2)),FITC_CUT_E4_2)
FITC_CUT_F4_1<-data.frame(length=c(1:length(FITC_CUT_F4_1)),FITC_CUT_F4_1)
FITC_CUT_F4_2<-data.frame(length=c(1:length(FITC_CUT_F4_2)),FITC_CUT_F4_2)
FITC_CUT_G4_1<-data.frame(length=c(1:length(FITC_CUT_G4_1)),FITC_CUT_G4_1)
FITC_CUT_G4_2<-data.frame(length=c(1:length(FITC_CUT_G4_2)),FITC_CUT_G4_2)
FITC_CUT_H4_1<-data.frame(length=c(1:length(FITC_CUT_H4_1)),FITC_CUT_H4_1)
FITC_CUT_H4_2<-data.frame(length=c(1:length(FITC_CUT_H4_2)),FITC_CUT_H4_2)

PE_CUT_A4_1<-data.frame(length=c(1:length(PE_CUT_A4_1)),PE_CUT_A4_1)
PE_CUT_A4_2<-data.frame(length=c(1:length(PE_CUT_A4_2)),PE_CUT_A4_2)
PE_CUT_B4_1<-data.frame(length=c(1:length(PE_CUT_B4_1)),PE_CUT_B4_1)
PE_CUT_B4_2<-data.frame(length=c(1:length(PE_CUT_B4_2)),PE_CUT_B4_2)
PE_CUT_C4_1<-data.frame(length=c(1:length(PE_CUT_C4_1)),PE_CUT_C4_1)
PE_CUT_C4_2<-data.frame(length=c(1:length(PE_CUT_C4_2)),PE_CUT_C4_2)
PE_CUT_D4_1<-data.frame(length=c(1:length(PE_CUT_D4_1)),PE_CUT_D4_1)
PE_CUT_D4_2<-data.frame(length=c(1:length(PE_CUT_D4_2)),PE_CUT_D4_2)
PE_CUT_E4_1<-data.frame(length=c(1:length(PE_CUT_E4_1)),PE_CUT_E4_1)
PE_CUT_E4_2<-data.frame(length=c(1:length(PE_CUT_E4_2)),PE_CUT_E4_2)
PE_CUT_F4_1<-data.frame(length=c(1:length(PE_CUT_F4_1)),PE_CUT_F4_1)
PE_CUT_F4_2<-data.frame(length=c(1:length(PE_CUT_F4_2)),PE_CUT_F4_2)
PE_CUT_G4_1<-data.frame(length=c(1:length(PE_CUT_G4_1)),PE_CUT_G4_1)
PE_CUT_G4_2<-data.frame(length=c(1:length(PE_CUT_G4_2)),PE_CUT_G4_2)
PE_CUT_H4_1<-data.frame(length=c(1:length(PE_CUT_H4_1)),PE_CUT_H4_1)
PE_CUT_H4_2<-data.frame(length=c(1:length(PE_CUT_H4_2)),PE_CUT_H4_2)

FITC_CUT_A5_1<-data.frame(length=c(1:length(FITC_CUT_A5_1)),FITC_CUT_A5_1)
FITC_CUT_A5_2<-data.frame(length=c(1:length(FITC_CUT_A5_2)),FITC_CUT_A5_2)
FITC_CUT_B5_1<-data.frame(length=c(1:length(FITC_CUT_B5_1)),FITC_CUT_B5_1)
FITC_CUT_B5_2<-data.frame(length=c(1:length(FITC_CUT_B5_2)),FITC_CUT_B5_2)
FITC_CUT_C5_1<-data.frame(length=c(1:length(FITC_CUT_C5_1)),FITC_CUT_C5_1)
FITC_CUT_C5_2<-data.frame(length=c(1:length(FITC_CUT_C5_2)),FITC_CUT_C5_2)
FITC_CUT_D5_1<-data.frame(length=c(1:length(FITC_CUT_D5_1)),FITC_CUT_D5_1)
FITC_CUT_D5_2<-data.frame(length=c(1:length(FITC_CUT_D5_2)),FITC_CUT_D5_2)
FITC_CUT_E5_1<-data.frame(length=c(1:length(FITC_CUT_E5_1)),FITC_CUT_E5_1)
FITC_CUT_E5_2<-data.frame(length=c(1:length(FITC_CUT_E5_2)),FITC_CUT_E5_2)
FITC_CUT_F5_1<-data.frame(length=c(1:length(FITC_CUT_F5_1)),FITC_CUT_F5_1)
FITC_CUT_F5_2<-data.frame(length=c(1:length(FITC_CUT_F5_2)),FITC_CUT_F5_2)
FITC_CUT_G5_1<-data.frame(length=c(1:length(FITC_CUT_G5_1)),FITC_CUT_G5_1)
FITC_CUT_G5_2<-data.frame(length=c(1:length(FITC_CUT_G5_2)),FITC_CUT_G5_2)
FITC_CUT_H5_1<-data.frame(length=c(1:length(FITC_CUT_H5_1)),FITC_CUT_H5_1)
FITC_CUT_H5_2<-data.frame(length=c(1:length(FITC_CUT_H5_2)),FITC_CUT_H5_2)

PE_CUT_A5_1<-data.frame(length=c(1:length(PE_CUT_A5_1)),PE_CUT_A5_1)
PE_CUT_A5_2<-data.frame(length=c(1:length(PE_CUT_A5_2)),PE_CUT_A5_2)
PE_CUT_B5_1<-data.frame(length=c(1:length(PE_CUT_B5_1)),PE_CUT_B5_1)
PE_CUT_B5_2<-data.frame(length=c(1:length(PE_CUT_B5_2)),PE_CUT_B5_2)
PE_CUT_C5_1<-data.frame(length=c(1:length(PE_CUT_C5_1)),PE_CUT_C5_1)
PE_CUT_C5_2<-data.frame(length=c(1:length(PE_CUT_C5_2)),PE_CUT_C5_2)
PE_CUT_D5_1<-data.frame(length=c(1:length(PE_CUT_D5_1)),PE_CUT_D5_1)
PE_CUT_D5_2<-data.frame(length=c(1:length(PE_CUT_D5_2)),PE_CUT_D5_2)
PE_CUT_E5_1<-data.frame(length=c(1:length(PE_CUT_E5_1)),PE_CUT_E5_1)
PE_CUT_E5_2<-data.frame(length=c(1:length(PE_CUT_E5_2)),PE_CUT_E5_2)
PE_CUT_F5_1<-data.frame(length=c(1:length(PE_CUT_F5_1)),PE_CUT_F5_1)
PE_CUT_F5_2<-data.frame(length=c(1:length(PE_CUT_F5_2)),PE_CUT_F5_2)
PE_CUT_G5_1<-data.frame(length=c(1:length(PE_CUT_G5_1)),PE_CUT_G5_1)
PE_CUT_G5_2<-data.frame(length=c(1:length(PE_CUT_G5_2)),PE_CUT_G5_2)
PE_CUT_H5_1<-data.frame(length=c(1:length(PE_CUT_H5_1)),PE_CUT_H5_1)
PE_CUT_H5_2<-data.frame(length=c(1:length(PE_CUT_H5_2)),PE_CUT_H5_2)

FITC_CUT_A6_1<-data.frame(length=c(1:length(FITC_CUT_A6_1)),FITC_CUT_A6_1)
FITC_CUT_A6_2<-data.frame(length=c(1:length(FITC_CUT_A6_2)),FITC_CUT_A6_2)
FITC_CUT_B6_1<-data.frame(length=c(1:length(FITC_CUT_B6_1)),FITC_CUT_B6_1)
FITC_CUT_B6_2<-data.frame(length=c(1:length(FITC_CUT_B6_2)),FITC_CUT_B6_2)
FITC_CUT_C6_1<-data.frame(length=c(1:length(FITC_CUT_C6_1)),FITC_CUT_C6_1)
FITC_CUT_C6_2<-data.frame(length=c(1:length(FITC_CUT_C6_2)),FITC_CUT_C6_2)
FITC_CUT_D6_1<-data.frame(length=c(1:length(FITC_CUT_D6_1)),FITC_CUT_D6_1)
FITC_CUT_D6_2<-data.frame(length=c(1:length(FITC_CUT_D6_2)),FITC_CUT_D6_2)
FITC_CUT_E6_1<-data.frame(length=c(1:length(FITC_CUT_E6_1)),FITC_CUT_E6_1)
FITC_CUT_E6_2<-data.frame(length=c(1:length(FITC_CUT_E6_2)),FITC_CUT_E6_2)
FITC_CUT_F6_1<-data.frame(length=c(1:length(FITC_CUT_F6_1)),FITC_CUT_F6_1)
FITC_CUT_F6_2<-data.frame(length=c(1:length(FITC_CUT_F6_2)),FITC_CUT_F6_2)
FITC_CUT_G6_1<-data.frame(length=c(1:length(FITC_CUT_G6_1)),FITC_CUT_G6_1)
FITC_CUT_G6_2<-data.frame(length=c(1:length(FITC_CUT_G6_2)),FITC_CUT_G6_2)
FITC_CUT_H6_1<-data.frame(length=c(1:length(FITC_CUT_H6_1)),FITC_CUT_H6_1)
FITC_CUT_H6_2<-data.frame(length=c(1:length(FITC_CUT_H6_2)),FITC_CUT_H6_2)

PE_CUT_A6_1<-data.frame(length=c(1:length(PE_CUT_A6_1)),PE_CUT_A6_1)
PE_CUT_A6_2<-data.frame(length=c(1:length(PE_CUT_A6_2)),PE_CUT_A6_2)
PE_CUT_B6_1<-data.frame(length=c(1:length(PE_CUT_B6_1)),PE_CUT_B6_1)
PE_CUT_B6_2<-data.frame(length=c(1:length(PE_CUT_B6_2)),PE_CUT_B6_2)
PE_CUT_C6_1<-data.frame(length=c(1:length(PE_CUT_C6_1)),PE_CUT_C6_1)
PE_CUT_C6_2<-data.frame(length=c(1:length(PE_CUT_C6_2)),PE_CUT_C6_2)
PE_CUT_D6_1<-data.frame(length=c(1:length(PE_CUT_D6_1)),PE_CUT_D6_1)
PE_CUT_D6_2<-data.frame(length=c(1:length(PE_CUT_D6_2)),PE_CUT_D6_2)
PE_CUT_E6_1<-data.frame(length=c(1:length(PE_CUT_E6_1)),PE_CUT_E6_1)
PE_CUT_E6_2<-data.frame(length=c(1:length(PE_CUT_E6_2)),PE_CUT_E6_2)
PE_CUT_F6_1<-data.frame(length=c(1:length(PE_CUT_F6_1)),PE_CUT_F6_1)
PE_CUT_F6_2<-data.frame(length=c(1:length(PE_CUT_F6_2)),PE_CUT_F6_2)
PE_CUT_G6_1<-data.frame(length=c(1:length(PE_CUT_G6_1)),PE_CUT_G6_1)
PE_CUT_G6_2<-data.frame(length=c(1:length(PE_CUT_G6_2)),PE_CUT_G6_2)
PE_CUT_H6_1<-data.frame(length=c(1:length(PE_CUT_H6_1)),PE_CUT_H6_1)
PE_CUT_H6_2<-data.frame(length=c(1:length(PE_CUT_H6_2)),PE_CUT_H6_2)

FITC_CUT_A7_1<-data.frame(length=c(1:length(FITC_CUT_A7_1)),FITC_CUT_A7_1)
FITC_CUT_A7_2<-data.frame(length=c(1:length(FITC_CUT_A7_2)),FITC_CUT_A7_2)
FITC_CUT_B7_1<-data.frame(length=c(1:length(FITC_CUT_B7_1)),FITC_CUT_B7_1)
FITC_CUT_B7_2<-data.frame(length=c(1:length(FITC_CUT_B7_2)),FITC_CUT_B7_2)
FITC_CUT_C7_1<-data.frame(length=c(1:length(FITC_CUT_C7_1)),FITC_CUT_C7_1)
FITC_CUT_C7_2<-data.frame(length=c(1:length(FITC_CUT_C7_2)),FITC_CUT_C7_2)
FITC_CUT_D7_1<-data.frame(length=c(1:length(FITC_CUT_D7_1)),FITC_CUT_D7_1)
FITC_CUT_D7_2<-data.frame(length=c(1:length(FITC_CUT_D7_2)),FITC_CUT_D7_2)
FITC_CUT_E7_1<-data.frame(length=c(1:length(FITC_CUT_E7_1)),FITC_CUT_E7_1)
FITC_CUT_E7_2<-data.frame(length=c(1:length(FITC_CUT_E7_2)),FITC_CUT_E7_2)
FITC_CUT_F7_1<-data.frame(length=c(1:length(FITC_CUT_F7_1)),FITC_CUT_F7_1)
FITC_CUT_F7_2<-data.frame(length=c(1:length(FITC_CUT_F7_2)),FITC_CUT_F7_2)
FITC_CUT_G7_1<-data.frame(length=c(1:length(FITC_CUT_G7_1)),FITC_CUT_G7_1)
FITC_CUT_G7_2<-data.frame(length=c(1:length(FITC_CUT_G7_2)),FITC_CUT_G7_2)
FITC_CUT_H7_1<-data.frame(length=c(1:length(FITC_CUT_H7_1)),FITC_CUT_H7_1)
FITC_CUT_H7_2<-data.frame(length=c(1:length(FITC_CUT_H7_2)),FITC_CUT_H7_2)

PE_CUT_A7_1<-data.frame(length=c(1:length(PE_CUT_A7_1)),PE_CUT_A7_1)
PE_CUT_A7_2<-data.frame(length=c(1:length(PE_CUT_A7_2)),PE_CUT_A7_2)
PE_CUT_B7_1<-data.frame(length=c(1:length(PE_CUT_B7_1)),PE_CUT_B7_1)
PE_CUT_B7_2<-data.frame(length=c(1:length(PE_CUT_B7_2)),PE_CUT_B7_2)
PE_CUT_C7_1<-data.frame(length=c(1:length(PE_CUT_C7_1)),PE_CUT_C7_1)
PE_CUT_C7_2<-data.frame(length=c(1:length(PE_CUT_C7_2)),PE_CUT_C7_2)
PE_CUT_D7_1<-data.frame(length=c(1:length(PE_CUT_D7_1)),PE_CUT_D7_1)
PE_CUT_D7_2<-data.frame(length=c(1:length(PE_CUT_D7_2)),PE_CUT_D7_2)
PE_CUT_E7_1<-data.frame(length=c(1:length(PE_CUT_E7_1)),PE_CUT_E7_1)
PE_CUT_E7_2<-data.frame(length=c(1:length(PE_CUT_E7_2)),PE_CUT_E7_2)
PE_CUT_F7_1<-data.frame(length=c(1:length(PE_CUT_F7_1)),PE_CUT_F7_1)
PE_CUT_F7_2<-data.frame(length=c(1:length(PE_CUT_F7_2)),PE_CUT_F7_2)
PE_CUT_G7_1<-data.frame(length=c(1:length(PE_CUT_G7_1)),PE_CUT_G7_1)
PE_CUT_G7_2<-data.frame(length=c(1:length(PE_CUT_G7_2)),PE_CUT_G7_2)
PE_CUT_H7_1<-data.frame(length=c(1:length(PE_CUT_H7_1)),PE_CUT_H7_1)
PE_CUT_H7_2<-data.frame(length=c(1:length(PE_CUT_H7_2)),PE_CUT_H7_2)

FITC_CUT_A8_1<-data.frame(length=c(1:length(FITC_CUT_A8_1)),FITC_CUT_A8_1)
FITC_CUT_A8_2<-data.frame(length=c(1:length(FITC_CUT_A8_2)),FITC_CUT_A8_2)
FITC_CUT_B8_1<-data.frame(length=c(1:length(FITC_CUT_B8_1)),FITC_CUT_B8_1)
FITC_CUT_B8_2<-data.frame(length=c(1:length(FITC_CUT_B8_2)),FITC_CUT_B8_2)
FITC_CUT_C8_1<-data.frame(length=c(1:length(FITC_CUT_C8_1)),FITC_CUT_C8_1)
FITC_CUT_C8_2<-data.frame(length=c(1:length(FITC_CUT_C8_2)),FITC_CUT_C8_2)
FITC_CUT_D8_1<-data.frame(length=c(1:length(FITC_CUT_D8_1)),FITC_CUT_D8_1)
FITC_CUT_D8_2<-data.frame(length=c(1:length(FITC_CUT_D8_2)),FITC_CUT_D8_2)
FITC_CUT_E8_1<-data.frame(length=c(1:length(FITC_CUT_E8_1)),FITC_CUT_E8_1)
FITC_CUT_E8_2<-data.frame(length=c(1:length(FITC_CUT_E8_2)),FITC_CUT_E8_2)
FITC_CUT_F8_1<-data.frame(length=c(1:length(FITC_CUT_F8_1)),FITC_CUT_F8_1)
FITC_CUT_F8_2<-data.frame(length=c(1:length(FITC_CUT_F8_2)),FITC_CUT_F8_2)
FITC_CUT_G8_1<-data.frame(length=c(1:length(FITC_CUT_G8_1)),FITC_CUT_G8_1)
FITC_CUT_G8_2<-data.frame(length=c(1:length(FITC_CUT_G8_2)),FITC_CUT_G8_2)
FITC_CUT_H8_1<-data.frame(length=c(1:length(FITC_CUT_H8_1)),FITC_CUT_H8_1)
FITC_CUT_H8_2<-data.frame(length=c(1:length(FITC_CUT_H8_2)),FITC_CUT_H8_2)

PE_CUT_A8_1<-data.frame(length=c(1:length(PE_CUT_A8_1)),PE_CUT_A8_1)
PE_CUT_A8_2<-data.frame(length=c(1:length(PE_CUT_A8_2)),PE_CUT_A8_2)
PE_CUT_B8_1<-data.frame(length=c(1:length(PE_CUT_B8_1)),PE_CUT_B8_1)
PE_CUT_B8_2<-data.frame(length=c(1:length(PE_CUT_B8_2)),PE_CUT_B8_2)
PE_CUT_C8_1<-data.frame(length=c(1:length(PE_CUT_C8_1)),PE_CUT_C8_1)
PE_CUT_C8_2<-data.frame(length=c(1:length(PE_CUT_C8_2)),PE_CUT_C8_2)
PE_CUT_D8_1<-data.frame(length=c(1:length(PE_CUT_D8_1)),PE_CUT_D8_1)
PE_CUT_D8_2<-data.frame(length=c(1:length(PE_CUT_D8_2)),PE_CUT_D8_2)
PE_CUT_E8_1<-data.frame(length=c(1:length(PE_CUT_E8_1)),PE_CUT_E8_1)
PE_CUT_E8_2<-data.frame(length=c(1:length(PE_CUT_E8_2)),PE_CUT_E8_2)
PE_CUT_F8_1<-data.frame(length=c(1:length(PE_CUT_F8_1)),PE_CUT_F8_1)
PE_CUT_F8_2<-data.frame(length=c(1:length(PE_CUT_F8_2)),PE_CUT_F8_2)
PE_CUT_G8_1<-data.frame(length=c(1:length(PE_CUT_G8_1)),PE_CUT_G8_1)
PE_CUT_G8_2<-data.frame(length=c(1:length(PE_CUT_G8_2)),PE_CUT_G8_2)
PE_CUT_H8_1<-data.frame(length=c(1:length(PE_CUT_H8_1)),PE_CUT_H8_1)
PE_CUT_H8_2<-data.frame(length=c(1:length(PE_CUT_H8_2)),PE_CUT_H8_2)

FITC_CUT_A9_1<-data.frame(length=c(1:length(FITC_CUT_A9_1)),FITC_CUT_A9_1)
FITC_CUT_A9_2<-data.frame(length=c(1:length(FITC_CUT_A9_2)),FITC_CUT_A9_2)
FITC_CUT_B9_1<-data.frame(length=c(1:length(FITC_CUT_B9_1)),FITC_CUT_B9_1)
FITC_CUT_B9_2<-data.frame(length=c(1:length(FITC_CUT_B9_2)),FITC_CUT_B9_2)
FITC_CUT_C9_1<-data.frame(length=c(1:length(FITC_CUT_C9_1)),FITC_CUT_C9_1)
FITC_CUT_C9_2<-data.frame(length=c(1:length(FITC_CUT_C9_2)),FITC_CUT_C9_2)
FITC_CUT_D9_1<-data.frame(length=c(1:length(FITC_CUT_D9_1)),FITC_CUT_D9_1)
FITC_CUT_D9_2<-data.frame(length=c(1:length(FITC_CUT_D9_2)),FITC_CUT_D9_2)
FITC_CUT_E9_1<-data.frame(length=c(1:length(FITC_CUT_E9_1)),FITC_CUT_E9_1)
FITC_CUT_E9_2<-data.frame(length=c(1:length(FITC_CUT_E9_2)),FITC_CUT_E9_2)
FITC_CUT_F9_1<-data.frame(length=c(1:length(FITC_CUT_F9_1)),FITC_CUT_F9_1)
FITC_CUT_F9_2<-data.frame(length=c(1:length(FITC_CUT_F9_2)),FITC_CUT_F9_2)
FITC_CUT_G9_1<-data.frame(length=c(1:length(FITC_CUT_G9_1)),FITC_CUT_G9_1)
FITC_CUT_G9_2<-data.frame(length=c(1:length(FITC_CUT_G9_2)),FITC_CUT_G9_2)
FITC_CUT_H9_1<-data.frame(length=c(1:length(FITC_CUT_H9_1)),FITC_CUT_H9_1)
FITC_CUT_H9_2<-data.frame(length=c(1:length(FITC_CUT_H9_2)),FITC_CUT_H9_2)

PE_CUT_A9_1<-data.frame(length=c(1:length(PE_CUT_A9_1)),PE_CUT_A9_1)
PE_CUT_A9_2<-data.frame(length=c(1:length(PE_CUT_A9_2)),PE_CUT_A9_2)
PE_CUT_B9_1<-data.frame(length=c(1:length(PE_CUT_B9_1)),PE_CUT_B9_1)
PE_CUT_B9_2<-data.frame(length=c(1:length(PE_CUT_B9_2)),PE_CUT_B9_2)
PE_CUT_C9_1<-data.frame(length=c(1:length(PE_CUT_C9_1)),PE_CUT_C9_1)
PE_CUT_C9_2<-data.frame(length=c(1:length(PE_CUT_C9_2)),PE_CUT_C9_2)
PE_CUT_D9_1<-data.frame(length=c(1:length(PE_CUT_D9_1)),PE_CUT_D9_1)
PE_CUT_D9_2<-data.frame(length=c(1:length(PE_CUT_D9_2)),PE_CUT_D9_2)
PE_CUT_E9_1<-data.frame(length=c(1:length(PE_CUT_E9_1)),PE_CUT_E9_1)
PE_CUT_E9_2<-data.frame(length=c(1:length(PE_CUT_E9_2)),PE_CUT_E9_2)
PE_CUT_F9_1<-data.frame(length=c(1:length(PE_CUT_F9_1)),PE_CUT_F9_1)
PE_CUT_F9_2<-data.frame(length=c(1:length(PE_CUT_F9_2)),PE_CUT_F9_2)
PE_CUT_G9_1<-data.frame(length=c(1:length(PE_CUT_G9_1)),PE_CUT_G9_1)
PE_CUT_G9_2<-data.frame(length=c(1:length(PE_CUT_G9_2)),PE_CUT_G9_2)
PE_CUT_H9_1<-data.frame(length=c(1:length(PE_CUT_H9_1)),PE_CUT_H9_1)
PE_CUT_H9_2<-data.frame(length=c(1:length(PE_CUT_H9_2)),PE_CUT_H9_2)

FITC_CUT_A10_1<-data.frame(length=c(1:length(FITC_CUT_A10_1)),FITC_CUT_A10_1)
FITC_CUT_A10_2<-data.frame(length=c(1:length(FITC_CUT_A10_2)),FITC_CUT_A10_2)
FITC_CUT_B10_1<-data.frame(length=c(1:length(FITC_CUT_B10_1)),FITC_CUT_B10_1)
FITC_CUT_B10_2<-data.frame(length=c(1:length(FITC_CUT_B10_2)),FITC_CUT_B10_2)
FITC_CUT_C10_1<-data.frame(length=c(1:length(FITC_CUT_C10_1)),FITC_CUT_C10_1)
FITC_CUT_C10_2<-data.frame(length=c(1:length(FITC_CUT_C10_2)),FITC_CUT_C10_2)
FITC_CUT_D10_1<-data.frame(length=c(1:length(FITC_CUT_D10_1)),FITC_CUT_D10_1)
FITC_CUT_D10_2<-data.frame(length=c(1:length(FITC_CUT_D10_2)),FITC_CUT_D10_2)
FITC_CUT_E10_1<-data.frame(length=c(1:length(FITC_CUT_E10_1)),FITC_CUT_E10_1)
FITC_CUT_E10_2<-data.frame(length=c(1:length(FITC_CUT_E10_2)),FITC_CUT_E10_2)
FITC_CUT_F10_1<-data.frame(length=c(1:length(FITC_CUT_F10_1)),FITC_CUT_F10_1)
FITC_CUT_F10_2<-data.frame(length=c(1:length(FITC_CUT_F10_2)),FITC_CUT_F10_2)
FITC_CUT_G10_1<-data.frame(length=c(1:length(FITC_CUT_G10_1)),FITC_CUT_G10_1)
FITC_CUT_G10_2<-data.frame(length=c(1:length(FITC_CUT_G10_2)),FITC_CUT_G10_2)
FITC_CUT_H10_1<-data.frame(length=c(1:length(FITC_CUT_H10_1)),FITC_CUT_H10_1)
FITC_CUT_H10_2<-data.frame(length=c(1:length(FITC_CUT_H10_2)),FITC_CUT_H10_2)

PE_CUT_A10_1<-data.frame(length=c(1:length(PE_CUT_A10_1)),PE_CUT_A10_1)
PE_CUT_A10_2<-data.frame(length=c(1:length(PE_CUT_A10_2)),PE_CUT_A10_2)
PE_CUT_B10_1<-data.frame(length=c(1:length(PE_CUT_B10_1)),PE_CUT_B10_1)
PE_CUT_B10_2<-data.frame(length=c(1:length(PE_CUT_B10_2)),PE_CUT_B10_2)
PE_CUT_C10_1<-data.frame(length=c(1:length(PE_CUT_C10_1)),PE_CUT_C10_1)
PE_CUT_C10_2<-data.frame(length=c(1:length(PE_CUT_C10_2)),PE_CUT_C10_2)
PE_CUT_D10_1<-data.frame(length=c(1:length(PE_CUT_D10_1)),PE_CUT_D10_1)
PE_CUT_D10_2<-data.frame(length=c(1:length(PE_CUT_D10_2)),PE_CUT_D10_2)
PE_CUT_E10_1<-data.frame(length=c(1:length(PE_CUT_E10_1)),PE_CUT_E10_1)
PE_CUT_E10_2<-data.frame(length=c(1:length(PE_CUT_E10_2)),PE_CUT_E10_2)
PE_CUT_F10_1<-data.frame(length=c(1:length(PE_CUT_F10_1)),PE_CUT_F10_1)
PE_CUT_F10_2<-data.frame(length=c(1:length(PE_CUT_F10_2)),PE_CUT_F10_2)
PE_CUT_G10_1<-data.frame(length=c(1:length(PE_CUT_G10_1)),PE_CUT_G10_1)
PE_CUT_G10_2<-data.frame(length=c(1:length(PE_CUT_G10_2)),PE_CUT_G10_2)
PE_CUT_H10_1<-data.frame(length=c(1:length(PE_CUT_H10_1)),PE_CUT_H10_1)
PE_CUT_H10_2<-data.frame(length=c(1:length(PE_CUT_H10_2)),PE_CUT_H10_2)

FITC_CUT_A11_1<-data.frame(length=c(1:length(FITC_CUT_A11_1)),FITC_CUT_A11_1)
FITC_CUT_A11_2<-data.frame(length=c(1:length(FITC_CUT_A11_2)),FITC_CUT_A11_2)
FITC_CUT_B11_1<-data.frame(length=c(1:length(FITC_CUT_B11_1)),FITC_CUT_B11_1)
FITC_CUT_B11_2<-data.frame(length=c(1:length(FITC_CUT_B11_2)),FITC_CUT_B11_2)
FITC_CUT_C11_1<-data.frame(length=c(1:length(FITC_CUT_C11_1)),FITC_CUT_C11_1)
FITC_CUT_C11_2<-data.frame(length=c(1:length(FITC_CUT_C11_2)),FITC_CUT_C11_2)
FITC_CUT_D11_1<-data.frame(length=c(1:length(FITC_CUT_D11_1)),FITC_CUT_D11_1)
FITC_CUT_D11_2<-data.frame(length=c(1:length(FITC_CUT_D11_2)),FITC_CUT_D11_2)
FITC_CUT_E11_1<-data.frame(length=c(1:length(FITC_CUT_E11_1)),FITC_CUT_E11_1)
FITC_CUT_E11_2<-data.frame(length=c(1:length(FITC_CUT_E11_2)),FITC_CUT_E11_2)
FITC_CUT_F11_1<-data.frame(length=c(1:length(FITC_CUT_F11_1)),FITC_CUT_F11_1)
FITC_CUT_F11_2<-data.frame(length=c(1:length(FITC_CUT_F11_2)),FITC_CUT_F11_2)
FITC_CUT_G11_1<-data.frame(length=c(1:length(FITC_CUT_G11_1)),FITC_CUT_G11_1)
FITC_CUT_G11_2<-data.frame(length=c(1:length(FITC_CUT_G11_2)),FITC_CUT_G11_2)
FITC_CUT_H11_1<-data.frame(length=c(1:length(FITC_CUT_H11_1)),FITC_CUT_H11_1)
FITC_CUT_H11_2<-data.frame(length=c(1:length(FITC_CUT_H11_2)),FITC_CUT_H11_2)

PE_CUT_A11_1<-data.frame(length=c(1:length(PE_CUT_A11_1)),PE_CUT_A11_1)
PE_CUT_A11_2<-data.frame(length=c(1:length(PE_CUT_A11_2)),PE_CUT_A11_2)
PE_CUT_B11_1<-data.frame(length=c(1:length(PE_CUT_B11_1)),PE_CUT_B11_1)
PE_CUT_B11_2<-data.frame(length=c(1:length(PE_CUT_B11_2)),PE_CUT_B11_2)
PE_CUT_C11_1<-data.frame(length=c(1:length(PE_CUT_C11_1)),PE_CUT_C11_1)
PE_CUT_C11_2<-data.frame(length=c(1:length(PE_CUT_C11_2)),PE_CUT_C11_2)
PE_CUT_D11_1<-data.frame(length=c(1:length(PE_CUT_D11_1)),PE_CUT_D11_1)
PE_CUT_D11_2<-data.frame(length=c(1:length(PE_CUT_D11_2)),PE_CUT_D11_2)
PE_CUT_E11_1<-data.frame(length=c(1:length(PE_CUT_E11_1)),PE_CUT_E11_1)
PE_CUT_E11_2<-data.frame(length=c(1:length(PE_CUT_E11_2)),PE_CUT_E11_2)
PE_CUT_F11_1<-data.frame(length=c(1:length(PE_CUT_F11_1)),PE_CUT_F11_1)
PE_CUT_F11_2<-data.frame(length=c(1:length(PE_CUT_F11_2)),PE_CUT_F11_2)
PE_CUT_G11_1<-data.frame(length=c(1:length(PE_CUT_G11_1)),PE_CUT_G11_1)
PE_CUT_G11_2<-data.frame(length=c(1:length(PE_CUT_G11_2)),PE_CUT_G11_2)
PE_CUT_H11_1<-data.frame(length=c(1:length(PE_CUT_H11_1)),PE_CUT_H11_1)
PE_CUT_H11_2<-data.frame(length=c(1:length(PE_CUT_H11_2)),PE_CUT_H11_2)

FITC_CUT_A12_1<-data.frame(length=c(1:length(FITC_CUT_A12_1)),FITC_CUT_A12_1)
FITC_CUT_A12_2<-data.frame(length=c(1:length(FITC_CUT_A12_2)),FITC_CUT_A12_2)
FITC_CUT_B12_1<-data.frame(length=c(1:length(FITC_CUT_B12_1)),FITC_CUT_B12_1)
FITC_CUT_B12_2<-data.frame(length=c(1:length(FITC_CUT_B12_2)),FITC_CUT_B12_2)
FITC_CUT_C12_1<-data.frame(length=c(1:length(FITC_CUT_C12_1)),FITC_CUT_C12_1)
FITC_CUT_C12_2<-data.frame(length=c(1:length(FITC_CUT_C12_2)),FITC_CUT_C12_2)
FITC_CUT_D12_1<-data.frame(length=c(1:length(FITC_CUT_D12_1)),FITC_CUT_D12_1)
FITC_CUT_D12_2<-data.frame(length=c(1:length(FITC_CUT_D12_2)),FITC_CUT_D12_2)
FITC_CUT_E12_1<-data.frame(length=c(1:length(FITC_CUT_E12_1)),FITC_CUT_E12_1)
FITC_CUT_E12_2<-data.frame(length=c(1:length(FITC_CUT_E12_2)),FITC_CUT_E12_2)
FITC_CUT_F12_1<-data.frame(length=c(1:length(FITC_CUT_F12_1)),FITC_CUT_F12_1)
FITC_CUT_F12_2<-data.frame(length=c(1:length(FITC_CUT_F12_2)),FITC_CUT_F12_2)
FITC_CUT_G12_1<-data.frame(length=c(1:length(FITC_CUT_G12_1)),FITC_CUT_G12_1)
FITC_CUT_G12_2<-data.frame(length=c(1:length(FITC_CUT_G12_2)),FITC_CUT_G12_2)
FITC_CUT_H12_1<-data.frame(length=c(1:length(FITC_CUT_H12_1)),FITC_CUT_H12_1)
FITC_CUT_H12_2<-data.frame(length=c(1:length(FITC_CUT_H12_2)),FITC_CUT_H12_2)

PE_CUT_A12_1<-data.frame(length=c(1:length(PE_CUT_A12_1)),PE_CUT_A12_1)
PE_CUT_A12_2<-data.frame(length=c(1:length(PE_CUT_A12_2)),PE_CUT_A12_2)
PE_CUT_B12_1<-data.frame(length=c(1:length(PE_CUT_B12_1)),PE_CUT_B12_1)
PE_CUT_B12_2<-data.frame(length=c(1:length(PE_CUT_B12_2)),PE_CUT_B12_2)
PE_CUT_C12_1<-data.frame(length=c(1:length(PE_CUT_C12_1)),PE_CUT_C12_1)
PE_CUT_C12_2<-data.frame(length=c(1:length(PE_CUT_C12_2)),PE_CUT_C12_2)
PE_CUT_D12_1<-data.frame(length=c(1:length(PE_CUT_D12_1)),PE_CUT_D12_1)
PE_CUT_D12_2<-data.frame(length=c(1:length(PE_CUT_D12_2)),PE_CUT_D12_2)
PE_CUT_E12_1<-data.frame(length=c(1:length(PE_CUT_E12_1)),PE_CUT_E12_1)
PE_CUT_E12_2<-data.frame(length=c(1:length(PE_CUT_E12_2)),PE_CUT_E12_2)
PE_CUT_F12_1<-data.frame(length=c(1:length(PE_CUT_F12_1)),PE_CUT_F12_1)
PE_CUT_F12_2<-data.frame(length=c(1:length(PE_CUT_F12_2)),PE_CUT_F12_2)
PE_CUT_G12_1<-data.frame(length=c(1:length(PE_CUT_G12_1)),PE_CUT_G12_1)
PE_CUT_G12_2<-data.frame(length=c(1:length(PE_CUT_G12_2)),PE_CUT_G12_2)
PE_CUT_H12_1<-data.frame(length=c(1:length(PE_CUT_H12_1)),PE_CUT_H12_1)
PE_CUT_H12_2<-data.frame(length=c(1:length(PE_CUT_H12_2)),PE_CUT_H12_2)

f_cut<-list(FITC_CUT_A1_1, FITC_CUT_A1_2, FITC_CUT_B1_1, FITC_CUT_B1_2, FITC_CUT_C1_1, FITC_CUT_C1_2, FITC_CUT_D1_1, FITC_CUT_D1_2, FITC_CUT_E1_1, FITC_CUT_E1_2, FITC_CUT_F1_1, FITC_CUT_F1_2, FITC_CUT_G1_1, FITC_CUT_G1_2, FITC_CUT_H1_1, FITC_CUT_H1_2, FITC_CUT_A2_1, FITC_CUT_A2_2, FITC_CUT_B2_1, FITC_CUT_B2_2, FITC_CUT_C2_1, FITC_CUT_C2_2, FITC_CUT_D2_1, FITC_CUT_D2_2, FITC_CUT_E2_1, FITC_CUT_E2_2, FITC_CUT_F2_1, FITC_CUT_F2_2, FITC_CUT_G2_1, FITC_CUT_G2_2, FITC_CUT_H2_1, FITC_CUT_H2_2, FITC_CUT_A3_1, FITC_CUT_A3_2, FITC_CUT_B3_1, FITC_CUT_B3_2, FITC_CUT_C3_1, FITC_CUT_C3_2, FITC_CUT_D3_1, FITC_CUT_D3_2, FITC_CUT_E3_1, FITC_CUT_E3_2, FITC_CUT_F3_1, FITC_CUT_F3_2, FITC_CUT_G3_1, FITC_CUT_G3_2, FITC_CUT_H3_1, FITC_CUT_H3_2, FITC_CUT_A4_1, FITC_CUT_A4_2, FITC_CUT_B4_1, FITC_CUT_B4_2, FITC_CUT_C4_1, FITC_CUT_C4_2, FITC_CUT_D4_1, FITC_CUT_D4_2, FITC_CUT_E4_1, FITC_CUT_E4_2, FITC_CUT_F4_1, FITC_CUT_F4_2, FITC_CUT_G4_1, FITC_CUT_G4_2, FITC_CUT_H4_1, FITC_CUT_H4_2, FITC_CUT_A5_1, FITC_CUT_A5_2, FITC_CUT_B5_1, FITC_CUT_B5_2, FITC_CUT_C5_1, FITC_CUT_C5_2, FITC_CUT_D5_1, FITC_CUT_D5_2, FITC_CUT_E5_1, FITC_CUT_E5_2, FITC_CUT_F5_1, FITC_CUT_F5_2, FITC_CUT_G5_1, FITC_CUT_G5_2, FITC_CUT_H5_1, FITC_CUT_H5_2, FITC_CUT_A6_1, FITC_CUT_A6_2, FITC_CUT_B6_1, FITC_CUT_B6_2, FITC_CUT_C6_1, FITC_CUT_C6_2, FITC_CUT_D6_1, FITC_CUT_D6_2, FITC_CUT_E6_1, FITC_CUT_E6_2, FITC_CUT_F6_1, FITC_CUT_F6_2, FITC_CUT_G6_1, FITC_CUT_G6_2, FITC_CUT_H6_1, FITC_CUT_H6_2, FITC_CUT_A7_1, FITC_CUT_A7_2, FITC_CUT_B7_1, FITC_CUT_B7_2, FITC_CUT_C7_1, FITC_CUT_C7_2, FITC_CUT_D7_1, FITC_CUT_D7_2, FITC_CUT_E7_1, FITC_CUT_E7_2, FITC_CUT_F7_1, FITC_CUT_F7_2, FITC_CUT_G7_1, FITC_CUT_G7_2, FITC_CUT_H7_1, FITC_CUT_H7_2, FITC_CUT_A8_1, FITC_CUT_A8_2, FITC_CUT_B8_1, FITC_CUT_B8_2, FITC_CUT_C8_1, FITC_CUT_C8_2, FITC_CUT_D8_1, FITC_CUT_D8_2, FITC_CUT_E8_1, FITC_CUT_E8_2, FITC_CUT_F8_1, FITC_CUT_F8_2, FITC_CUT_G8_1, FITC_CUT_G8_2, FITC_CUT_H8_1, FITC_CUT_H8_2, FITC_CUT_A9_1, FITC_CUT_A9_2, FITC_CUT_B9_1, FITC_CUT_B9_2, FITC_CUT_C9_1, FITC_CUT_C9_2, FITC_CUT_D9_1, FITC_CUT_D9_2, FITC_CUT_E9_1, FITC_CUT_E9_2, FITC_CUT_F9_1, FITC_CUT_F9_2, FITC_CUT_G9_1, FITC_CUT_G9_2, FITC_CUT_H9_1, FITC_CUT_H9_2, FITC_CUT_A10_1, FITC_CUT_A10_2, FITC_CUT_B10_1, FITC_CUT_B10_2, FITC_CUT_C10_1, FITC_CUT_C10_2, FITC_CUT_D10_1, FITC_CUT_D10_2, FITC_CUT_E10_1, FITC_CUT_E10_2, FITC_CUT_F10_1, FITC_CUT_F10_2, FITC_CUT_G10_1, FITC_CUT_G10_2, FITC_CUT_H10_1, FITC_CUT_H10_2, 
            FITC_CUT_A11_1, FITC_CUT_A11_2, FITC_CUT_B11_1, FITC_CUT_B11_2, FITC_CUT_C11_1, FITC_CUT_C11_2, FITC_CUT_D11_1, FITC_CUT_D11_2, FITC_CUT_E11_1, FITC_CUT_E11_2, FITC_CUT_F11_1, FITC_CUT_F11_2, FITC_CUT_G11_1, FITC_CUT_G11_2, FITC_CUT_H11_1, FITC_CUT_H11_2, FITC_CUT_A12_1, FITC_CUT_A12_2, FITC_CUT_B12_1, FITC_CUT_B12_2, FITC_CUT_C12_1, FITC_CUT_C12_2, FITC_CUT_D12_1, FITC_CUT_D12_2, FITC_CUT_E12_1, FITC_CUT_E12_2, FITC_CUT_F12_1, FITC_CUT_F12_2, FITC_CUT_G12_1, FITC_CUT_G12_2, FITC_CUT_H12_1, FITC_CUT_H12_2)
p_cut<-list(PE_CUT_A1_1, PE_CUT_A1_2, PE_CUT_B1_1, PE_CUT_B1_2, PE_CUT_C1_1, PE_CUT_C1_2, PE_CUT_D1_1, PE_CUT_D1_2, PE_CUT_E1_1, PE_CUT_E1_2, PE_CUT_F1_1, PE_CUT_F1_2, PE_CUT_G1_1, PE_CUT_G1_2, PE_CUT_H1_1, PE_CUT_H1_2, PE_CUT_A2_1, PE_CUT_A2_2, PE_CUT_B2_1, PE_CUT_B2_2, PE_CUT_C2_1, PE_CUT_C2_2, PE_CUT_D2_1, PE_CUT_D2_2, PE_CUT_E2_1, PE_CUT_E2_2, PE_CUT_F2_1, PE_CUT_F2_2, PE_CUT_G2_1, PE_CUT_G2_2, PE_CUT_H2_1, PE_CUT_H2_2, PE_CUT_A3_1, PE_CUT_A3_2, PE_CUT_B3_1, PE_CUT_B3_2, PE_CUT_C3_1, PE_CUT_C3_2, PE_CUT_D3_1, PE_CUT_D3_2, PE_CUT_E3_1, PE_CUT_E3_2, PE_CUT_F3_1, PE_CUT_F3_2, PE_CUT_G3_1, PE_CUT_G3_2, PE_CUT_H3_1, PE_CUT_H3_2, PE_CUT_A4_1, PE_CUT_A4_2, PE_CUT_B4_1, PE_CUT_B4_2, PE_CUT_C4_1, PE_CUT_C4_2, PE_CUT_D4_1, PE_CUT_D4_2, PE_CUT_E4_1, PE_CUT_E4_2, PE_CUT_F4_1, PE_CUT_F4_2, PE_CUT_G4_1, PE_CUT_G4_2, PE_CUT_H4_1, PE_CUT_H4_2, PE_CUT_A5_1, PE_CUT_A5_2, PE_CUT_B5_1, PE_CUT_B5_2, PE_CUT_C5_1, PE_CUT_C5_2, PE_CUT_D5_1, PE_CUT_D5_2, PE_CUT_E5_1, PE_CUT_E5_2, PE_CUT_F5_1, PE_CUT_F5_2, PE_CUT_G5_1, PE_CUT_G5_2, PE_CUT_H5_1, PE_CUT_H5_2, PE_CUT_A6_1, PE_CUT_A6_2, PE_CUT_B6_1, PE_CUT_B6_2, PE_CUT_C6_1, PE_CUT_C6_2, PE_CUT_D6_1, PE_CUT_D6_2, PE_CUT_E6_1, PE_CUT_E6_2, PE_CUT_F6_1, PE_CUT_F6_2, PE_CUT_G6_1, PE_CUT_G6_2, PE_CUT_H6_1, PE_CUT_H6_2, PE_CUT_A7_1, PE_CUT_A7_2, PE_CUT_B7_1, PE_CUT_B7_2, PE_CUT_C7_1, PE_CUT_C7_2, PE_CUT_D7_1, PE_CUT_D7_2, PE_CUT_E7_1, PE_CUT_E7_2, PE_CUT_F7_1, PE_CUT_F7_2, PE_CUT_G7_1, PE_CUT_G7_2, PE_CUT_H7_1, PE_CUT_H7_2, PE_CUT_A8_1, PE_CUT_A8_2, PE_CUT_B8_1, PE_CUT_B8_2, PE_CUT_C8_1, PE_CUT_C8_2, PE_CUT_D8_1, PE_CUT_D8_2, PE_CUT_E8_1, PE_CUT_E8_2, PE_CUT_F8_1, PE_CUT_F8_2, PE_CUT_G8_1, PE_CUT_G8_2, PE_CUT_H8_1, PE_CUT_H8_2, PE_CUT_A9_1, PE_CUT_A9_2, PE_CUT_B9_1, PE_CUT_B9_2, PE_CUT_C9_1, PE_CUT_C9_2, PE_CUT_D9_1, PE_CUT_D9_2, PE_CUT_E9_1, PE_CUT_E9_2, PE_CUT_F9_1, PE_CUT_F9_2, PE_CUT_G9_1, PE_CUT_G9_2, PE_CUT_H9_1, PE_CUT_H9_2, PE_CUT_A10_1, PE_CUT_A10_2, PE_CUT_B10_1, PE_CUT_B10_2, PE_CUT_C10_1, PE_CUT_C10_2, PE_CUT_D10_1, PE_CUT_D10_2, PE_CUT_E10_1, PE_CUT_E10_2, PE_CUT_F10_1, PE_CUT_F10_2, PE_CUT_G10_1, PE_CUT_G10_2, PE_CUT_H10_1, PE_CUT_H10_2, 
            PE_CUT_A11_1, PE_CUT_A11_2, PE_CUT_B11_1, PE_CUT_B11_2, PE_CUT_C11_1, PE_CUT_C11_2, PE_CUT_D11_1, PE_CUT_D11_2, PE_CUT_E11_1, PE_CUT_E11_2, PE_CUT_F11_1, PE_CUT_F11_2, PE_CUT_G11_1, PE_CUT_G11_2, PE_CUT_H11_1, PE_CUT_H11_2, PE_CUT_A12_1, PE_CUT_A12_2, PE_CUT_B12_1, PE_CUT_B12_2, PE_CUT_C12_1, PE_CUT_C12_2, PE_CUT_D12_1, PE_CUT_D12_2, PE_CUT_E12_1, PE_CUT_E12_2, PE_CUT_F12_1, PE_CUT_F12_2, PE_CUT_G12_1, PE_CUT_G12_2, PE_CUT_H12_1, PE_CUT_H12_2)

summary_F_CUT=data.frame(length=c(1:5000))
z=1
for(i in 0:191){
  if(length(f_cut[[i+1]])<2)
  {i=i+1;
  next}
  else{z=i+1;
  summary_F_CUT=merge(summary_F_CUT, f_cut[z], by="length", all=T)}}

summary_P_CUT =data.frame(length=c(1:5000))
z=1
for(i in 0:191){
  if(length(p_cut[[i+1]])<2)
  {i=i+1;
  next}
  else{z=i+1;
  summary_P_CUT =merge(summary_P_CUT, p_cut[z], by="length", all=T)}}


summary_length<-c(length(FITC_CUT_A4_1$length),length(FITC_CUT_B4_1$length),length(FITC_CUT_C4_1$length),length(FITC_CUT_D4_1$length),length(FITC_CUT_E4_1$length),length(FITC_CUT_F4_1$length),length(FITC_CUT_G4_1$length),length(FITC_CUT_H4_1$length),length(FITC_CUT_A4_2$length),length(FITC_CUT_B4_2$length),length(FITC_CUT_C4_2$length),length(FITC_CUT_D4_2$length),length(FITC_CUT_E4_2$length),length(FITC_CUT_F4_2$length),length(FITC_CUT_G4_2$length),length(FITC_CUT_H4_2$length))

write.xlsx(name, file="Post.xlsx", sheetName = "name", append = TRUE)
write.xlsx(summary_F_CUT, file="Post.xlsx", sheetName = "FITC_post", append = TRUE)
write.xlsx(summary_P_CUT, file="Post.xlsx", sheetName = "PE_post", append = TRUE)
write.xlsx(summary_length, file="Post.xlsx", sheetName = "length_post", append = TRUE)
