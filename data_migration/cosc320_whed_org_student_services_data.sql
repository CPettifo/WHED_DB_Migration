INSERT INTO cosc320_whed_org_student_services (
    org_id, has_academic_counselling, has_social_counselling, has_careers_advice,
    has_nursery_care, has_cultural_activities, has_sports_facilities,
    has_language_laboratory, has_disabled_facilities, has_health_services,
    has_canteen, has_library, has_e_library, has_residential_facilities,
    has_it_centre, has_foreign_studies_centre, has_online_distance_learning
)
SELECT 
    OrgID, 
    iSSAcademicCounselling != 0,
    iSSSocialCounselling != 0,
    iSSCareersAdvices != 0,
    iSSNurseryCare != 0,
    iSSCulturalActivities != 0,
    iSSSportsFacilities != 0,
    iSSLanguageLaboratory != 0,
    iSSDisabledFacilities != 0,
    iSSHealthServices != 0,
    iSSCanteen != 0,
    iSSLibrary != 0,
    iSSeLibrary != 0,
    iSSResidentialFacilities != 0,
    iSSITCentre != 0,
    iSSForeignStudiesCentre != 0,
    iSSOnlineDistanceLearning != 0
FROM whed_org;
