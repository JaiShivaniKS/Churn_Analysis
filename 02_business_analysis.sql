--Overall Churn Rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)::numeric
        / COUNT(*) * 100, 2
    ) AS churn_rate_percent
FROM churn_raw;

--Churn by Contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)::numeric
        / COUNT(*) * 100, 2
    ) AS churn_rate_percent
FROM churn_raw
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

--Churned by Tenture Group
SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,
    
    COUNT(*) AS total_customers,
    
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)::numeric
        / COUNT(*) * 100, 2
    ) AS churn_rate_percent
    
FROM churn_raw
GROUP BY tenure_group
ORDER BY churn_rate_percent DESC;

--Churn by Monthly Charges
SELECT 
    CASE 
        WHEN MonthlyCharges < 35 THEN 'Low'
        WHEN MonthlyCharges < 70 THEN 'Medium'
        ELSE 'High'
    END AS charge_group,
    
    COUNT(*) AS total,
    
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned,
    
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)::numeric
        / COUNT(*) * 100, 2
    ) AS churn_rate_percent
    
FROM churn_raw
GROUP BY charge_group
ORDER BY churn_rate_percent DESC;

-- Revenue at Risk
SELECT 
    ROUND(SUM(TotalCharges),2) AS total_revenue,
    
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN TotalCharges ELSE 0 END),
        2
    ) AS revenue_lost_due_to_churn
    
FROM churn_raw;

