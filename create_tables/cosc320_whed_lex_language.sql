CREATE TABLE IF NOT EXISTS cosc320_whed_lex_language (
  language_id INT NOT NULL AUTO_INCREMENT,
  language_code CHAR(3) NOT NULL DEFAULT '',
  language_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (language_id),
  UNIQUE KEY uk_language_name (language_name),
  UNIQUE KEY uk_language_code (language_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;