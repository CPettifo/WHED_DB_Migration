CREATE TABLE IF NOT EXISTS cosc320_whed_org_membership (
    org_id INT UNSIGNED NOT NULL,
    iau_membership_option INT DEFAULT 0,
    iau_logo VARCHAR(255) DEFAULT NULL,
    aau_membership_option INT DEFAULT 0,
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;