# MechaCar_Statistical_Analysis

## Overview

The purpose of this assignment was to review the production data for MechaCar prototypes in order to surface insights that may help MechaCar’s manufacturing team.

More specifically, the analysis involves the the following work:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a summary interpretation of the findings.

- - - - 

## Linear Regression to Predict MPG

### Results in RStudio

![Del 1 lm screenshot](https://user-images.githubusercontent.com/103781847/181644866-016ac7f6-6d84-4859-8096-2fe9a09be650.png)

<img width="835" alt="Del 1 summary screenshot" src="https://user-images.githubusercontent.com/103781847/181644883-542c4174-f7b5-4e4c-8c9e-6b64b0ffb8bc.png">

### Conclusions

1. 	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words, vehicle length and ground clearance have a significant impact on mpg.

2. Is the slope of the linear model considered to be zero? Why or why not?

The p-value of our linear regression analysis is 5.77 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, because the slope of our linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

From our linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variability of our dependent variable (mpg) is explained using this model. While this linear model does effectively predict the mpg of MechaCar Prototypes, there could be a way to create an even more effective model, depending on the level of accuracy we want to attain.

- - - -

## Summary Statistics on Suspension Coils

### Question to answer through summary statistics:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Results:

#### Total Summary:

<img width="431" alt="Del 2 total_summary screenshot" src="https://user-images.githubusercontent.com/103781847/181645605-c7bdade6-f921-4c41-8da2-a7408182a9d3.png">

#### Summary by Lot:

<img width="549" alt="Del 2 lot_summary screenshot" src="https://user-images.githubusercontent.com/103781847/181645621-951b0178-8563-415a-8057-8530753c3338.png">


In total yes, but not for each lot individually. The variance for all lots overall is ~62.29 PSI. The variance for Lot1 and Lot2 is ~0.98 and ~7.47, respectively. However, the variance for Lot3 is ~170.29, which greatly exceeds the threshold of 100 PSI.

- - - -

## T-Tests on Suspension Coils

Using my knowledge of R, I performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### Population Summary: 

The p-value = 0.06028, so it is in fact higher than a 0.05 significance level. In other words, we do not have sufficient evidence to reject the null hypothesis, and the two means are statistically similar.

<img width="453" alt="Del 3 Pop TTest Screenshot" src="https://user-images.githubusercontent.com/103781847/181645941-bd80569b-1d19-4a49-bf6a-0d3131708075.png">

### Lot1 Summary: 

The p-value = 1, so it is much higher than a 0.05 significance level. As such, there isn’t enough evidence to reject the null hypothesis.

<img width="442" alt="Del 3 Lot1 TTest Screenshot" src="https://user-images.githubusercontent.com/103781847/181645967-c41e7340-c7d3-4abb-a870-a339bef9c282.png">

### Lot2 Summary: 

The p-value = 0.6072, so it is much higher than a 0.05 significance level. As with Lot1, there also isn’t enough evidence to reject the null hypothesis for Lot2.

<img width="411" alt="Del 3 Lot2 TTest Screenshot" src="https://user-images.githubusercontent.com/103781847/181645986-bb8ba2c2-ca0f-44eb-8bb6-abfdab18e4b8.png">

### Lot3 Summary: 

The p-value = 0.04168, which is just below the 0.05 significance level. This supports the data we pulled in Deliverable 2 and gives us an indicator to more closely examine Lot3, which may not be usable because of the difference in it’s PSI from the population PSI mean. 

<img width="412" alt="Del 3 Lot3 TTest Screenshot" src="https://user-images.githubusercontent.com/103781847/181646000-b0b9d189-12eb-4ce5-97e5-465f3617d9f5.png">

- - - - 

## Study Design: MechaCar vs Competition

* What metric or metrics are you going to test?

From a consumer perspective, the metrics that would likely have the most influence in their buying decisions are cost, fuel efficiency and the safety rating. However, due to the increase in gas prices that is unlikely to drop any time soon, especially with the Russian war in Ukraine, I would focus the study on comparing the average mpg for the MechaCar prototype vs competitor’s vehicles that are in the same class. 

* What is the null hypothesis or alternative hypothesis?

Null Hypothesis (H0): There is no statistical difference between the two observed sample means, ie: MechaCar and their competitors.

Alternative Hypothesis (Ha): There is a statistical difference between the two observed sample means, ie: between MechaCar and their competitors.

* What statistical test would you use to test the hypothesis? And why?

I would do a two-sample t-test on the mean mpg for MechaCar and the mean mpg for competitor’s cars in the same class.

* What data is needed to run the statistical test?

We need the mpg data for MechaCar across lots, as well as the mpg for our competitors. We can utilize the “mpg” dataset, which contains fuel economy data from the EPA for vehicles manufactured between 1999 and 2008. The mpg dataset is built into R, which makes it really efficient to tap into. 

