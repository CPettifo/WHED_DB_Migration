CREATE TABLE IF NOT EXISTS cosc320_whed_lex_currency (
  currency_id INT NOT NULL AUTO_INCREMENT,
  currency_code CHAR(3) NOT NULL,
  currency_name VARCHAR(40) NOT NULL,
  PRIMARY KEY (currency_id),
  UNIQUE KEY uk_currency_name (currency_name),
  UNIQUE KEY uk_currency_code (currency_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;