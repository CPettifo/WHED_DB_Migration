-- To avoid all zeros error for date in MySQL

-- Step 1: Alter the table to temporarily accept VARCHAR for the date fields
ALTER TABLE cosc320_whed_lex_fos
MODIFY created_at VARCHAR(19),
MODIFY updated_at VARCHAR(19);

-- Step 2: Insert data, handling the problematic date fields
INSERT INTO cosc320_whed_lex_fos (
  fos_code,
  fos_level,
  is_active,
  fos_level_1,
  fos_level_2,
  fos_level_3,
  fos_display,
  created_at,
  updated_at
)
SELECT
  FOSCode,
  FOSLevel,
  CASE WHEN Valide = 1 THEN TRUE ELSE FALSE END,
  FOSLevel1,
  FOSLevel2,
  FOSLevel3,
  FOSDisplay,
  CASE 
    WHEN CAST(FOSCreate AS CHAR) = '0000-00-00 00:00:00' OR FOSCreate IS NULL THEN '1970-01-01 00:00:01'
    ELSE CAST(FOSCreate AS CHAR)
  END,
  CASE 
    WHEN CAST(FOSUpdate AS CHAR) = '0000-00-00 00:00:00' OR FOSUpdate IS NULL THEN '1970-01-01 00:00:01'
    ELSE CAST(FOSUpdate AS CHAR)
  END
FROM
  whed_lex_fos;

-- Step 3: Update the date fields to convert them to the correct datetime format
UPDATE cosc320_whed_lex_fos
SET 
  created_at = STR_TO_DATE(created_at, '%Y-%m-%d %H:%i:%s'),
  updated_at = STR_TO_DATE(updated_at, '%Y-%m-%d %H:%i:%s');

-- Step 4: Alter the table back to use TIMESTAMP for the date fields
ALTER TABLE cosc320_whed_lex_fos
MODIFY created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
MODIFY updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;