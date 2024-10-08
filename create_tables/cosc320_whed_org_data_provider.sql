CREATE TABLE IF NOT EXISTS cosc320_whed_org_data_provider (
    org_id INT UNSIGNED NOT NULL,
    contact_type TINYINT UNSIGNED NOT NULL DEFAULT 0,
    data_provider VARCHAR(100),
    email VARCHAR(100),
    email_copy VARCHAR(100),
    status TINYINT NOT NULL DEFAULT -1,
    flag BOOLEAN NOT NULL DEFAULT FALSE,
    control_code VARCHAR(32) NOT NULL DEFAULT '',
    date_sent DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_deadline DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_accessed DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_modified DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_reminder DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_returned DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    date_validated DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00',
    major_update_date_dp DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00', 
    reminder_count TINYINT UNSIGNED NOT NULL DEFAULT 0,
    reminder_history LONGTEXT,
    PRIMARY KEY (org_id),
    INDEX(control_code),
    INDEX(status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;