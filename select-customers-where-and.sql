SELECT c.FirstName, c.LastName
FROM customers c
JOIN support_reps sr ON c.SupportRepId = sr.SupportRepId
WHERE c.Country = 'USA' 
AND sr.Name = 'Peacock Jane';