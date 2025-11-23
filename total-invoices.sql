SELECT
  (SUBSTR(C.FirstName, 1, 1) || LOWER(SUBSTR(C.FirstName, 2)) || ' ' || UPPER(C.LastName)) AS FullName,
  SUM(I.Total) AS AllInvoices
FROM customers AS C
JOIN invoices AS I
  ON C.CustomerId = I.CustomerId
GROUP BY
  C.CustomerId,
  C.FirstName,
  C.LastName
HAVING
  SUM(I.Total) > 38
ORDER BY
  FullName ASC;
  