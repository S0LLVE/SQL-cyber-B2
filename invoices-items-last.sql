SELECT
  T.Name
FROM tracks AS T
JOIN invoice_items AS II
  ON T.TrackId = II.TrackId
WHERE
  II.InvoiceId = (
    SELECT
      InvoiceId
    FROM invoices
    ORDER BY
      InvoiceDate DESC,
      InvoiceId DESC -- en cas d’égalité de date, prendre le plus grand ID
    LIMIT 1
  );