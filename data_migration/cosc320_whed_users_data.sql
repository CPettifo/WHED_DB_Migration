-- Step 1: Alter the table to temporarily accept VARCHAR for the date fields
ALTER TABLE cosc320_whed_users
MODIFY created_at VARCHAR(19),
MODIFY last_access VARCHAR(19),
MODIFY account_expiry VARCHAR(19),
MODIFY password_changed_at VARCHAR(19);

-- Step 2: Insert data, handling the problematic date fields
INSERT INTO cosc320_whed_users (
    user_id, username, password_hash, reset_pass_token, connection_count, springer_count,
    email, language, role, status, created_at, last_access, last_name, first_name,
    organization, address, postal_code, city, country, phone, fax, website, title,
    job_function, account_expiry, payment_status, waiting_status, is_ihub_buyer,
    password_changed_at, total_exports, json_usage_count
)
SELECT 
    UserID, login, pass, 
    CASE WHEN reset_pass > 0 THEN CONCAT('token_', reset_pass) ELSE NULL END,
    connexion, springer, mail, language, role, status,
    CASE 
        WHEN CAST(FROM_UNIXTIME(created) AS CHAR) = '0000-00-00 00:00:00' OR created = 0 THEN '1970-01-01 00:00:01'
        ELSE CAST(FROM_UNIXTIME(created) AS CHAR)
    END,
    CASE 
        WHEN CAST(FROM_UNIXTIME(access) AS CHAR) = '0000-00-00 00:00:00' OR access = 0 THEN '1970-01-01 00:00:01'
        ELSE CAST(FROM_UNIXTIME(access) AS CHAR)
    END,
    nom, prenom, organisme, adresse, cp, ville, pays, tel, fax, web, titre, fonction,
    CASE 
        WHEN CAST(FROM_UNIXTIME(expire) AS CHAR) = '0000-00-00 00:00:00' OR expire = 0 THEN '1970-01-01 00:00:01'
        ELSE CAST(FROM_UNIXTIME(expire) AS CHAR)
    END,
    payment, attente, IHUBuyer,
    CASE 
        WHEN CAST(datepass AS CHAR) = '0000-00-00 00:00:00' OR datepass IS NULL THEN '1970-01-01 00:00:01'
        ELSE CAST(datepass AS CHAR)
    END,
    totalexport, json
FROM whed_users;

-- Step 3: Update the date fields to convert them to the correct datetime format
UPDATE cosc320_whed_users
SET 
    created_at = STR_TO_DATE(created_at, '%Y-%m-%d %H:%i:%s'),
    last_access = STR_TO_DATE(last_access, '%Y-%m-%d %H:%i:%s'),
    account_expiry = STR_TO_DATE(account_expiry, '%Y-%m-%d %H:%i:%s'),
    password_changed_at = STR_TO_DATE(password_changed_at, '%Y-%m-%d %H:%i:%s');

-- Step 4: Alter the table back to use TIMESTAMP for the date fields
ALTER TABLE cosc320_whed_users
MODIFY created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
MODIFY last_access TIMESTAMP NULL DEFAULT NULL,
MODIFY account_expiry TIMESTAMP NULL DEFAULT NULL,
MODIFY password_changed_at TIMESTAMP NULL DEFAULT NULL;