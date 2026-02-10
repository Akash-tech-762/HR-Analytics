-- Do employees working overtime earn more than others?
SELECT 
    OverTime,
    ROUND(AVG(MonthlyIncome), 2) AS AvgMonthlyIncome,
    COUNT(*) AS EmployeeCount
FROM hr.hr_analytics
GROUP BY OverTime;
