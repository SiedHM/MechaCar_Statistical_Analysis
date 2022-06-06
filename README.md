# Challenge 15
Sied H. Mohamed

# Overview of the study
This project is based on data from AutosRUs’, a car dealer company, which recently produces newest prototype vehicle called MechaCar. The company was suffering production troubles with this newest types and I may help the company to improve its production process by analyzing the performance of car type using the mileage per gallon(mpg) and other vehicle characteristics.  More specifically, in this project, I will
-	perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
-	collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
-	run t-tests to determine if the manufacturing lots are statistically different from the mean population
-	design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis,I write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Table-1](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/Linear%20Regression%20to%20Predict%20MPG.png)

From the above results, we can see that the variables,”vehicle_length” and “vehicle clearance” are statistically significant at 1 percent level of significance, which means  these two variables provided a non-random amount of variance to the mpg values in the dataset. If we set null hypotheses of the population coefficients of each of the variables equal zero against the alternative hypotheses that the population coefficients of each variables is different from zero, and we set a 5% level of significance, we reject the null hypotheses for ,”vehicle_length” and “vehicle clearance” but we fail to reject null hypotheses of remaining two variables(vehicle_weight and spoiler_angle). “ vehicle_weight “ and “ spoiler_angle “ provided a random amount of variance to the mpg values in the dataset. 

Since the model is a multiple regression equation, it does not have a single coefficient. It has multiple slope coefficients and we have slope coefficients that are considered as zeros(vehicle_weight and spoiler_angle) because both are statistically insignificant at 5% level of significance and slopes of  “vehicle_length” and “vehicle clearance” are different from zero as we reject the null hypothesis of zero coefficient. 

The R2 result shows that about 71% of variation of mpg of MechaCar is attributed to the variation of all the variables in the multiple regression model which is an indication that the linear model fits well to the mpg of MechaCar prototypes. Further, the F-test result of the model has a p-value of zero and implies that the selected variables jointly predict mpg of MechaCar prototypes. 
 
## Summary Statistics on Suspension Coils

### total summary 

![total_summary](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

Evaluating the suspension coil’s  of all the manufacturing lots against the design specifications for the MechaCar suspension coils, the result above  shows that at an aggregate level, the MechaCar suspension coils meet the design specification as the variance is below 100. 

###  lot_summary
However, looking at individual lots, the third lot(lot3) does not meet the design specification of variance at are below 100. Lot1 and Lot2 meet the specification design.  

![lot_summary](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)


### T-test of  all manufacturing lot 

 The test result shows that PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch at 5% level of significance as the P-value is above 5%

![t-testAggricate](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20PSI%20across%20all%20manufacturing%20lots.png)

### T-test of each  each manufacturing lot 

The t-test for each lots also results similar as the above result except for Lot-3.  Lot3 ‘s sample mean is different from the population mean at 5% level of significance  as the p-valve is below 5% level of significance.
#### Lot-1

![lot1ttest](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot1.png)

#### Lot-2

![lot2 t-test](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot2.png)

#### Lot-3

![lot3-t-test](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot3.png)

The vehicle market is very competitive and there may be several factors that determine the competitiveness of MechaCar. This may include highway fuel efficiency, horse power, safety rating, resale value of the car, payment options etc.
In order to study the competitiveness of MechaCar against competitors, I will need to depend not just a single variable, but on two or more variables to reduce the omitted variable bias, a bias that comes from omission of relevant and related variable from the model of analysis.   The following are the metrices/ variables I will use
-	highway fuel efficiency 
-	resale value of the car,
-	 safety rating
The following are individual  null and alternative hypothesis are set
 ### highway fuel efficiency 
-	H0: highway fuel efficiency of MechaCar is less than or equal to highway fuel efficiency of an equivalent model from Toyota 
-	Ha: highway fuel efficiency of MechaCar is   higher than   highway fuel efficiency of an equivalent model from Toyota
    ### resale value of the car
-	 H0: The resale value MechaCar is less than or equal to the resale value of an equivalent model from Toyota 
-	Ha: The resale value MechaCar is higher than   resale value of an equivalent model from Toyota

####  safety rating
-	 H0: The safety rating MechaCar is less than or equal to the safety rating of an equivalent model from Toyota 
-	Ha: The safety rating MechaCar is higher than   safety rating of an equivalent model from Toyota

As I will be using two samples from different populations (Toyota and MechaCar are two different groups), I will used the paired two sample one sided (one tail) t- test to make the decision.
If the generated P-value is less that the 5% level of significance, I will reject the null hypothesis otherwise, I will fail to reject the null hypothesis.
In order to conduct these hypothesizes, we need data sources.  We need data on highway mpg, safety rating and resale value. I will collect this information from the companies and online data sources.    




