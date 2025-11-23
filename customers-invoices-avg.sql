SELECT
  C.FirstName,
  C.LastName,
  AVG(I.Total) AS InvoicesAverage
FROM customers AS C
JOIN invoices AS I
  ON C.CustomerId = I.CustomerId
GROUP BY
  C.CustomerId,
  C.FirstName,
  C.LastName
ORDER BY
  C.FirstName ASC;