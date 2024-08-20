CREATE TABLE IF NOT EXISTS cosc320_whed_org_student_statistics (
    org_id MEDIUMINT UNSIGNED NOT NULL,
    student_statistics_year YEAR,
    is_student_statistics_approx BOOLEAN DEFAULT FALSE,
    student_total INT,
    student_male INT,
    student_female INT,
    student_foreign_total INT,
    student_foreign_male INT,
    student_foreign_female INT,
    student_part_time INT,
    student_distance INT,
    students_disabilities INT,
    PRIMARY KEY (org_id, student_statistics_year)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;