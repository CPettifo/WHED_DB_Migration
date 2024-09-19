CREATE TABLE IF NOT EXISTS cosc320_whed_lex_stage (
  stage_code CHAR(2) NOT NULL,
  stage VARCHAR(50) DEFAULT NULL,
  stage_type_option INT DEFAULT 0,
  PRIMARY KEY (stage_code),
  UNIQUE KEY uk_stage (stage)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;