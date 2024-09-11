CREATE TABLE cosc320_whed_degree_origin (
    origin_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    cred_id MEDIUMINT UNSIGNED NOT NULL,
    origin_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (origin_id),
    KEY idx_cred_id (cred_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;