## Business Problem

Problem Statement: 

Telecom companies face significant revenue loss due to customer churn.
This project analyzes churn behavior, identifies high-risk customers, and builds a predictive model to support retention strategies.

## Project Workflow

-- Data Cleaning using PostgreSQL
-- Business KPI analysis (Churn rate, Revenue impact)
-- Exploratory Data Analysis using Python
-- Feature Engineering
-- Logistic Regression Modeling
-- Risk Segmentation (Low / Medium / High)
-- Interactive Dashboard Development in Power BI

## Data Preprocessing

Data Cleaning & Preparation
Handled blank values in TotalCharges
Converted data types (TEXT → NUMERIC)
Encoded categorical variables using one-hot encoding
Scaled numerical features for Logistic Regression
Removed non-predictive columns (e.g., customerID)

## Tools Used

PostgreSQL (Data Cleaning & SQL Analysis)
Python (Pandas, Seaborn, Scikit-learn)
Logistic Regression
Power BI (Interactive Dashboard)

## Key Insights

Overall churn rate: 26.54%
Month-to-month contract churn: 42.71%
0–1 year tenure churn: 47.68%
High-risk customers: 905
Revenue at risk: ₹496K (~3% of total revenue)

## Model Performance

Logistic Regression Accuracy: 80%
Recall: 51.78%
ROC-AUC: 0.71
Selected model based on recall priority for churn detection.

## Model Selection Rationale

Both Logistic Regression and Random Forest models were evaluated. Logistic Regression was selected based on:
Higher Recall (51.78%)
Better ROC-AUC (0.71)
Strong linear relationship between tenure and churn
Business priority to identify maximum potential churners

## Dashboard Highlights

Risk segmentation (Low / Medium / High)
Revenue by risk group
Tenure comparison by risk segment
Interactive filtering

## Limitations

Dataset is static and does not include real-time behavioral data.
Model performance could improve with hyperparameter tuning.
Recall (51%) indicates further optimization is possible.
Additional features such as customer complaints or service usage could enhance predictive power.

## How to Run

Clone repository
Install required libraries:
--pip install pandas scikit-learn seaborn matplotlib
Run notebooks in sequence:
Data Cleaning
EDA
Modeling

Open Power BI file for dashboard
Potential churn drivers:
- Short tenure
- Month-to-month contracts
- High monthly charges
- No tech support

## DataSet 

Telco Customer Churn (Kaggle) – popular IBM sample dataset with ~7,043 customers:
👉 https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## Dataset Overview
Column	Meaning
tenure	Number of months customer stayed
Contract	Month-to-month / One year / Two year
MonthlyCharges	Amount charged monthly
TotalCharges	Total revenue from customer
Churn	Yes = Customer left





