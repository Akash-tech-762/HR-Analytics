-- Is EnvironmentSatisfaction affecting Attrition?
SELECT 
    EnvironmentSatisfaction,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    COUNT(*) AS TotalEmployees,
    ROUND(
        (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS AttritionRate
FROM hr.hr_analytics
GROUP BY EnvironmentSatisfaction
ORDER BY EnvironmentSatisfaction;
