--Check blank values
SELECT COUNT(*) 
FROM churn_raw
WHERE TotalCharges = '';

--Convert blank to NULL
UPDATE churn_raw
SET TotalCharges = NULL
WHERE TotalCharges = '';

--Convert column to numeric
ALTER TABLE churn_raw
ALTER COLUMN TotalCharges TYPE NUMERIC
USING NULLIF(TRIM(TotalCharges), '')::NUMERIC;

--Verify data type
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'churn_raw';
