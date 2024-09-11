CREATE TABLE `cosc320_whed_contact` (
  `contact_id` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `org_id` MEDIUMINT UNSIGNED NOT NULL,
  `surname` VARCHAR(60) NOT NULL,
  `first_name` VARCHAR(60) NOT NULL,
  `job_title` VARCHAR(100),
  `job_function_code` CHAR(2),
  `years_of_office` VARCHAR(45),
  `phone` VARCHAR(60),
  `email` VARCHAR(100),
  `gender` CHAR(1),
  `is_current` BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (`contact_id`),
  KEY `idx_org_id` (`org_id`),
  KEY `idx_surname` (`surname`),
  KEY `idx_first_name` (`first_name`),
  KEY `idx_job_title` (`job_title`),
  KEY `idx_job_function_code` (`job_function_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;