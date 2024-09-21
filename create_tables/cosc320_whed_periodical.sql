CREATE TABLE IF NOT EXISTS cosc320_whed_periodical (
  periodical_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  org_id MEDIUMINT UNSIGNED,
  periodical_name TEXT,
  PRIMARY KEY (periodical_id),
  INDEX idx_org_id (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;