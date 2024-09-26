INSERT INTO cosc320_whed_tlsstatestagelink (
    state_id,
    stage_code,
    stage_name,
    stage_description
)
SELECT 
    StateID,
    StageCode,
    sStageName,
    sStageDescription
FROM whed_tlsstatestagelink;