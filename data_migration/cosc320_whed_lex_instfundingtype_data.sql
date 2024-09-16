INSERT INTO cosc320_whed_lex_instfundingtype (
  inst_funding_type_id,
  inst_funding_type_code,
  inst_funding_type,
  inst_funding_type_sort_order,
  inst_funding_level
)
SELECT
  InstFundingTypeID,
  InstFundingTypeCode,
  InstFundingType,
  InstFundingTypeSortOrder,
  InstFundingNiveau
FROM
  whed_lex_instfundingtype;