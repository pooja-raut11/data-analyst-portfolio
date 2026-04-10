-- Total Incidents
SELECT COUNT(*) AS Total_Incidents FROM incident_data;

-- Average Resolution Time
SELECT AVG(ResolutionTime) AS Avg_Resolution_Time FROM incident_data;

-- Incidents by Region
SELECT Region, COUNT(*) AS Total
FROM incident_data
GROUP BY Region;

-- High Priority Incidents
SELECT COUNT(*) AS High_Priority
FROM incident_data
WHERE Priority = 'High';

-- Performance Improvement Insight
SELECT Region, AVG(ResolutionTime) AS Avg_Time
FROM incident_data
GROUP BY Region
ORDER BY Avg_Time;
