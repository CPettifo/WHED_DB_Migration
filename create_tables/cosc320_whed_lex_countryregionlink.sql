CREATE TABLE IF NOT EXISTS cosc320_whed_lex_country_region_link (
  country_code CHAR(2) NOT NULL,
  region_code CHAR(2) NOT NULL,
  PRIMARY KEY (country_code, region_code),
  KEY idx_region_code (region_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;