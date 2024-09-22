CREATE TABLE IF NOT EXISTS cosc320_whed_tlidivisionfoslink (
    division_id MEDIUMINT UNSIGNED NOT NULL,
    fos_code VARCHAR(6) NOT NULL,
    PRIMARY KEY (division_id, fos_code),
    INDEX idx_fos_code (fos_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;