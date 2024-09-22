INSERT INTO cosc320_whed_tcsschool (
    school_id,
    state_id,
    school,
    school_level_code,
    length,
    age_from,
    age_to,
    diploma
)
SELECT 
    sSchoolID,
    StateID,
    sSchool, 
    sSchoolLevelCode,
    sLength, 
    CASE WHEN sAgeFrom = 0 THEN NULL ELSE sAgeFrom END,
    CASE WHEN sAgeTo = 0 THEN NULL ELSE sAgeTo END,
    sDiploma 
FROM whed_tcsschool;