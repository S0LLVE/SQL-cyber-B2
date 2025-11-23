SELECT
  T.Name
FROM Tracks AS T
JOIN InvoiceLines AS IL
  ON T.TrackId = IL.TrackId
WHERE
  IL.InvoiceId = (
    SELECT
      MAX(InvoiceId)
    FROM Invoices
  );