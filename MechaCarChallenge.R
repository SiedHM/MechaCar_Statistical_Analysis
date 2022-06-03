
# Deliverable 1

# 1 download the data
#2. Create a new RScript in your R source pane, name it MechaCarChallenge.RScript
#3 import libraries
library(tidyverse)
library(dplyr) 
# 4 import and read data
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# View the head of the data
head(MechaCar_mpg)


# 5 Perform linear regression using the lm() function
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# 6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) 



# Deliverable 2

# 1.  Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#  View the head of the data
      
head(Suspension_Coil)


# 3. creates a total_summary dataframe using the summarize() function

total_summary= Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(total_summary)

# 4.  creates a lot_summary dataframe using the group_by() and the summarize()

lot_summary=Suspension_Coil %>%group_by( Manufacturing_Lot ) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
print(lot_summary)


# Deliverable-3
# 1. t.test() function to determine if the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch.

t_test=t.test(Suspension_Coil$PSI,mu=1500) 
print(t_test)

#2. write three more RScripts in your MechaCarChallenge.RScript using the t.test() function
# and its subset() argument to determine if the PSI for each manufacturing lot 
# is statistically different from the population mean of 1,500 pounds per square inch.

# filtering the three lots using the subset function
lot1=subset(Suspension_Coil,  Manufacturing_Lot=="Lot1")
lot2=subset(Suspension_Coil,Manufacturing_Lot=="Lot2")
lot3=subset(Suspension_Coil,Manufacturing_Lot=="Lot3")

# using t-test to check if each PSI is different from the population mean of 1,500 pounds per square inch.
t_test1=t.test(lot1$PSI,mu=1500) 
t_test2=t.test(lot2$PSI,mu=1500)
t_test3=t.test(lot3$PSI,mu=1500)

# print test results
print(t_test1)
print(t_test2)
print(t_test3)




