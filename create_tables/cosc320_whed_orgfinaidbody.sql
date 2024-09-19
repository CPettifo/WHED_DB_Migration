CREATE TABLE IF NOT EXISTS cosc320_whed_orgfinaidbody (
  org_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  fa_grants BOOLEAN DEFAULT FALSE,
  fa_loans BOOLEAN DEFAULT FALSE,
  fa_student_cat TEXT,
  fa_role TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  fa_academic BOOLEAN DEFAULT FALSE,
  fa_international BOOLEAN DEFAULT FALSE,
  fa_iau_membership BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (org_id),
  KEY key_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;