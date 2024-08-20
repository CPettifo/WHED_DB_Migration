INSERT INTO cosc320_whed_org_description (
    org_id, 
    history, 
    admission_requirements, 
    academic_year, 
    languages_used, 
    library_info, 
    main_press, 
    residential_facilities, 
    created_date, 
    present_status_year, 
    degree_note
)
SELECT 
    OrgID, 
    iHistory, 
    iAdmissionRequirements, 
    iAcademicYear, 
    iLanguagesUsed, 
    iLibrary, 
    iMainPress, 
    iResidentialFacilities, 
    CASE
        WHEN iCreated REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' THEN STR_TO_DATE(iCreated, '%Y-%m-%d')
        ELSE NULL
    END,
    CASE
        WHEN iPresentStatusYear REGEXP '^[0-9]{4}$' AND CAST(iPresentStatusYear AS UNSIGNED) BETWEEN 1901 AND 2155 
        THEN CAST(iPresentStatusYear AS UNSIGNED)
        ELSE NULL
    END,
    iDegreeNote
FROM whed_org;

