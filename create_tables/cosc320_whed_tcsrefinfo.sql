CREATE TABLE IF NOT EXISTS cosc320_whed_tcsrefinfo (
    ref_info_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    ref_info VARCHAR(200) DEFAULT NULL,
    ref_info_author VARCHAR(80) DEFAULT NULL,
    ref_info_publisher VARCHAR(80) DEFAULT NULL,
    ref_info_year YEAR DEFAULT NULL,
    ref_info_link VARCHAR(200) DEFAULT NULL,
    PRIMARY KEY (ref_info_id),
    INDEX idx_state_id (state_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
