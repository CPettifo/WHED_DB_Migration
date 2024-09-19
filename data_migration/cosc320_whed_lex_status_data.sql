INSERT INTO cosc320_whed_lex_status (status_code, status, aide)
SELECT StatusCode, Status, Aide
FROM whed_lex_status;