INSERT INTO cosc320_whed_org_fees (
    org_id, 
    national_fees, 
    national_fees_currency_code, 
    international_fees, 
    international_fees_currency_code
)
SELECT 
    OrgID, 
    iFeesN, 
    iFeesNCurrencyCode, 
    iFeesI, 
    iFeesICurrencyCode
FROM whed_org;
