-- To avoid MySQL error when date has invalid value '0000-00-00 00:00:00'

-- Step 1: Alter the table to temporarily accept VARCHAR for date fields
ALTER TABLE cosc320_whed_org
MODIFY web_update_date VARCHAR(19),
MODIFY created_at VARCHAR(19),
MODIFY updated_at VARCHAR(19);

-- Step 2: Insert data, handling the problematic date fields consistently
INSERT INTO cosc320_whed_org (
    org_id, global_id, parent_org_id, alias_id, family, org_name, branch_name,
    inst_name_english, branch_name_english, country_code, state_code, state_id,
    branch_id, org_type_code, inst_name_alt, inst_acronym, inst_class_code,
    inst_funding_type_code, inst_type_id, religion_code, student_body, logo,
    web_update_date, comment, partnership, is_warning, is_deleted, needs_update,
    is_learning, created_at, updated_at, user_id
)
SELECT
    OrgID, GlobalID, iParentOrgID, AliasID, Family, OrgName, iBranchName,
    InstNameEnglish, iBranchNameEnglish, CountryCode, StateCode, StateID,
    BranchID, OrgTypeCode, InstNameAlt, InstAcronym, InstClassCode,
    InstFundingTypeCode, sInstTypeID, ReligionCode, iStudentBody, iLogo,
    CASE 
        WHEN CAST(iWebUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR iWebUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iWebUpdateDate AS CHAR)
    END,
    iComment, iPartnership, iWarning != 0, iDelete != 0, iUpdate != 0,
    iLearning != 0,
    CASE 
        WHEN CAST(iInputDate AS CHAR) = '0000-00-00 00:00:00' OR iInputDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iInputDate AS CHAR)
    END,
    CASE 
        WHEN CAST(GREATEST(
            COALESCE(iMajorUpdateDate, '1000-01-01 00:00:00'),
            COALESCE(iMinorUpdateDate, '1000-01-01 00:00:00')
        ) AS CHAR) = '0000-00-00 00:00:00' THEN '1000-01-01 00:00:00'
        ELSE CAST(GREATEST(
            COALESCE(iMajorUpdateDate, '1000-01-01 00:00:00'),
            COALESCE(iMinorUpdateDate, '1000-01-01 00:00:00')
        ) AS CHAR)
    END,
    UserID
FROM whed_org;

-- Step 3: Update the date fields to convert them to the correct datetime format
UPDATE cosc320_whed_org
SET 
    web_update_date = STR_TO_DATE(web_update_date, '%Y-%m-%d %H:%i:%s'),
    created_at = STR_TO_DATE(created_at, '%Y-%m-%d %H:%i:%s'),
    updated_at = STR_TO_DATE(updated_at, '%Y-%m-%d %H:%i:%s')
WHERE org_id = org_id;

-- Step 4: Alter the table back to use DATETIME for the date fields
ALTER TABLE cosc320_whed_org
MODIFY web_update_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
MODIFY created_at DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
MODIFY updated_at DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00';

