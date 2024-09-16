CREATE TABLE IF NOT EXISTS cosc320_whed_lex_credlevel (
  credential_level_id INT NOT NULL AUTO_INCREMENT,
  credential_level_code CHAR(2) NOT NULL,
  credential_level_name VARCHAR(100) NOT NULL,
  credential_level_type_option INT NOT NULL DEFAULT 0,
  is_public BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (credential_level_id),
  UNIQUE KEY uk_credential_level_name (credential_level_name),
  UNIQUE KEY uk_credential_level_code (credential_level_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;