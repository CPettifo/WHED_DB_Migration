INSERT INTO cosc320_whed_orggovbody (
  org_id, governance_body_role, sort_order, 
  has_academic_governance, has_international_governance, is_iau_member
)
SELECT 
  OrgID, 
  GovBodyRole, 
  SortOrder, 
  COALESCE(GovBodyAcademic, 0), 
  COALESCE(GovBodyInternational, 0), 
  COALESCE(GovBodyIAUMembership, 0)
FROM whed_orggovbody;