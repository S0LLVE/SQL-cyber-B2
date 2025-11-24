SELECT
  I.InvoiceId,
  T.Name AS InvoiceItem,
  II.UnitPrice
FROM invoices AS I
JOIN invoice_items AS II
  ON I.InvoiceId = II.InvoiceId
JOIN tracks AS T
  ON II.TrackId = T.TrackId
WHERE
  I.InvoiceId = 10
ORDER BY
  T.Name ASC;