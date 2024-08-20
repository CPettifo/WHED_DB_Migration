INSERT INTO cosc320_whed_org_staff_statistics (
    org_id, staff_statistics_year, is_statistics_approximate, 
    full_time_total, full_time_male, full_time_female,
    part_time_total, part_time_female, part_time_male,
    doc_full_time_total, doc_full_time_male, doc_full_time_female
)
SELECT 
    OrgID,
    CASE
        WHEN iStaffStatisticsYear REGEXP '^[0-9]{4}$' THEN iStaffStatisticsYear
        ELSE '0000'
    END AS staff_statistics_year,
    iStaffStatisticsApprox != 0, 
    iStaffFullTimeTotal, iStaffFullTimeMale, iStaffFullTimeFemale,
    iStaffPartTimeTotal, iStaffPartTimeFemale, iStaffPartTimeMale,
    iStaffDocFullTimeTotal, iStaffDocFullTimeMale, iStaffDocFullTimeFemale
FROM whed_org;