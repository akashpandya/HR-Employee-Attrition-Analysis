-- Analyze retention by job satisfaction
SELECT 
    JobSatisfaction,
    COUNT(CASE WHEN Attrition = 'No' THEN EmployeeID END) AS Retained_Count,
    COUNT(EmployeeID) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'No' THEN EmployeeID END) * 100.0) / COUNT(EmployeeID), 2) AS Retention_Rate
FROM hr_attrition_data
GROUP BY JobSatisfaction
ORDER BY Retention_Rate DESC;

-- Analyze retention by salary level
SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Mid Income'
        ELSE 'High Income'
    END AS Salary_Level,
    COUNT(CASE WHEN Attrition = 'No' THEN EmployeeID END) AS Retained_Count,
    COUNT(EmployeeID) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'No' THEN EmployeeID END) * 100.0) / COUNT(EmployeeID), 2) AS Retention_Rate
FROM hr_attrition_data
GROUP BY Salary_Level
ORDER BY Retention_Rate DESC;

-- Analyze retention by years at company
SELECT 
    YearsAtCompany,
