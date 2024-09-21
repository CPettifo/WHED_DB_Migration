-- Step 1: Alter the table to temporarily accept VARCHAR for date fields
ALTER TABLE cosc320_whed_statesystem
MODIFY input_date VARCHAR(19),
MODIFY major_update_date VARCHAR(19),
MODIFY minor_update_date VARCHAR(19),
MODIFY major_update_date_dp VARCHAR(19),
MODIFY web_update_date VARCHAR(19);

-- Step 2: Insert data, handling the problematic date fields
INSERT INTO cosc320_whed_statesystem
SELECT
    StateID,
    sAcademicYearFrom,
    sAcademicYearTo,
    sAgeOfEntry,
    sAgeOfExit,
    sSchoolSystem,
    sHESystem,
    sSource,
    sInCharge,
    sNULAlternatives,
    sNULAdmissionTest,
    sNULOtherRequirements,
    sNULNumerusClausus,
    sULAlternatives,
    sULAdmissionTest,
    sULOtherRequirements,
    sULNumerusClausus,
    sFSDefinition,
    sFSQuotas,
    srFSAdmissionRequirements,
    sFSEntryRegulations,
    sFSHealth,
    sFSLanguageProficiency,
    sFSIndividualInst,
    sFSCentralBody,
    sRBSystemDesc,
    sRBOtherInfoSources,
    sRBNULStudies,
    sRBULStudies,
    sRBPLStudies,
    sRBProfession,
    sSSHome,
    sSSHAmount,
    sSSHCurrencyCode,
    sSSForeign,
    sSSFAmount,
    sSSFCurrencyCode,
    sSSFDetails,
    CASE 
        WHEN sTCRoad = 1 THEN 'yes'
        WHEN sTCRoad = 0 THEN 'no'
        ELSE 'unknown'
    END,
    CASE 
        WHEN sTCRail = 1 THEN 'yes'
        WHEN sTCRail = 0 THEN 'no'
        ELSE 'unknown'
    END,
    CASE 
        WHEN sTCAir = 1 THEN 'yes'
        WHEN sTCAir = 0 THEN 'no'
        ELSE 'unknown'
    END,
    CASE 
        WHEN sTCforeign = 1 THEN 'yes'
        WHEN sTCforeign = 0 THEN 'no'
        ELSE 'unknown'
    END,
    sFNAvLivingCost,
    sFNALCCurrencyCode,
    sFNMinTuitionFee,
    sFNMTFCCurrencyCode,
    sFNMaxTuitionFee,
    sFNMxTFCCurrencyCode,
    sFNMinTuitionFeeForeign,
    sFNMTFCfCurrencyCode,
    sFNMaxTuitionFeeForeign,
    sFNMxTFCfCurrencyCode,
    CASE 
        WHEN CAST(sInputDate AS CHAR) = '0000-00-00 00:00:00' OR sInputDate IS NULL THEN '1970-01-01 00:00:01'
        ELSE CAST(sInputDate AS CHAR)
    END,
    CASE 
        WHEN CAST(sMajorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR sMajorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(sMajorUpdateDate AS CHAR)
    END,
    CASE 
        WHEN CAST(sMinorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR sMinorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(sMinorUpdateDate AS CHAR)
    END,
    CASE 
        WHEN CAST(sMajorUpdateDateDP AS CHAR) = '0000-00-00 00:00:00' OR sMajorUpdateDateDP IS NULL THEN '1970-01-01 00:00:01'
        ELSE CAST(sMajorUpdateDateDP AS CHAR)
    END,
    sRecordHistory,
    UserID,
    sTrainingHETeachers,
    sDistanceHE,
    sUpdate,
    CASE 
        WHEN CAST(sWebUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR sWebUpdateDate IS NULL THEN '1970-01-01 00:00:00'
        ELSE CAST(sWebUpdateDate AS CHAR)
    END,
    sComment
FROM whed_statesystem;

-- Step 3: Update the date fields to convert them to the correct datetime format
UPDATE cosc320_whed_statesystem
SET 
    input_date = STR_TO_DATE(input_date, '%Y-%m-%d %H:%i:%s'),
    major_update_date = STR_TO_DATE(major_update_date, '%Y-%m-%d %H:%i:%s'),
    minor_update_date = STR_TO_DATE(minor_update_date, '%Y-%m-%d %H:%i:%s'),
    major_update_date_dp = STR_TO_DATE(major_update_date_dp, '%Y-%m-%d %H:%i:%s'),
    web_update_date = STR_TO_DATE(web_update_date, '%Y-%m-%d %H:%i:%s')
WHERE state_id = state_id;

-- Step 4: Alter the table back to use TIMESTAMP and DATETIME for the date fields
ALTER TABLE cosc320_whed_statesystem
MODIFY input_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
MODIFY major_update_date TIMESTAMP NULL DEFAULT NULL,
MODIFY minor_update_date TIMESTAMP NULL DEFAULT NULL,
MODIFY major_update_date_dp TIMESTAMP NULL DEFAULT NULL,
MODIFY web_update_date DATETIME NULL DEFAULT NULL;
