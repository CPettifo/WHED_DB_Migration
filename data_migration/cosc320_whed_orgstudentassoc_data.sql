INSERT INTO cosc320_whed_orgstudentassoc (
    org_id,
    student_assoc_role,
    sort_order,
    is_academic,
    is_international,
    is_iau_member
)
SELECT 
    OrgID,
    NULLIF(saRole, ''),
    SortOrder,
    CASE WHEN saAcademic = 1 THEN TRUE ELSE FALSE END,
    CASE WHEN saInternational = 1 THEN TRUE ELSE FALSE END,
    CASE WHEN saIAUMembership = 1 THEN TRUE ELSE FALSE END
FROM 
    whed_orgstudentassoc;