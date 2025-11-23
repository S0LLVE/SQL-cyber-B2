SELECT
  COUNT(CustomerId) AS NbCompanies
FROM customers
WHERE
  Company IS NOT NULL AND Company != '';