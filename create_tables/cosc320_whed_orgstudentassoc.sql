CREATE TABLE IF NOT EXISTS cosc320_whed_orgstudentassoc (
  org_id MEDIUMINT UNSIGNED NOT NULL,
  student_assoc_role TEXT,
  sort_order INT NOT NULL DEFAULT 0,
  is_academic BOOLEAN DEFAULT FALSE,
  is_international BOOLEAN DEFAULT FALSE,
  is_iau_member BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (org_id),
  INDEX idx_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC; 


