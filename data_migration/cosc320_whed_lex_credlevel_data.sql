INSERT INTO cosc320_whed_lex_credlevel (
  credential_level_id,
  credential_level_code,
  credential_level_name,
  credential_level_type_option,
  is_public
)
SELECT 
  CredLevelID,
  CredLevelCode,
  CredLevel,
  COALESCE(CredLevelTypeOption, 0),
  CASE WHEN CredLevelPublic = 1 THEN TRUE ELSE FALSE END
FROM whed_lex_credlevel;
