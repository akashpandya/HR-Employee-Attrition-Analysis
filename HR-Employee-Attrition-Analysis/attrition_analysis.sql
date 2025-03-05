-- Calculate attrition rate by department
SELECT 
    Department,
    COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) AS Attrition_Count,
    COUNT(EmployeeID) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) * 100.0) / COUNT(EmployeeID), 2) AS Attrition_Rate
FROM hr_attrition_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- Attrition analysis by job role
SELECT 
    JobRole,
    COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) AS Attrition_Count,
    COUNT(EmployeeID) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) * 100.0) / COUNT(EmployeeID), 2) AS Attrition_Rate
FROM hr_attrition_data
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

-- Attrition analysis by age group
SELECT 
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE '45+'
    END AS Age_Group,
    COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) AS Attrition_Count,
    COUNT(EmployeeID) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN EmployeeID END) * 100.0) / COUNT(EmployeeID), 2) AS Attrition_Rate
FROM hr_attrition_data
GROUP BY Age_Group
ORDER BY Attrition_Rate DESC;
