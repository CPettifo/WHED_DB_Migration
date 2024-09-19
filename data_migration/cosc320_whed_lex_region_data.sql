
INSERT INTO cosc320_whed_lex_region (region_code, region)
SELECT RegionCode, Region
FROM whed_lex_region
WHERE RegionCode != '';