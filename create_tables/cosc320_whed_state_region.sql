CREATE TABLE IF NOT EXISTS cosc320_whed_state_region (
  state_region_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  state_id MEDIUMINT UNSIGNED NOT NULL,
  region_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (state_region_id),
  INDEX idx_state_id (state_id),
  INDEX idx_region_name (region_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;