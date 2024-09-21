INSERT INTO cosc320_whed_orgrecbody (
    org_id,
    foreign_cred_institution,
    foreign_cred_profession,
    rec_services,
    role,
    sort_order,
    is_academic,
    is_international,
    is_iau_member
)
SELECT 
    OrgID,
    CASE 
        WHEN rbForeignCredInstitution = -1 THEN TRUE
        WHEN rbForeignCredInstitution = 0 THEN FALSE
        ELSE NULL
    END,
    CASE 
        WHEN rbForeignCredProfession = -1 THEN TRUE
        WHEN rbForeignCredProfession = 0 THEN FALSE
        ELSE NULL
    END,
    NULLIF(rbRecServices, ''),
    NULLIF(rbRole, ''),
    SortOrder,
    CASE WHEN rbAcademic = 1 THEN TRUE ELSE FALSE END,
    CASE WHEN rbInternational = 1 THEN TRUE ELSE FALSE END,
    CASE WHEN rbIAUMembership = 1 THEN TRUE ELSE FALSE END
FROM 
    whed_orgrecbody;