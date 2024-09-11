CREATE TABLE IF NOT EXISTS cosc320_whed_org_description (
    org_id INT UNSIGNED NOT NULL,
    history TEXT,
    other_sites_info TEXT, 
    admission_requirements TEXT,
    academic_year VARCHAR(255) DEFAULT NULL,
    languages_used VARCHAR(255) DEFAULT NULL,
    library_info TEXT,
    main_press VARCHAR(255) DEFAULT NULL,
    residential_facilities TEXT,
    created_date DATE DEFAULT NULL,
    present_status_year YEAR DEFAULT NULL,
    degree_note TEXT,
    PRIMARY KEY (org_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;