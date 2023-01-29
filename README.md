# R_Stats_MechaCar
For this project, we are tasked to review production data of the MechaCar, a prototype suffering from production trouble blocking further progress. 
We will;
- perform mulitple linear regression analysis to identify the variables predicting the mpg of MechaCar,
- collect summary statistics on PSI of suspension coils,
- run t-tests to determine if the mean population is different from the manufacturing lots
- design a statisticl study to compare the MechaCar performance vs other manufacturers' cars. 

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on MPG.
The Intercept is also significant at 0.001, which means there are factors not available in the dataset that contribute to the MPG value.

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero because there is significant relationship between 2 independent variables (vehicle length and ground clearance) and the dependent variable (mpg).

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The Multiple R-squared value is 0.7149. Hence, the model predicts MPG of MechaCar effectively at a 71% rate. But as mentioned above there could be more factors not included in this dataset that can be used to make a better prediction.

## Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/75656368/215297803-04670f4c-c5fe-423a-bfe6-f50945df4f5e.png)
![image](https://user-images.githubusercontent.com/75656368/215297795-345571ea-df49-4290-8d10-9c5581324dd9.png)

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Based on the results (shown above), the manufacturing lots when grouped together meet the design specification as the variance on PSI is 76.

Individually, lot 1 and lot 2 are meeting the design specifications as they have the variance on PSI as 1 and 10 respectively. However, with variance on PSI as 220, lot 3 does not meet the design specification.

##  T-Tests on Suspension Coils
We did 4 t-test on the suspension coils. 
NULL Hypothesis: There is no significant difference between the mean PSI of all manufacturing lots and individual lots and population mean of 1500 PSI.
Alternate Hypothesis: There is significant difference between the mean PSI of all manufacturing lots and population mean of 1500 PSI
The significance value we are considering is 0.05.

The first t-test is a general one, we are verifying the null hypothesis. Since the p-value is 0.06, more than our significance value of 0.05, we FAIL to reject the NULL hypothesis for all manufacturing lots grouped together, but not by much. 
![image](https://user-images.githubusercontent.com/75656368/215297953-ab1c29a9-34d1-4331-91c4-c98c19daa7fb.png)

We followed the same method but added a subset for each lots (1, 2, and 3) to have the 3 others t-test.
Lot 1: 0.06
Lot 2: 0.06
Lot 3: 0.06

The p-value is identical for all lots, as it is to the grouped p-value.  Given the trend (very close to the p-value), we have enough evidence to reject the null hypothesis. 
There is a significant difference between the mean PSI and population mean. 

Results for all three are shown below:
![image](https://user-images.githubusercontent.com/75656368/215298374-4f9e8230-c483-4464-bbd9-a59a2fcacfc3.png)

## Study Design: MechaCar vs Competition
We now want to quantify how the MechaCar performs against the competition. In our study design, we are thinking of metrics that would interest consumers and motivate them to buy MechaCar vehicles based on data.

### Metrics we are going to test with the population
We want to test the following metrics; 
- Mechanic support and store distribution (# of store(s) per habitant in each state)
- Cost of maintenance
- Number of revisions needed per year

### Hypothesis
Our null hypothesis is that with close by support store, and a low cost of maintenance coupled with a few revisions needed per year, AutosRus is the number one car manufacturer against its competitor.
The alternative hypothesis is that we only are checking 2 out of 3 criterias (metrics) and aren't fully number one in all categories.

### Statistical test
For this analysis, we will perform the ANOSIM test, since we will report on a categorical variable: geography with store per state. And quantitative groups from different populations (# of revisions per car per manufacturer as well as cost of maintenance).

### Data needed
In order to perform that analysis we will need the number of store per US State per car manufacturer. We will also need to get data from car manufacturer on how manu revisions per car type and make assumptions (or averages) per car manufacturer.
The cost of maintenance will be partly coming from manufacturer data but also a population poll (to have a non-favorized data set).

