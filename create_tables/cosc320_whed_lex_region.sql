CREATE TABLE IF NOT EXISTS cosc320_whed_lex_region (
  region_code CHAR(2) NOT NULL,
  region VARCHAR(50) NOT NULL,
  PRIMARY KEY (region_code),
  UNIQUE KEY uk_region (region)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;