-- Is Overtime related to JobInvolvement?
SELECT 
    OverTime,
    ROUND(AVG(JobInvolvement), 2) AS AvgJobInvolvement
FROM hr.hr_analytics
GROUP BY OverTime;
