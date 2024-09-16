CREATE TABLE cosc320_whed_lex_country_region (
  id INT AUTO_INCREMENT,
  region_code_crm VARCHAR(3) NOT NULL,
  region_crm VARCHAR(40) NOT NULL,
  region_map VARCHAR(40) NOT NULL,
  PRIMARY KEY (id),
  KEY idx_region_code_crm (region_code_crm),
  KEY idx_region_crm (region_crm)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;