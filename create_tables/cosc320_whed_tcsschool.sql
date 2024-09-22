CREATE TABLE IF NOT EXISTS cosc320_whed_tcsschool (
    school_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    school VARCHAR(160) DEFAULT NULL,
    school_level_code VARCHAR(4) DEFAULT NULL,
    length VARCHAR(30) DEFAULT NULL,
    age_from INT UNSIGNED DEFAULT NULL,
    age_to INT UNSIGNED DEFAULT NULL,
    diploma VARCHAR(250) DEFAULT NULL,
    PRIMARY KEY (school_id),
    INDEX idx_state_id (state_id),
    INDEX idx_school_level_code (school_level_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
