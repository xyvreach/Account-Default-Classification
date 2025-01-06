# Default Prediction Using Logistic Regression

This repository contains an analysis and implementation of logistic regression to predict the likelihood of default on loans. The analysis uses the `Default.csv` dataset and explores relationships between variables such as `balance`, `income`, and `student` status.

## Features
- **Dataset Analysis**:
  - Summary statistics for key variables (`balance`, `income`) categorized by default and student status.
  - Histograms visualizing distributions of `balance` and `income` across different groups.
  
- **Logistic Regression Model**:
  - Predicts default likelihood based on `balance`, `income`, and `student` status.
  - Includes model evaluation using stepwise regression for feature selection.

- **Prediction Example**:
  - Uses the model to predict the default probability for a student with a balance of $621 and an income of $1,850.

## Files
- **`Default.csv`**: The dataset used for analysis.
- **`default_prediction_model_logistic_regression_classification.sas`**: SAS script for logistic regression and prediction tasks.
- **`SAS_AnalysisReport_Datamining_LRegression.docx`**: Analysis report summarizing key insights and results.

## Key Results
- Higher `balance` increases the likelihood of default.
- Students are less likely to default than non-students.
- Example prediction:
  - A student with a balance of $621 and an income of $1,850 has a predicted default probability of approximately **0.037%**.

## Requirements
To replicate the analysis, the following software and libraries are required:
- **SAS** for running the provided code.
- A compatible environment to view and edit the dataset.

## How to Use
1. Load the dataset (`Default.csv`) into your SAS environment.
2. Run the SAS script (`default_prediction_model_logistic_regression_classification.sas`) to:
   - Analyze the dataset.
   - Train the logistic regression model.
   - Predict default probabilities.
3. Review the detailed analysis in the accompanying report (`SAS_AnalysisReport_Datamining_LRegression.docx`).

## Summary Statistics
- **Balance**:
  - Mean: $835.37
  - Std Dev: $483.71
  - Range: $0 - $2,654.32
- **Income**:
  - Mean: $33,516.98
  - Std Dev: $13,336.64
  - Range: $771.97 - $73,554.23

## License
This project is open for educational and personal use. Contributions and enhancements are welcome.

## Contributing
Feel free to submit pull requests or open issues to suggest improvements or additional features.
