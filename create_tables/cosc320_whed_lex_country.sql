CREATE TABLE IF NOT EXISTS cosc320_whed_lex_country (
  country_code CHAR(2) NOT NULL,
  country_name VARCHAR(40) NOT NULL,
  country_name_fr VARCHAR(50),
  iso3_code CHAR(3),
  region_id INT, -- Reference to country_region table
  currency_code CHAR(3),
  keyboard_layout VARCHAR(10) DEFAULT 'latin',
  address_format VARCHAR(100),
  display_font VARCHAR(20) DEFAULT 'Arial',
  post_code_position VARCHAR(4),
  print_funding_heads BOOLEAN DEFAULT FALSE,
  is_public BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (country_code),
  UNIQUE KEY uk_country_name (country_name),
  UNIQUE KEY uk_iso3_code (iso3_code),
  KEY idx_currency_code (currency_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;