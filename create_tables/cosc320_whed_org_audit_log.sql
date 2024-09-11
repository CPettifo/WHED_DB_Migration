-- Create the audit log table

CREATE TABLE cosc320_whed_org_audit_log (
    audit_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    org_id INT UNSIGNED NOT NULL,
    -- Using '1000-01-01 00:00:00' as the default value for date fields.
    -- This is the earliest valid date in MySQL and is used instead of
    -- '0000-00-00 00:00:00' to ensure compatibility with strict SQL modes
    -- and potential future migrations to other database systems.
    input_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    major_update_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    minor_update_date DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    learning TINYINT UNSIGNED NOT NULL DEFAULT 0,
    record_history TEXT NOT NULL,
    -- The user Id in the old table can be NULL
    user_id mediumint unsigned NOT NULL
);