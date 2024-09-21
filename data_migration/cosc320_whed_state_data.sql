INSERT INTO cosc320_whed_state (
  state_id, country_name, state_name, country_code, state_code, state_alpha,
  proxy_state_id, is_palgrave, use_country_creds, ed_sys_locked, inst_locked,
  is_stub, cred_locked, iso3_code
)
SELECT
  StateID, Country, State, CountryCode, StateCode, StateAlpha,
  ProxyStateID, Palgrave, UseCountryCreds, EdSysLocked, InstLocked,
  Stub, CredLocked, ISO3
FROM whed_state;