-- How many years since promotion before attrition happens?
SELECT 
    YearsSinceLastPromotion,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM hr.hr_analytics
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;
