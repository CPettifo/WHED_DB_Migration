INSERT INTO cosc320_whed_periodical (
    periodical_id,
    org_id,
    periodical_name
)
SELECT 
    iPeriodicalID,
    OrgID,
    iPeriodical
FROM 
    whed_periodical;