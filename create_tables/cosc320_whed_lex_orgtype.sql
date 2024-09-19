CREATE TABLE IF NOT EXISTS cosc320_whed_lex_orgtype (
  org_type_id INT NOT NULL AUTO_INCREMENT,
  org_type_code CHAR(2) NOT NULL DEFAULT '',
  org_type VARCHAR(100) NOT NULL,
  PRIMARY KEY (org_type_id),
  UNIQUE KEY uk_org_type (org_type),
  UNIQUE KEY uk_org_type_code (org_type_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;