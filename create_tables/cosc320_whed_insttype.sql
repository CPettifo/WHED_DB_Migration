CREATE TABLE IF NOT EXISTS cosc320_whed_tcsinsttype (
    inst_type_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    inst_type VARCHAR(160) DEFAULT NULL,
    inst_type_english VARCHAR(160) DEFAULT NULL,
    inst_type_sort INT NOT NULL DEFAULT 0,
    inst_type_description TEXT,
    PRIMARY KEY (inst_type_id),
    INDEX idx_state_id (state_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

