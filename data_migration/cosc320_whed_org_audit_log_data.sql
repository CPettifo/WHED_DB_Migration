-- To avoid MySQL error when date has invalid value '0000-00-00 00:00:00'
-- First altered the table, insert the data, update the data to correct datetime type and
-- then the table is returned to required columns

ALTER TABLE cosc320_whed_org_audit_log
MODIFY input_date VARCHAR(19),
MODIFY minor_update_date VARCHAR(19),
MODIFY major_update_date VARCHAR(19);

INSERT INTO cosc320_whed_org_audit_log (
    org_id,
    input_date,
    minor_update_date,
    major_update_date,
    learning,
    record_history,
    user_id
)
SELECT 
    OrgID,
    CASE 
        WHEN CAST(iInputDate AS CHAR) = '0000-00-00 00:00:00' OR iInputDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iInputDate AS CHAR)
    END,
    CASE 
        WHEN CAST(iMinorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR iMinorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iMinorUpdateDate AS CHAR)
    END,
    CASE 
        WHEN CAST(iMajorUpdateDate AS CHAR) = '0000-00-00 00:00:00' OR iMajorUpdateDate IS NULL THEN '1000-01-01 00:00:00'
        ELSE CAST(iMajorUpdateDate AS CHAR)
    END,
    COALESCE(iLearning, 0),
    COALESCE(iRecordHistory, ''),
    COALESCE(UserID, 0)
FROM whed_org;




UPDATE cosc320_whed_org_audit_log
SET 
    input_date = STR_TO_DATE(input_date, '%Y-%m-%d %H:%i:%s'),
    minor_update_date = STR_TO_DATE(minor_update_date, '%Y-%m-%d %H:%i:%s'),
    major_update_date = STR_TO_DATE(major_update_date, '%Y-%m-%d %H:%i:%s')
WHERE org_id = org_id;


ALTER TABLE cosc320_whed_org_audit_log
MODIFY input_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
MODIFY major_update_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
MODIFY minor_update_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00';



