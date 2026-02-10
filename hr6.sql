-- Is higher performance rating linked with higher salary hikes?
SELECT 
    PerformanceRating,
    ROUND(AVG(PercentSalaryHike), 2) AS AvgSalaryHike
FROM hr.hr_analytics
GROUP BY PerformanceRating
ORDER BY PerformanceRating;
