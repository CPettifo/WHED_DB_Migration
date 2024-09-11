
CREATE TABLE IF NOT EXISTS cosc320_whed_org_accreditation (
    accreditation_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    org_id MEDIUMINT UNSIGNED NOT NULL,
    accrediting_agency TEXT,
    date_accredited DATE,
    accreditation_end_date DATE,
    PRIMARY KEY (accreditation_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;