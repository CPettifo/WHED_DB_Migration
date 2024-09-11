INSERT INTO cosc320_whed_data_provider (
    provider_id, state_id, dp_type_contact, dp_org_name, dp_name, dp_street,
    dp_city, dp_province, dp_post_code, dp_email, dp_email_copy,
    dp_status, dp_flag, dp_control, date_sent, date_deadline,
    date_accessed, date_modified, date_reminder, date_returned,
    date_validated, reminder_count, reminder_history
)
SELECT
    ProvID, StateID, DPTypeContact, DPOrgName, DPName, DPStreet,
    DPCity, DPProvince, DPPostCode, DPEMail, DPEMailCopie,
    DPStatus, DPFlag, DPControle,
    FROM_UNIXTIME(NULLIF(DPDateEnvoi, 0)),
    FROM_UNIXTIME(NULLIF(DPDateLimite, 0)),
    FROM_UNIXTIME(NULLIF(DPDateAcces, 0)),
    FROM_UNIXTIME(NULLIF(DPDateModif, 0)),
    FROM_UNIXTIME(NULLIF(DPDateRelance, 0)),
    FROM_UNIXTIME(NULLIF(DPDateRetour, 0)),
    FROM_UNIXTIME(NULLIF(DPDateValid, 0)),
    DPNbrRelance,
    DPHistRelance
FROM whed_data_provider;