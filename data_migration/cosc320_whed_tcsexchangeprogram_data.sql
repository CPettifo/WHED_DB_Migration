INSERT INTO cosc320_whed_tcsexchangeprogram (
    exchange_program_id,
    state_id,
    exchange_program_name
)
SELECT 
    sExchangeProgramID,
    StateID,
    sExchangeProgram
FROM whed_tcsexchangeprogram;
