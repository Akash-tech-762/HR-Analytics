-- How does WorkLifeBalance vary across Departments?
SELECT 
    Department,
    ROUND(AVG(WorkLifeBalance), 2) AS AvgWorkLifeBalance
FROM hr.hr_analytics
GROUP BY Department
ORDER BY AvgWorkLifeBalance DESC;
