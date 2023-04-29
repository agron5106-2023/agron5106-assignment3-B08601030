-- Select A3_farm_records database for assignment 3;
USE A3_farm_records;

SHOW TABLES;
DESCRIBE Company_Info;
SELECT * FROM Company_Info;
SELECT COUNT(*) FROM Company_Info;
SELECT  COUNT(Company_name) FROM Company_Info;
SELECT  COUNT(DISTINCT Company_name) FROM Company_Info;
SELECT  COUNT(DISTINCT Parent_company) FROM Company_Info;
SELECT MIN(LENGTH(Company_name)) AS min_length_com, MAX(LENGTH(Company_name)) AS max_length_com,
MIN(LENGTH(Parent_company)) AS min_length_pc, MAX(LENGTH(Parent_company)) AS max_length_pc
FROM Company_Info;
SELECT  DISTINCT Parent_company,COUNT(Company_name) FROM Company_Info
GROUP BY Parent_company;

DESCRIBE Seed_Info;
SELECT * FROM Seed_Info;
SELECT COUNT(*) FROM Seed_Info;
SELECT COUNT(DISTINCT Hybrid_name),COUNT(DISTINCT Crop),COUNT(DISTINCT Maturity) FROM Seed_Info;
SELECT
  MIN(Maturity) AS min,
  MAX(Maturity) AS max,
  ROUND(AVG(Maturity)) AS mean,
  ROUND(VARIANCE(Maturity))AS variance
FROM Seed_Info;

SELECT 
  DISTINCT Crop,
  COUNT(Hybrid_name),
  MIN(Maturity) AS min_maturity,
  MAX(Maturity) AS max_maturity,
  ROUND(AVG(Maturity)) AS mean,
  ROUND(VARIANCE(Maturity))AS variance
FROM Seed_Info
GROUP BY Crop
ORDER BY Crop ASC;

SELECT Crop, 
       (SELECT Hybrid_name FROM Seed_Info s2 WHERE s2.Crop = s1.Crop ORDER BY Maturity DESC LIMIT 1) AS MaxMaturityHybrid,
       (SELECT Hybrid_name FROM Seed_Info s3 WHERE s3.Crop = s1.Crop ORDER BY Maturity ASC LIMIT 1) AS MinMaturityHybrid
FROM Seed_Info s1
GROUP BY Crop
ORDER BY Crop ASC;

DESCRIBE State_Info;
SELECT * FROM State_Info;
SELECT COUNT(*),
	COUNT( DISTINCT State_name),
	COUNT( DISTINCT Two_letters),
	MIN(LENGTH(State_name)),
	MAX(LENGTH(State_name))
FROM State_Info;


DESCRIBE Farm_Info;
SELECT * FROM Farm_Info;
SELECT COUNT(*),
	COUNT(DISTINCT Farm_name),
	COUNT(DISTINCT Soil_type) 
FROM Farm_Info;
SELECT 
    Soil_type,
    Irrigation,
    COUNT(DISTINCT Farm_name) AS Num_Farms,
    (SELECT COUNT(DISTINCT Farm_name) FROM Farm_Info WHERE Soil_type = fi.Soil_type) AS Total_Farms
FROM Farm_Info fi
GROUP BY Soil_type, Irrigation;

DESCRIBE Trial_Info;
SELECT COUNT(*) FROM Trial_Info;

DESCRIBE Employee_Info;
SELECT COUNT(*) FROM Employee_Info;


