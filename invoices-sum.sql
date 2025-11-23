SELECT
  SUM(I.Total) AS AllInvoicesTotalPrice
FROM invoices AS I
JOIN customers AS C
  ON I.CustomerId = C.CustomerId
WHERE
  C.FirstName = 'Tim' AND C.LastName = 'Goyer';