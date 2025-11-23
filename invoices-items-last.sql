SELECT
  P.Name
FROM Products AS P
JOIN InvoiceItems AS II
  ON P.ProductId = II.ProductId
WHERE
  II.InvoiceId = (
    SELECT
      MAX(InvoiceId)
    FROM Invoices
  );