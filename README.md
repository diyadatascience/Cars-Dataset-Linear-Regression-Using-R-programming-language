
# Car Price Analysis Using R

This repository contains the analysis of the Cars93 dataset using R. The project aims to understand the factors influencing car prices through statistical methods and visualizations.

### Contents
- **R Assignment DIYA PATEL R SCRIPT.R**: This R script contains the code used for analyzing the Cars93 dataset. It includes data preparation, model building, exploratory data analysis, and validation steps.
- **R Report.docx**: A comprehensive report detailing the analysis of the Cars93 dataset. It covers the introduction, dataset description, data preparation, model building, exploratory data analysis, identifying influential factors, multicollinearity assessment, model refinement, model utility test, and model validation.
- **README.md**: Provides an overview of the project, including detailed descriptions of the components and how to use them.

### Project Overview
The automotive industry is a cornerstone of the global economy, and understanding the variables influencing car prices is crucial for consumers, manufacturers, and stakeholders alike. This project presents a comprehensive analysis of the Cars93 dataset, which includes data on 93 different cars for the 1993 model year. The dataset provides a variety of variables, from manufacturer and price to engine size and fuel efficiency, offering a rich field for statistical exploration.

### Objectives
- Identify the most significant factors affecting the price of a car using multiple linear regression analysis in R.
- Tackle potential multicollinearity issues within the explanatory variables to refine our model and improve accuracy.
- Visualize the distribution of car prices and the relationship between price and other significant variables using ggplot2 in R.
- Implement and demonstrate basic algorithmic computations in R, including calculating a summation series and factorials and finding the minimum value in a data structure without using built-in functions.
- Create visual representations of data using R's ggplot2 library, explicitly focusing on the distribution of factors contributing to car prices.

### Detailed Description

#### 1. Introduction
The project begins with an introduction to the automotive industry and the importance of understanding car prices. The report sets the context for the analysis and outlines the objectives.

#### 2. Description of the Dataset
The Cars93 dataset is a comprehensive collection of data regarding 93 cars from the 1993 model year included in the MASS package for R. It serves as a rich resource for statistical analysis, offering a wide range of variables that reflect both the technical specifications and market-related aspects of these vehicles.

#### 3. Data Preparation
The dataset was imported into the R environment using the MASS package. Missing values were handled by replacing them with column means for continuous variables to retain as much data as possible without introducing substantial bias.

#### 4. Model Building
The objective was to identify how various car attributes predict the car's market price. A linear regression model was constructed with price as the dependent variable and all other variables as independent predictors.

#### 5. Exploratory Data Analysis (EDA)
Various visualizations, such as scatter plots and histograms, were created to understand the distribution of car prices and the relationships between price and other variables. Key plots include:
- Price vs. Min. Price
- Distribution of Car Prices
- Residuals vs. Fitted Values from the Linear Model

#### 6. Identifying Influential Factors in Car Prices
The analysis identified "Min.Price", "Max.Price", and "EngineSize" as the most significant predictors of car prices within the Cars93 dataset.

#### 7. Multicollinearity Assessment
Multicollinearity was assessed by computing the Variance Inflation Factor (VIF) for each predictor in the model to identify and address any potential issues.

#### 8. Model Refinement
Stepwise regression using the Akaike Information Criterion (AIC) was employed to refine the model by automatically adding or removing variables to find an optimal model.

#### 9. Model Utility Test
An ANOVA test was conducted to determine whether the differences in the residuals of the initial and refined models were statistically significant.

#### 10. Model Validation
The final step involved validating the refined model by analyzing residuals, calculating confidence intervals, and ensuring the accuracy of predictions.

