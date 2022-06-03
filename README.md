# Challenge 15
Sied H. Mohamed

# Overview of the study
This project is based on data from AutosRUs’, a car dealer company, which recently produces newest prototype vehicle called MechaCar. The company was suffering production troubles with this newest types and I may help the company to improve its production process by analyzing the performance of car type using the mileage per gallon(mpg) and other vehicle characteristics.  More specifically, in this project, I will
-	perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
-	collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
-	run t-tests to determine if the manufacturing lots are statistically different from the mean population
-	design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Table-1](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/Linear%20Regression%20to%20Predict%20MPG.png)

From the above results, we can see that the variables,”vehicle_length” and “vehicle clearance” are statistically significant at 1 percent level of significance, which means  these two variables provided a non-random amount of variance to the mpg values in the dataset. If we set null hypotheses of the population coefficients of each of the variables equal zero against the alternative hypotheses that the population coefficients of each variables is different from zero, and we set a 5% level of significance, we reject the null hypotheses for ,”vehicle_length” and “vehicle clearance” but we fail to reject null hypotheses of remaining two variables(vehicle_weight and spoiler_angle). “ vehicle_weight “ and “ spoiler_angle “ provided a random amount of variance to the mpg values in the dataset. 

Since the model is a multiple regression equation, it does not have a single coefficient. It has multiple slope coefficients and we have slope coefficients that are considered as zeros(vehicle_weight and spoiler_angle) because both are statistically insignificant at 5% level of significance and slopes of  “vehicle_length” and “vehicle clearance” are different from zero as we reject the null hypothesis of zero coefficient. 

The R2 result shows that about 71% of variation of mpg of MechaCar is attributed to the variation of all the variables in the multiple regression model which is an indication that the linear model fits well to the mpg of MechaCar prototypes. Further, the F-test result of the model has a p-value of zero and implies that the selected variables jointly predict mpg of MechaCar prototypes. 
 
## Summary Statistics on Suspension Coils

![total_summary](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)


![lot_summary](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)


![t-testAggricate](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20PSI%20across%20all%20manufacturing%20lots.png)

![lot1ttest](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot1.png)

![lot2 t-test](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot2.png)

![lot3-t-test](https://github.com/SiedHM/MechaCar_Statistical_Analysis/blob/main/images/t-test%20of%20lot3.png)


