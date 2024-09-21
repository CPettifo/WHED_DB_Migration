INSERT INTO cosc320_whed_state_region (state_id, region_name)
WITH RECURSIVE split_values AS (
    SELECT 
        StateID AS state_id,
        Regions AS full_string,
        SUBSTRING_INDEX(Regions, '|', 1) AS value,
        SUBSTRING(Regions, LENGTH(SUBSTRING_INDEX(Regions, '|', 1)) + 2) AS remaining_string
    FROM whed_state
    WHERE Regions IS NOT NULL AND Regions != ''
    
    UNION ALL
    
    SELECT 
        state_id,
        full_string,
        SUBSTRING_INDEX(remaining_string, '|', 1),
        SUBSTRING(remaining_string, LENGTH(SUBSTRING_INDEX(remaining_string, '|', 1)) + 2)
    FROM split_values
    WHERE remaining_string != ''
)
SELECT DISTINCT state_id, TRIM(value) AS region_name
FROM split_values
WHERE value != ''
ORDER BY state_id, region_name;