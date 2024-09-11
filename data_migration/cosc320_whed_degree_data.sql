INSERT INTO cosc320_whed_degree (degree_id, org_id, degree_name, cred_id)
SELECT 
    iDegreeID, 
    COALESCE(OrgID, 0),
    COALESCE(iDegree, 'Unnamed Degree'), 
    COALESCE(CredID, 0)
FROM whed_degree;
