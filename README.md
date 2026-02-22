## Business Problem

Problem Statement: 

Telecom companies face significant revenue loss due to customer churn.
This project analyzes churn behavior, identifies high-risk customers, and builds a predictive model to support retention strategies.

Telecom companies lose revenue when customers leave (churn).
Goal: Identify patterns that lead to churn and predict high-risk customers.

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

## Dashboard Highlights

Risk segmentation (Low / Medium / High)
Revenue by risk group
Tenure comparison by risk segment
Interactive filtering


Potential churn drivers:
- Short tenure
- Month-to-month contracts
- High monthly charges
- No tech support


## Dataset Overview
Column	Meaning
tenure	Number of months customer stayed
Contract	Month-to-month / One year / Two year
MonthlyCharges	Amount charged monthly
TotalCharges	Total revenue from customer
Churn	Yes = Customer left



