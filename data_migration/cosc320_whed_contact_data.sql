INSERT INTO cosc320_whed_contact 
(contact_id, org_id, surname, first_name, job_title, job_function_code, years_of_office, phone, email, gender, is_current)
SELECT 
  ContactID, 
  OrgID, 
  Surname, 
  FirstName, 
  JobTitle, 
  JobFunctionCode, 
  YearsOfOffice, 
  ContactTel, 
  ContactEMail, 
  Sex,
  TRUE  -- Assuming all migrated records are current; adjust if necessary
FROM whed_contact;

