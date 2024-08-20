CREATE TABLE IF NOT EXISTS cosc320_whed_org_accreditation (
    org_id INT UNSIGNED NOT NULL,
    accrediting_agency LONGTEXT,
    accreditation_end_date DATE,
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;