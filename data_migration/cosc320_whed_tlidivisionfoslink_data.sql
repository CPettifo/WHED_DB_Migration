INSERT INTO cosc320_whed_tlidivisionfoslink (
    division_id,
    fos_code
)
SELECT 
    iDivisionID,
    FOSCode
FROM whed_tlidivisionfoslink;