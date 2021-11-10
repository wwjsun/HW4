#Create tables for the project 

here::i_am("R/Table_Redo.R")

library(gtsummary)

#read in the data
Num_of_Redo <- read.csv(file='Num_of_Redo.csv', header=TRUE)


#Table 
#create a subset of dataset select variable that are interested
Sub_Num_Redo <- Num_of_Redo %>% select(MR, Patient_Age, 
                                       Male, pre_CVA, Diabetes,
                                       HTN, Cross_clamp_time, 
                                       Mort_30d)
#create the table
Table_Redo <- Sub_Num_Redo %>% tbl_summary(by = MR) %>% add_p()


