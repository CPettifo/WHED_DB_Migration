INSERT INTO cosc320_whed_degree_origin (cred_id, origin_name)
WITH RECURSIVE split_values AS (
    SELECT 
        CredID AS cred_id,
        iDegreeOrigine AS full_string,
        SUBSTRING_INDEX(REPLACE(REPLACE(iDegreeOrigine, ';', ','), ', ', ','), ',', 1) AS value,
        SUBSTRING(REPLACE(REPLACE(iDegreeOrigine, ';', ','), ', ', ','), LENGTH(SUBSTRING_INDEX(REPLACE(REPLACE(iDegreeOrigine, ';', ','), ', ', ','), ',', 1)) + 2) AS remaining_string
    FROM whed_degree
    WHERE iDegreeOrigine IS NOT NULL AND iDegreeOrigine != ''
    
    UNION ALL
    
    SELECT 
        cred_id,
        full_string,
        SUBSTRING_INDEX(remaining_string, ',', 1),
        SUBSTRING(remaining_string, LENGTH(SUBSTRING_INDEX(remaining_string, ',', 1)) + 2)
    FROM split_values
    WHERE remaining_string != ''
)
SELECT 
    cred_id,
    TRIM(value) AS origin_name
FROM split_values
WHERE value != '';