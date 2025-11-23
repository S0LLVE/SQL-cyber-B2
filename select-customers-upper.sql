SELECT
  UPPER(C.LastName) AS LastNameUpper,
  C.FirstName
FROM customers AS C
WHERE
  LENGTH(C.FirstName) > 5 AND LENGTH(C.LastName) > 5
ORDER BY
  C.LastName ASC;