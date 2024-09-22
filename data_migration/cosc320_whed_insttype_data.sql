INSERT INTO cosc320_whed_tcsinsttype (
    inst_type_id,
    state_id,
    inst_type,
    inst_type_english,
    inst_type_sort,
    inst_type_description
)
SELECT 
    sInstTypeID,
    StateID,
    sInstType,
    sInstTypeEnglish,
    COALESCE(sInstTypeSort, 0),
    sInstTypeDescription
FROM whed_tcsinsttype;