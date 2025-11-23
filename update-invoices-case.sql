UPDATE invoices
SET
  Total = Total + CASE
    WHEN BillingCountry = 'France' THEN 3
    WHEN BillingCountry = 'USA' THEN 5
    ELSE 1
  END;