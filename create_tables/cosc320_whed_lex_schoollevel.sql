CREATE TABLE IF NOT EXISTS cosc320_whed_lex_schoollevel (
  school_level_id INT NOT NULL AUTO_INCREMENT,
  school_level_code CHAR(2) NOT NULL,
  school_level VARCHAR(100) NOT NULL,
  PRIMARY KEY (school_level_id),
  UNIQUE KEY uk_school_level (school_level),
  UNIQUE KEY uk_school_level_code (school_level_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;