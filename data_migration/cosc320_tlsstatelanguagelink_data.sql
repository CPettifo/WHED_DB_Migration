INSERT INTO cosc320_whed_tlsstatelanguagelink (
    state_id,
    language_code,
    language_sort
)
SELECT 
    StateID,
    LanguageCode,
    LanguageSort
FROM whed_tlsstatelanguagelink;