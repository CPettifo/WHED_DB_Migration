INSERT INTO cosc320_whed_lex_instclass (
  inst_class_code,
  inst_class,
  class_university_level,
  inst_class_sort_order,
  is_export_whed,
  is_export_xml
)
SELECT
  InstClassCode,
  InstClass,
  ClassUniversityLevel,
  InstClassSortOrder,
  CASE WHEN ExportWHED = 1 THEN TRUE ELSE FALSE END,
  CASE WHEN ExportXML = 1 THEN TRUE ELSE FALSE END
FROM
  whed_lex_instclass;