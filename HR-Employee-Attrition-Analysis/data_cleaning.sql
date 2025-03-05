-- Remove duplicate entries
DELETE FROM hr_attrition_data
WHERE row_number() OVER (PARTITION BY EmployeeID ORDER BY HireDate) > 1;

-- Handle NULL values by replacing them with meaningful defaults
UPDATE hr_attrition_data
SET MonthlyIncome = COALESCE(MonthlyIncome, (SELECT AVG(MonthlyIncome) FROM hr_attrition_data)),
    JobSatisfaction = COALESCE(JobSatisfaction, 3),
    Attrition = COALESCE(Attrition, 'No');

-- Standardize date format
UPDATE hr_attrition_data
SET HireDate = PARSE_DATE('%Y-%m-%d', HireDate)
WHERE SAFE.PARSE_DATE('%Y-%m-%d', HireDate) IS NOT NULL;
