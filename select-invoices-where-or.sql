SELECT InvoiceId, Total
FROM invoices
WHERE destination_city IN ('Paris', 'London');