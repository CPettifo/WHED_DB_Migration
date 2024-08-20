CREATE TABLE IF NOT EXISTS cosc320_whed_org_staff_statistics (
    org_id INT UNSIGNED NOT NULL,
    staff_statistics_year YEAR,
    is_statistics_approximate BOOLEAN DEFAULT FALSE,
    full_time_total INT,
    full_time_male INT,
    full_time_female INT,
    part_time_total INT,
    part_time_female INT,
    part_time_male INT,
    doc_full_time_total INT,
    doc_full_time_male INT,
    doc_full_time_female INT,
    PRIMARY KEY (org_id, staff_statistics_year)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;