INSERT INTO cosc320_whed_lex_religion (religion_code, religion, religion_sort_order)
SELECT ReligionCode, Religion, ReligionSortOrder
FROM whed_lex_religion
WHERE ReligionCode != '';