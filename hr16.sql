-- Which education field contributes most employees?
SELECT 
    EducationField,
    COUNT(*) AS EmployeeCount
FROM hr.hr_analytics
GROUP BY EducationField
ORDER BY EmployeeCount DESC;

