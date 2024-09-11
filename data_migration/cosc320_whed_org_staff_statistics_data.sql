-- Perform the INSERT operation with year range check and default to 1901
INSERT INTO cosc320_whed_org_staff_statistics (
    org_id, staff_statistics_year, is_statistics_approximate, 
    full_time_total, full_time_male, full_time_female,
    part_time_total, part_time_female, part_time_male,
    doc_full_time_total, doc_full_time_male, doc_full_time_female
)
SELECT 
    OrgID,
    CASE
        WHEN iStaffStatisticsYear REGEXP '^[0-9]{4}$' AND 
             CAST(iStaffStatisticsYear AS UNSIGNED) BETWEEN 1902 AND 2155 
        THEN iStaffStatisticsYear
        ELSE 1901  
    END AS staff_statistics_year,
    COALESCE(iStaffStatisticsApprox != 0, FALSE), 
    COALESCE(iStaffFullTimeTotal, 0), 
    COALESCE(iStaffFullTimeMale, 0), 
    COALESCE(iStaffFullTimeFemale, 0),
    COALESCE(iStaffPartTimeTotal, 0), 
    COALESCE(iStaffPartTimeFemale, 0), 
    COALESCE(iStaffPartTimeMale, 0),
    COALESCE(iStaffDocFullTimeTotal, 0), 
    COALESCE(iStaffDocFullTimeMale, 0), 
    COALESCE(iStaffDocFullTimeFemale, 0)
FROM whed_org;
