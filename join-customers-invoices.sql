SELECT
  c.FirstName,
  c.LastName,
  c.Company,
  i.Total AS InvoiceTotalPrice
FROM customers AS c
JOIN invoices AS i
  ON c.CustomerId = i.CustomerId
WHERE
  c.Company IS NOT NULL;