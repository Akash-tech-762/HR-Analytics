-- What is the overall attrition rate in the company?
SELECT 
    ROUND(
        (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS AttritionRate_Percent
FROM hr.hr_analytics;
