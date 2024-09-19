CREATE TABLE IF NOT EXISTS cosc320_whed_orgintcoop (
  org_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  international_cooperation_role TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  has_academic_cooperation BOOLEAN NOT NULL DEFAULT FALSE,
  has_international_cooperation BOOLEAN NOT NULL DEFAULT FALSE,
  is_iau_member BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (org_id),
  KEY key_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;