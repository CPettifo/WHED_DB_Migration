CREATE TABLE IF NOT EXISTS cosc320_whed_tcsadmissionreq (
    admission_req_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    state_id MEDIUMINT UNSIGNED DEFAULT NULL,
    cred_id_admission_req MEDIUMINT UNSIGNED DEFAULT NULL,
    requirement_level_option INT DEFAULT 0,
    min_mark_for_admission VARCHAR(250) DEFAULT NULL,
    requirement_for TEXT,
    PRIMARY KEY (admission_req_id),
    INDEX idx_state_id (state_id),
    INDEX idx_cred_id_admission_req (cred_id_admission_req)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;