INSERT INTO cosc320_whed_tcsadmissionreq (
    admission_req_id,
    state_id,
    cred_id_admission_req,
    requirement_level_option,
    min_mark_for_admission,
    requirement_for
)
SELECT 
    sAdmissionReqID,
    StateID,
    CredID_AdmissionReq,
    sRequirementLevelOption,
    sMinMark,
    sRequirementFor
FROM whed_tcsadmissionreq;