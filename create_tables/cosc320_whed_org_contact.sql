CREATE TABLE IF NOT EXISTS cosc320_whed_org_contact (
    org_id INT UNSIGNED NOT NULL,
    street TEXT,
    city VARCHAR(60),
    province VARCHAR(60),
    post_code VARCHAR(40),
    tel VARCHAR(60),
    fax VARCHAR(60),
    email VARCHAR(100),
    website TEXT,
    PRIMARY KEY (org_id),
    INDEX idx_post_code (post_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;