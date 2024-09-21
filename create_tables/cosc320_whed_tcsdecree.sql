CREATE TABLE IF NOT EXISTS cosc320_whed_tcsdecree (
    decree_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    decree_name VARCHAR(160) DEFAULT NULL,
    year_decree YEAR DEFAULT NULL,
    decree_description VARCHAR(160) DEFAULT NULL,
    PRIMARY KEY (decree_id),
    INDEX idx_state_id (state_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;