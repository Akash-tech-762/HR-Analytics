-- What is the average monthly income by Job Role and Department?
SELECT 
    Department,
    JobRole,
    ROUND(AVG(MonthlyIncome), 2) AS AvgMonthlyIncome
FROM hr.hr_analytics
GROUP BY Department, JobRole
ORDER BY Department, AvgMonthlyIncome DESC;
