INSERT INTO cosc320_whed_org_membership (
    org_id, 
    iau_membership_option, 
    iau_logo, 
    iau_news,  
    aau_membership_option
)
SELECT 
    OrgID, 
    COALESCE(iIAUMembershipOption, 0),
    iIAULogo,
    iIAUNews, 
    COALESCE(iAAUMembershipOption, 0)
FROM whed_org;