CREATE TABLE IF NOT EXISTS cosc320_whed_lex_divisiontype (
  division_type_id INT NOT NULL AUTO_INCREMENT,
  division_type_code CHAR(3) NOT NULL,
  division_type_name VARCHAR(100) NOT NULL,
  map_to_code CHAR(3),
  sort_order INT NOT NULL DEFAULT 0,
  hierarchy_level TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (division_type_id),
  UNIQUE KEY uk_division_type_name (division_type_name),
  UNIQUE KEY uk_division_type_code (division_type_code),
  UNIQUE KEY uk_sort_order (sort_order),
  KEY idx_map_to_code (map_to_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;