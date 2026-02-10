-- How does SalarySlab distribution look?
SELECT 
    SalarySlab,
    COUNT(*) AS EmployeeCount
FROM hr.hr_analytics
GROUP BY SalarySlab
ORDER BY EmployeeCount DESC;
