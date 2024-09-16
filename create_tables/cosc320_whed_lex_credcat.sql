CREATE TABLE IF NOT EXISTS cosc320_whed_lex_credcat(
  credential_category_code CHAR(2) NOT NULL,
  credential_category_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (credential_category_code),
  UNIQUE KEY uk_credential_category_name (credential_category_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;