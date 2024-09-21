INSERT INTO cosc320_whed_tcsdecree (
    decree_id,
    state_id,
    decree_name,
    year_decree,
    decree_description
)
SELECT 
    sDecreeID,
    StateID,
    sDecree,
    CASE 
        WHEN sYearDecree BETWEEN 1901 AND 2155 THEN sYearDecree
        ELSE NULL
    END,
    sDecreeDesc
FROM whed_tcsdecree;