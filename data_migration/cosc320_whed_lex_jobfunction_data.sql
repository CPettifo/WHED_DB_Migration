INSERT INTO cosc320_whed_lex_jobfunction (
  job_function_id,
  job_function_code,
  job_function,
  print_job_function
)
SELECT
  JobFunctionID,
  JobFunctionCode,
  JobFunction,
  PrintJobFunction
FROM
  whed_lex_jobfunction;
