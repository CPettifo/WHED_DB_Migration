CREATE TABLE IF NOT EXISTS cosc320_whed_tcsagreement (
    agreement_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    agreement_name VARCHAR(250) DEFAULT NULL,
    agreement_year INT DEFAULT NULL,
    PRIMARY KEY (agreement_id),
    INDEX idx_state_id (state_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;