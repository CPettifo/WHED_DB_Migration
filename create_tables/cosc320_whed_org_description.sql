CREATE TABLE IF NOT EXISTS cosc320_whed_org_description (
    org_id INT UNSIGNED NOT NULL,
    history TEXT,
    admission_requirements TEXT,
    academic_year VARCHAR(255),
    languages_used VARCHAR(255),
    library_info TEXT,
    main_press VARCHAR(255),
    residential_facilities TEXT,
    created_date DATE,
    present_status_year YEAR,
    degree_note TEXT,
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;