CREATE TABLE IF NOT EXISTS cosc320_whed_org_fees (
    org_id INT UNSIGNED NOT NULL,
    national_fees LONGTEXT,
    national_fees_currency_code VARCHAR(4),
    international_fees LONGTEXT,
    international_fees_currency_code VARCHAR(4),
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;