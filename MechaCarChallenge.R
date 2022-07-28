### Challenge 15: Deliverable 1

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# View Dataframe
View(mechacar_table)

# 5. Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

# 6. Using the summary() function, determine the p-value and the r-squared value 
# for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

# Deliverable 2

# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suscoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suscoil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), VAR_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suscoil_table %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), VAR_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# Deliverable 3

# 1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function
# to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suscoil_table$PSI,mu=1500)

# 2. Write three more scripts using the t.test() function and its subset() argument 
# to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# Use subset to isolate each lot
lot1 <- subset(suscoil_table,Manufacturing_Lot=="Lot1")
lot2 <- subset(suscoil_table,Manufacturing_Lot=="Lot2")
lot3 <- subset(suscoil_table,Manufacturing_Lot=="Lot3")

# t.test for each lot
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
