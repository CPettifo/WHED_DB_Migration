CREATE TABLE IF NOT EXISTS cosc320_whed_orgrecbody (
  org_id MEDIUMINT UNSIGNED NOT NULL,
  foreign_cred_institution BOOLEAN DEFAULT FALSE,
  foreign_cred_profession BOOLEAN DEFAULT FALSE,
  rec_services TEXT,
  role TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  is_academic BOOLEAN DEFAULT FALSE,
  is_international BOOLEAN DEFAULT FALSE,
  is_iau_member BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (org_id),
  INDEX idx_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;