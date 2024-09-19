CREATE TABLE IF NOT EXISTS cosc320_whed_lex_religion (
  religion_code CHAR(2) NOT NULL,
  religion VARCHAR(50) NOT NULL,
  religion_sort_order TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (religion_code),
  UNIQUE KEY uk_religion (religion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;