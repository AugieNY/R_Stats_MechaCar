library(dbplyr)
library(tidyverse)
MechaCar <- read.csv(file = 'MechaCar_mpg.csv', check.names= F, stringsAsFactors = F)

linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) # Perform Linear Regression with the six variables/columns
summary_lm <- summary(linear_regression) # get p-value and r-squared value of the linear regression. 

Sus_coil <- read.csv(file = 'Suspension_coil.csv', check.names = F, stringsAsFactors =F) #read in the suspension_coil table

total_summary <- Sus_coil %>% summarise(mean_psi=mean(PSI),Median_PSI=median(PSI),sd_psi = sd(PSI), var_psi=var(PSI),.groups='keep')

lot_summary <- Sus_coil %>% group_by(Manufacturing_Lot) %>% summarise(mean_psi=mean(PSI),Median_PSI=median(PSI),sd_psi = sd(PSI), var_psi=var(PSI),.groups='keep')

psi_lots <- t.test(Sus_coil$PSI,mu=1500) 
psi_lot1 <- t.test(Sus_coil$PSI, Sus_coil$Manufacturing_Lot=='Lot 1',mu=1500)
psi_lot2 <- t.test(Sus_coil$PSI, Sus_coil$Manufacturing_Lot=='Lot 2',mu=1500)
psi_lot3 <- t.test(Sus_coil$PSI, Sus_coil$Manufacturing_Lot=='Lot 3',mu=1500)
