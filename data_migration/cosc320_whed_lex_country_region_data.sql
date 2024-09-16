INSERT INTO cosc320_whed_lex_country_region (region_code_crm, region_crm, region_map)
SELECT DISTINCT RegionCodeCRM, RegionCRM, RegionMap
FROM whed_lex_country
ORDER BY RegionCodeCRM, RegionCRM, RegionMap;