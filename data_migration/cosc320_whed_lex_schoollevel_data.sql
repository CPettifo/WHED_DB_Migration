INSERT INTO cosc320_whed_lex_schoollevel (school_level_id, school_level_code, school_level)
SELECT SchoolLevelID, SchoolLevelCode, SchoolLevel
FROM whed_lex_schoollevel
WHERE SchoolLevelCode != '';