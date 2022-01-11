library(dbplyr)
library(jsonlite)
library(tidyverse)

# Deliverable 1
# Import mecha car data from csv
mechaCarMPG <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import used car dataset

# Linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMPG)
# Summary of linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMPG))

# Deliverable 2
# Import suspension coil data from csv
susCoil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import used car dataset

# Create total summary table of suspension coil dataset
total_summary <- susCoil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table
# Create lot summary table of suspension coil dataset
lot_summary <- susCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table

# Deliverable 3
# Create t test using sample of total
t.test(susCoil$PSI,mu=1500) #compare sample versus population means
# Create t test using subsets
t.test(subset(susCoil,Manufacturing_Lot == 'Lot1')$PSI,mu=1500)
t.test(subset(susCoil,Manufacturing_Lot == 'Lot2')$PSI,mu=1500)
t.test(subset(susCoil,Manufacturing_Lot == 'Lot3')$PSI,mu=1500)