# account-default-classification

How to Use This Repository:
Review the SAS script to understand the data processing and modeling steps.
Refer to the Word document for a detailed walkthrough of the analysis.
Use the findings and methodologies as a reference for similar classification problems.

This repository contains an in-depth analysis of the Default.csv dataset using logistic regression in SAS Studio. The project simulates a real-world scenario where we are analyzing credit card default data to build a predictive model.

This repo showcases the application of logistic regression for classification tasks in a financial context. It provides a practical example of how to:

Explore and summarize data.
Perform conditional analyses.
Build and interpret a logistic regression model.
Make data-driven predictions.

Key Components:
Summary Statistics and Histograms:

Generated for the variables balance and income across the entire dataset.
Provided insights into the distribution and key characteristics of these financial variables.

Conditional Analysis Based on Groups:

Computed summary statistics and histograms for balance and income segmented by:
Default Status (default = Yes/No)
Student Status (student = Yes/No)
Analyzed four distinct groups:
Defaulted & Student
Defaulted & Non-Student
Non-Defaulted & Student
Non-Defaulted & Non-Student
Highlighted how default rates and financial variables differ across these segments.

Logistic Regression Modeling:

Built a logistic regression model with default as the response variable.
Included student, balance, and income as predictor variables.
Assessed the significance of each predictor and the overall model fit.
Interpreted the output to understand the impact of each variable on the likelihood of default.

Probability Prediction for a New Applicant:

Calculated the probability of default for a hypothetical applicant:
Student status: Yes
Balance: $621
Income: $1,850
Demonstrated the use of the logistic regression model to make real-world predictions.
Included step-by-step calculations and explanations.

Documentation:
All SAS code used for data analysis and modeling.
Output screenshots of statistical results and histograms.
A comprehensive Word document containing:
Labeled SAS codes and outputs.
Detailed explanations and interpretations of results.
Answers to all assignment questions.
