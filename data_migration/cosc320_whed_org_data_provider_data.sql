-- To avoid MySQL error when date has invalid value '0000-00-00 00:00:00'

-- Step 1: Alter the table to temporarily accept VARCHAR for the date field
ALTER TABLE cosc320_whed_org_data_provider
MODIFY major_update_date_dp VARCHAR(19);

-- Step 2: Insert data, handling the problematic date field
INSERT INTO cosc320_whed_org_data_provider (
    org_id, contact_type, data_provider, email, email_copy, status, flag,
    control_code, date_sent, date_deadline, date_accessed, date_modified,
    date_reminder, date_returned, date_validated, major_update_date_dp, reminder_count, reminder_history
)
SELECT 
    OrgID, 
    DPTypeContact, 
    DPName, 
    DPEMail, 
    DPEMailCopie, 
    DPStatus, 
    DPFlag,
    DPControle,
    CASE WHEN DPDateEnvoi = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateEnvoi) END,
    CASE WHEN DPDateLimite = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateLimite) END,
    CASE WHEN DPDateAcces = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateAcces) END,
    CASE WHEN DPDateModif = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateModif) END,
    CASE WHEN DPDateRelance = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateRelance) END,
    CASE WHEN DPDateRetour = 0 THEN '1000-01-01 00:00:00'ELSE FROM_UNIXTIME(DPDateRetour) END,
    CASE WHEN DPDateValid = 0 THEN '1000-01-01 00:00:00' ELSE FROM_UNIXTIME(DPDateValid) END,
    CASE 
        WHEN CAST(iMajorUpdateDateDP AS CHAR) = '0000-00-00 00:00:00' OR iMajorUpdateDateDP IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iMajorUpdateDateDP AS CHAR)
    END,
    DPNbrRelance,
    DPHistRelance
FROM whed_org;

-- Step 3: Update the date field to convert it to the correct datetime format
UPDATE cosc320_whed_org_data_provider
SET major_update_date_dp = STR_TO_DATE(major_update_date_dp, '%Y-%m-%d %H:%i:%s')
WHERE org_id = org_id;

-- Step 4: Alter the table back to use DATETIME for the date field
ALTER TABLE cosc320_whed_org_data_provider
MODIFY major_update_date_dp DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00';