   SELECT InvoiceId, Total
   FROM invoices
   WHERE billingCity = 'Paris'
    OR BillingCity = 'London';
   