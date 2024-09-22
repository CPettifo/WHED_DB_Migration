CREATE TABLE IF NOT EXISTS cosc320_whed_tlsstatelanguagelink (
    state_id MEDIUMINT UNSIGNED NOT NULL,
    language_code VARCHAR(2) NOT NULL,
    language_sort INT DEFAULT 0,
    PRIMARY KEY (state_id, language_code),
    INDEX idx_language_code (language_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;