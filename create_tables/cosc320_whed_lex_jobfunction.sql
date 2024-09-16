CREATE TABLE IF NOT EXISTS cosc320_whed_lex_jobfunction (
  job_function_id INT NOT NULL AUTO_INCREMENT,
  job_function_code VARCHAR(2) NOT NULL,
  job_function VARCHAR(50) NOT NULL,
  print_job_function VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (job_function_id),
  UNIQUE KEY uk_job_function (job_function),
  UNIQUE KEY uk_job_function_code (job_function_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;