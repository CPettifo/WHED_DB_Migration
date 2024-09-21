INSERT INTO cosc320_whed_tcsagreement (
    agreement_id,
    state_id,
    agreement_name,
    agreement_year
)
SELECT 
    sAgreementID,
    StateID,
    sAgreement,
    sAgreementYear
FROM whed_tcsagreement;