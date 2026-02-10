-- Which JobRole has the highest JobSatisfaction?
SELECT 
    JobRole,
    ROUND(AVG(JobSatisfaction), 2) AS AvgJobSatisfaction
FROM hr.hr_analytics
GROUP BY JobRole
ORDER BY AvgJobSatisfaction DESC;
