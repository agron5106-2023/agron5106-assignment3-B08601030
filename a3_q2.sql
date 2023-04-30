-- Select A3_farm_records database for assignment 3;
USE A3_farm_records;

DESCRIBE Company_Info;
DESCRIBE Seed_Info;

SELECT Company_name,
    COUNT(*) AS No_seed 
FROM Company_Info  
JOIN Seed_Info 
ON Company_Info.Company_ID =Seed_Info.Company_id
GROUP BY Company_name
ORDER BY COUNT(*) DESC; 

SELECT Parent_company,COUNT(*) AS No_seed 
FROM Company_Info  
JOIN Seed_Info 
ON Company_Info.Company_ID =Seed_Info.Company_id
GROUP BY Parent_company
ORDER BY COUNT(*) DESC; 

SELECT Company_name,
    COUNT(DISTINCT Crop) AS No_crop,
    ROUND(MIN(Maturity)) AS min_maturity,
    ROUND(MAX(Maturity)) AS max_maturity,
    ROUND(AVG(Maturity)) AS mean_maturity,
    ROUND(VARIANCE(Maturity)) AS var_maturity
FROM Company_Info  
JOIN Seed_Info 
ON Company_Info.Company_ID =Seed_Info.Company_id
GROUP BY Company_name
ORDER BY COUNT(DISTINCT Crop)DESC LIMIT 5; 


