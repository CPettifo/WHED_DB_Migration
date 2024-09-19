INSERT INTO cosc320_whed_lex_stage (stage_code, stage, stage_type_option)
SELECT StageCode, Stage, StageTypeOption
FROM whed_lex_stage
WHERE StageCode != '';