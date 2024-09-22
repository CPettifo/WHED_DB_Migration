INSERT INTO cosc320_whed_tlidegreefoslink (
    degree_id,
    fos_code
)
SELECT 
    iDegreeID,
    FOSCode
FROM whed_tlidegreefoslink;