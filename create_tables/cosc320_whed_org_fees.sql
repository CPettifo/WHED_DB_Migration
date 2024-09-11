CREATE TABLE IF NOT EXISTS cosc320_whed_org_fees (
    org_id INT UNSIGNED NOT NULL,
    national_fees TEXT,
    national_fees_currency_code VARCHAR(4) DEFAULT NULL,
    international_fees TEXT,
    international_fees_currency_code VARCHAR(4) DEFAULT NULL,
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;