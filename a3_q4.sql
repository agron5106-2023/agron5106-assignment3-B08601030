-- Select A3_farm_records database for assignment 3;
USE A3_farm_records;

SHOW TABLES;
DESCRIBE Trial_Info;
DESCRIBE Farm_Info;
DESCRIBE Seed_Info;

SELECT 
	Crop, 
	State_name,
	COUNT(Farm_name), 
	SUM(Yield) AS Total_yield
FROM Trial_Info 
JOIN Farm_Info ON Trial_Info.Farm_info_id = Farm_Info.Farm_ID
JOIN State_Info ON State_Info.State_ID = Farm_Info.State_id
JOIN Seed_Info ON Seed_Info.Seed_ID = Trial_Info.Seed_info_id 
WHERE Crop LIKE 'Rice%'
GROUP BY State_name, Crop
ORDER BY Total_yield DESC;




