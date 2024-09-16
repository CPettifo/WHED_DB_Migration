CREATE TABLE IF NOT EXISTS cosc320_whed_lex_instfundingtype (
  inst_funding_type_id INT NOT NULL AUTO_INCREMENT,
  inst_funding_type_code VARCHAR(2) NOT NULL,
  inst_funding_type VARCHAR(30) NOT NULL,
  inst_funding_type_sort_order INT DEFAULT 0,
  inst_funding_level TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (inst_funding_type_id),
  UNIQUE KEY uk_inst_funding_type (inst_funding_type),
  UNIQUE KEY uk_inst_funding_type_code (inst_funding_type_code),
  UNIQUE KEY uk_inst_funding_type_sort_order (inst_funding_type_sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;