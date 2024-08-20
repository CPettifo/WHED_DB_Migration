INSERT INTO cosc320_whed_org_data_provider (
    org_id, contact_type, name, email, email_copy, status, flag,
    control_code, date_sent, date_deadline, date_accessed, date_modified,
    date_reminder, date_returned, date_validated, reminder_count, reminder_history
)
SELECT 
    OrgID, 
    DPTypeContact, 
    DPName, 
    DPEMail, 
    DPEMailCopie, 
    DPStatus != 0, 
    DPFlag != 0,
    DPControle,
    CASE WHEN DPDateEnvoi = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateEnvoi) END,
    CASE WHEN DPDateLimite = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateLimite) END,
    CASE WHEN DPDateAcces = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateAcces) END,
    CASE WHEN DPDateModif = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateModif) END,
    CASE WHEN DPDateRelance = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateRelance) END,
    CASE WHEN DPDateRetour = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateRetour) END,
    CASE WHEN DPDateValid = 0 THEN NULL ELSE FROM_UNIXTIME(DPDateValid) END,
    DPNbrRelance,
    DPHistRelance
FROM whed_org;