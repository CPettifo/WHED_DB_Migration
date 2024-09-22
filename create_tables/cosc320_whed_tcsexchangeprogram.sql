CREATE TABLE IF NOT EXISTS cosc320_whed_tcsexchangeprogram (
    exchange_program_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    exchange_program_name VARCHAR(160) DEFAULT NULL,
    PRIMARY KEY (exchange_program_id),
    INDEX idx_state_id (state_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;