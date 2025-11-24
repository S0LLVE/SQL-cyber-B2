SELECT
  FirstName,
  LastName,
  (CAST(STRFTIME('%Y', HireDate) AS INTEGER) - CAST(STRFTIME('%Y', BirthDate) AS INTEGER)) AS ApproximateAge
FROM employees
ORDER BY
  ApproximateAge ASC;