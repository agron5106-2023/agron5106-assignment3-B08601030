-- Select A3_farm_records database for assignment 3;
USE A3_farm_records;

SHOW TABLES;
DESCRIBE Company_Info;
SELECT COUNT(*) FROM Company_Info;
SELECT  COUNT(Company_name) FROM Company_Info;
SELECT  COUNT(DISTINCT Company_name) FROM Company_Info;
SELECT  COUNT(DISTINCT Parent_company) FROM Company_Info;

DESCRIBE Seed_Info;
SELECT COUNT(*) FROM Seed_Info;

DESCRIBE State_Info;
SELECT COUNT(*) FROM State_Info;

DESCRIBE Farm_Info;
SELECT COUNT(*) FROM Farm_Info;

DESCRIBE Trial_Info;
SELECT COUNT(*) FROM Trial_Info;

DESCRIBE Employee_Info;
SELECT COUNT(*) FROM Employee_Info;

