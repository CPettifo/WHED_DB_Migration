CREATE TABLE cosc320_whed_degree (
    degree_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    org_id MEDIUMINT UNSIGNED NOT NULL,
    degree_name VARCHAR(255) NOT NULL,
    cred_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (degree_id),
    KEY idx_org_id (org_id),
    KEY idx_cred_id (cred_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;