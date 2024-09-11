-- To avoid all zero datatime data type error during migration

-- Step 1: Alter the table to temporarily accept VARCHAR for date fields
ALTER TABLE cosc320_whed_cred
MODIFY major_update_date VARCHAR(19),
MODIFY minor_update_date VARCHAR(19),
MODIFY major_update_date_dp VARCHAR(19);

-- Step 2: Insert data, handling the problematic date fields
INSERT INTO cosc320_whed_cred (
    cred_id,
    state_id,
    cred,
    acronym,
    cred_cat_code_1,
    cred_cat_code_2,
    cred_level_code,
    description,
    alternative_qualification,
    entry_exam_national,
    entry_exam_inst,
    major_update_date,
    minor_update_date,
    major_update_date_dp,
    record_history,
    user_id,
    is_warning,
    is_deleted
)
SELECT 
    CredID,
    StateID,
    Cred,
    cAcronym,
    CredCatCode1,
    CredCatCode2,
    CredLevelCode,
    cDescription,
    cAlternativeQualification,
    cEntryExamNational,
    cEntryExamInst,
    CASE 
        WHEN CAST(cMajorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR cMajorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(cMajorUpdateDate AS CHAR)
    END,
    CASE 
        WHEN CAST(cMinorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR cMinorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(cMinorUpdateDate AS CHAR)
    END,
    CASE 
        WHEN CAST(cMajorUpdateDateDP AS CHAR) = '0000-00-00 00:00:00' OR cMajorUpdateDateDP IS NULL THEN '1970-01-01 00:00:01'
        ELSE CAST(cMajorUpdateDateDP AS CHAR)
    END,
    cRecordHistory,
    UserID,
    cWarning != 0,
    cDelete != 0
FROM whed_cred;

-- Step 3: Update the date fields to convert them to the correct datetime format
UPDATE cosc320_whed_cred
SET 
    major_update_date = STR_TO_DATE(major_update_date, '%Y-%m-%d %H:%i:%s'),
    minor_update_date = STR_TO_DATE(minor_update_date, '%Y-%m-%d %H:%i:%s'),
    major_update_date_dp = STR_TO_DATE(major_update_date_dp, '%Y-%m-%d %H:%i:%s')
WHERE cred_id = cred_id;

-- Step 4: Alter the table back to use DATETIME for the date fields
ALTER TABLE cosc320_whed_cred
MODIFY major_update_date DATETIME DEFAULT NULL,
MODIFY minor_update_date DATETIME DEFAULT NULL,
MODIFY major_update_date_dp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;