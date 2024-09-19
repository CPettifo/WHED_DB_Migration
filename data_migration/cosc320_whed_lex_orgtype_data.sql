INSERT INTO cosc320_whed_lex_orgtype (org_type_id, org_type_code, org_type)
SELECT OrgTypeID, OrgTypeCode, OrgType
FROM whed_lex_orgtype;