INSERT INTO cosc320_whed_lex_country (
  country_code, country_name, country_name_fr, iso3_code, region_id, 
  currency_code, keyboard_layout, address_format, display_font, 
  post_code_position, print_funding_heads, is_public
)
SELECT 
  c.CountryCode, c.Country, c.CountryFr, c.ISO3, cr.id,
  c.CurrencyCode, c.Clavier, c.AddressFormat, c.DisplayFont,
  c.PostCodePos, c.PrintFundingHeads, c.Public
FROM whed_lex_country c
JOIN cosc320_whed_lex_country_region cr 
  ON c.RegionCodeCRM = cr.region_code_crm 
  AND c.RegionCRM = cr.region_crm
  AND c.RegionMap = cr.region_map;