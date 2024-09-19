CREATE TABLE IF NOT EXISTS cosc320_whed_lex_member (
  member VARCHAR(50) NOT NULL,
  member_code CHAR(2) DEFAULT NULL,
  PRIMARY KEY (member),
  UNIQUE KEY uk_member_code (member_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;