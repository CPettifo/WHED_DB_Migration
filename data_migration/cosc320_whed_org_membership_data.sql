INSERT INTO cosc320_whed_org_membership (
    org_id, 
    iau_membership_option, 
    iau_logo, 
    aau_membership_option
)
SELECT 
    OrgID, 
    iIAUMembershipOption,
    iIAULogo,
    iAAUMembershipOption
FROM whed_org;