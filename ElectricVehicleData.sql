-- Top 10 view of the data
SELECT TOP 10*
FROM Electric_Vehicle_Population_Data

--Which cities within King County have the highest EV adoption?
SELECT TOP 10 City, COUNT(*) AS ev_count,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Electric_Vehicle_Population_Data WHERE County = 'King'), 2) AS pct_of_king_county
FROM Electric_Vehicle_Population_Data
WHERE County = 'King'
GROUP BY City
ORDER BY ev_count DESC

-- What are the most popular Tesla models specifically?
SELECT Make, Model, COUNT(*) AS Vehicle_Count, AVG(Electric_Range) AS Avg_Range
FROM Electric_Vehicle_Population_Data
WHERE Make = 'TESLA'
GROUP BY Make, Model
ORDER BY Vehicle_Count DESC

-- How many vehicles are eligible for clean alternative fuel vehicle incentives?
SELECT Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility, COUNT(*) AS Vehicle_Count,
ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM Electric_Vehicle_Population_Data), 2) AS Percentage
FROM Electric_Vehicle_Population_Data
GROUP BY Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility
ORDER BY Vehicle_Count DESC

-- YoY Growth Rate in EV Adoption
WITH Yearly_Counts AS (
	SELECT Model_Year, COUNT(*) AS Vehicles
	FROM Electric_Vehicle_Population_Data
	WHERE Model_Year BETWEEN 2015 AND 2025
	GROUP BY Model_Year
)
SELECT Model_Year, Vehicles,
	LAG(Vehicles) OVER (ORDER BY Model_Year) AS Prev_Year_Vehicles,
	ROUND((Vehicles - LAG(Vehicles) OVER (ORDER BY Model_Year)) *100.0 / LAG(Vehicles) OVER (ORDER BY Model_Year), 2) AS yoy_growth_pct
FROM Yearly_Counts
ORDER BY Model_Year

-- How has average electric range improved by model year?
SELECT Model_Year,
	ROUND(AVG(Electric_Range), 2) AS Avg_Range,
	MIN(Electric_Range) AS Min_Range,
	MAX(Electric_Range) AS Max_Range,
	COUNT(*) AS Vehicle_Count
FROM Electric_Vehicle_Population_Data
WHERE Electric_Range > 0 AND Model_Year BETWEEN 2015 AND 2025
GROUP BY Model_Year
ORDER BY Model_Year

-- Which electric utilities serve the most EV owners?
SELECT TOP 10 Electric_Utility, COUNT(*) AS Ev_Count,
	ROUND(COUNT(*) * 100.0 /(SELECT COUNT(*) FROM Electric_Vehicle_Population_Data),2) AS Pct_Total
FROM Electric_Vehicle_Population_Data
WHERE Electric_Utility IS NOT NULL
GROUP BY Electric_Utility
ORDER BY Ev_Count DESC

