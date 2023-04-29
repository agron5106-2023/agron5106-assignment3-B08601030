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
SELECT COUNT(DISTINCT Crop) FROM Seed_Info;
SELECT DISTINCT Crop,COUNT(Hybrid_name)  FROM Seed_Info
GROUP BY Crop
ORDER BY Crop ASC;


DESCRIBE State_Info;
SELECT COUNT(*) FROM State_Info;

DESCRIBE Farm_Info;
SELECT COUNT(*) FROM Farm_Info;

DESCRIBE Trial_Info;
SELECT COUNT(*) FROM Trial_Info;

DESCRIBE Employee_Info;
SELECT COUNT(*) FROM Employee_Info;


