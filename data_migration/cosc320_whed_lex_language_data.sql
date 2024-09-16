INSERT INTO cosc320_whed_lex_language (
  language_id,
  language_code,
  language_name
)
SELECT
  LanguageID,
  LanguageCode,
  Language
FROM
  whed_lex_language;