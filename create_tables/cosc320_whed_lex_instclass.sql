CREATE TABLE IF NOT EXISTS cosc320_whed_lex_instclass (
  inst_class_code VARCHAR(2) NOT NULL DEFAULT '',
  inst_class VARCHAR(100) NOT NULL,
  class_university_level TINYINT(1) DEFAULT 0,
  inst_class_sort_order INT DEFAULT 0,
  is_export_whed BOOLEAN DEFAULT FALSE,
  is_export_xml BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (inst_class_code),
  UNIQUE KEY uk_inst_class (inst_class)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;