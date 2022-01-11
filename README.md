# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- The variables with non-random amount of variance to mpg values are vehicle_length and ground_clearance
- The R-squared value of the dataset is equal to .7149.
  - As such it should not be considered 0
- This linear model should predict the mpg of MechaCar prototypes effectively since the p-value of the dataset provided is equal to 5.53e-11 which indicates a strong correlation

## Summary Statistics on Suspension Coils

<p align="center">
  <img src="https://github.com/coleherman370/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png"/>
</p>
<p align="center">
  <img src="https://github.com/coleherman370/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png"/>
</p>

- If the specifications for the suspesion coils dictate that the variance for the PSI must not exceed 100 pounds per square inch then the results are varied
  - As a total, the variance is an acceptable 62.29 pounds per square inch
  - However, when reviewing each lot it appears that only Lots 1 and 2 are within acceptable limits of .98 and 7.47 while Lot 3 is not within an acceptable range with a variance of 170.29

## T-Tests on Suspension Coils

- The p-value of the sample t test for the complete dataset is  0.06028 indicating that there is not a correlation among the total dataset
- The p-value when performing a t test using a subset Lot 1 1 indicating that there is a no correlation between the PSI of the Lot 1 subset
- The p-value when performing a t test using a subset Lot 2 .6072 indicating that there is a weak correlation between the PSI of the Lot 2 subset
- The p-value when performing a t test using a subset Lot 3 .04168 indicating that there is a strong correlation between the PSI of the Lot 3 subset

## Study Design: MechaCar vs Competition

A statistical comparison of MechaCar to it's competitors should compare the performance of the MechaCar prototypes mpg to competitor cars mpg. This would help determine which prototype is going to be most competitive in terms of mpg to MechaCar's competitors. The null hypothesis would be that MechaCar has no difference to the competition vehicles mpg. The alternative hypothesis would be that MechaCar prototypes differ from the competitions mpg. The best tests for this comparison would be to perform Correlation tests where MechaCar prototypes' vehicle length, weight, ground clearance, and AWD are all similar competitor vehicle. In order to perform this correlation test, a dataset of specifications of competitor vehicles similar to the one available for MechaCar would need to retrieved.