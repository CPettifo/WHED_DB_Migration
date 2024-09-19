CREATE TABLE IF NOT EXISTS cosc320_whed_orggovbody (
  org_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  governance_body_role TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  has_academic_governance BOOLEAN NOT NULL DEFAULT FALSE,
  has_international_governance BOOLEAN NOT NULL DEFAULT FALSE,
  is_iau_member BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (org_id),
  KEY key_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;