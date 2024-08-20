INSERT INTO cosc320_whed_org_accreditation (
    org_id, 
    accrediting_agency, 
    accreditation_end_date
)
SELECT 
    OrgID, 
    iAccreditingAgency, 
    CASE
        WHEN iAccreditationEndDate REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' 
        THEN STR_TO_DATE(iAccreditationEndDate, '%Y-%m-%d')
        ELSE NULL
    END
FROM whed_org;