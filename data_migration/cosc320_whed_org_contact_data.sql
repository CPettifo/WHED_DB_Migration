INSERT INTO cosc320_whed_org_contact (
    org_id, street, city, province, post_code, tel, fax, email, website
)
SELECT 
    OrgID, Street, City, Province, PostCode, Tel, Fax, EMail, WWW
FROM whed_org;