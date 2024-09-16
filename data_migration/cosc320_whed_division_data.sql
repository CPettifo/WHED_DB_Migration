INSERT INTO cosc320_whed_division 
(division_id, org_id, division_name, division_type_code, additional_details)
SELECT 
  iDivisionID,
  COALESCE(OrgID, 0), 
  COALESCE(iDivision, 'Unknown Division'),
  COALESCE(iDivisionTypeCode, 'UNK'), 
  iMoreDetails
FROM whed_division;
