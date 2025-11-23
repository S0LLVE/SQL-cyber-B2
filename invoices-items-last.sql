SELECT
  P.Name
FROM Products AS P
JOIN InvoiceItems AS II
  ON P.ProductId = II.ProductId
WHERE
  II.InvoiceId = (
    SELECT
      InvoiceId
    FROM Invoices
    ORDER BY
      InvoiceDate DESC,
      InvoiceId DESC -- en cas d'égalité de date, prendre le plus grand ID
    LIMIT 1
  );