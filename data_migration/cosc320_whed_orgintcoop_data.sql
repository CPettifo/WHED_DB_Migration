INSERT INTO cosc320_whed_orgintcoop (
  org_id, international_cooperation_role, sort_order, 
  has_academic_cooperation, has_international_cooperation, is_iau_member
)
SELECT 
  OrgID, 
  icRole, 
  SortOrder, 
  COALESCE(icAcademic, 0), 
  COALESCE(icInternational, 0), 
  COALESCE(icIAUMembership, 0)
FROM whed_orgintcoop;