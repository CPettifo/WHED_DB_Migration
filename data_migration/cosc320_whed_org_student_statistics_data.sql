-- Insert data from the existing whed_org table
INSERT INTO cosc320_whed_org_student_statistics (
    org_id, student_statistics_year, is_student_statistics_approx,
    student_total, student_male, student_female,
    student_foreign_total, student_foreign_male, student_foreign_female,
    student_part_time, student_distance, students_disabilities
)
SELECT 
    OrgID, 
    CASE
        WHEN iStaffStatisticsYear REGEXP '^[0-9]{4}$' THEN iStaffStatisticsYear
        ELSE '0000'
    END AS statistics_year,
    iStudentStatisticsApprox != 0,
    iStudentTotal, iStudentMale, iStudentFemale,
    iStudentForeignTotal, iStudentForeignMale, iStudentForeignFemale,
    iStudentPartTime, iStudentDistance, iStudentsDisabilities
FROM whed_org;