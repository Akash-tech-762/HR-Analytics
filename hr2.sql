-- Does age group affect attrition?
SELECT 
    AgeGroup,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    COUNT(*) AS TotalEmployees,
    ROUND(
        (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS AttritionRate_Percent
FROM hr.hr_analytics
GROUP BY AgeGroup
ORDER BY AttritionRate_Percent DESC;
