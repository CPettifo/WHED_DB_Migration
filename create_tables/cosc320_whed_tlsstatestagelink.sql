CREATE TABLE IF NOT EXISTS cosc320_whed_tlsstatestagelink (
    state_id MEDIUMINT UNSIGNED NOT NULL,
    stage_code VARCHAR(50) NOT NULL,
    stage_name VARCHAR(160) DEFAULT NULL,
    stage_description TEXT,
    PRIMARY KEY (state_id, stage_code),
    INDEX idx_stage_code (stage_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;