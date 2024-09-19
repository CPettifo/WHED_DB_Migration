INSERT INTO cosc320_whed_orgfinaidbody (
  org_id, fa_grants, fa_loans, fa_student_cat, fa_role, 
  sort_order, fa_academic, fa_international, fa_iau_membership
)
SELECT 
  OrgID, 
  COALESCE(faGrants, 0), 
  COALESCE(faLoans, 0), 
  faStudentCat, 
  faRole, 
  SortOrder, 
  COALESCE(faAcademic, 0), 
  COALESCE(faInternational, 0), 
  COALESCE(faIAUMembership, 0)
FROM whed_orgfinaidbody;