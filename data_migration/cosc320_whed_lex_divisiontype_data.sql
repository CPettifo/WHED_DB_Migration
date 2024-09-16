INSERT INTO cosc320_whed_lex_divisiontype (
  division_type_id,
  division_type_code,
  division_type_name,
  map_to_code,
  sort_order,
  hierarchy_level
)
SELECT 
  DivisionTypeID,
  DivisionTypeCode,
  DivisionType,
  MapToCode,
  COALESCE(OutputSortOrder, 0),
  Niveau
FROM whed_lex_divisiontype;