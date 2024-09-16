CREATE TABLE IF NOT EXISTS cosc320_whed_division (
  division_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  org_id MEDIUMINT UNSIGNED NOT NULL,
  division_name VARCHAR(255) NOT NULL,
  division_type_code VARCHAR(3) NOT NULL,
  additional_details VARCHAR(220),
  PRIMARY KEY (division_id),
  INDEX idx_division_type_code (division_type_code),
  INDEX idx_org_id (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;