INSERT INTO cosc320_whed_tcsrefinfo (
    ref_info_id,
    state_id,
    ref_info,
    ref_info_author,
    ref_info_publisher,
    ref_info_year,
    ref_info_link
)
SELECT 
    sRefInfoID,
    StateID,
    sRefInfo,
    sRefInfoAuthor,
    sRefInfoPublisher,
    CASE 
        WHEN sRefInfoYear BETWEEN 1901 AND 2155 THEN sRefInfoYear
        ELSE NULL
    END,
    NULLIF(sRefInfoLink, '')
FROM whed_tcsrefinfo;