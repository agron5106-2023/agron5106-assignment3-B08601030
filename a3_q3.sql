-- Select A3_farm_records database for assignment 3;
USE A3_farm_records;

DESCRIBE State_Info;
DESCRIBE Farm_Info;

SELECT State_name,COUNT(Farm_name)
FROM State_Info 
JOIN Farm_Info ON State_Info.State_ID =Farm_Info.State_id 
GROUP BY State_name 
ORDER BY COUNT(Farm_name)DESC;

SELECT State_name,Irrigation,COUNT(Farm_name)
FROM State_Info 
JOIN Farm_Info ON State_Info.State_ID =Farm_Info.State_id 
GROUP BY State_name,Irrigation 
ORDER BY COUNT(Farm_name)DESC;
