SELECT
  UPPER(E.FirstName || ' ' || E.LastName) AS FullName,
  COUNT(C.CustomerId) AS NumberOfCustomers
FROM employees AS E
JOIN customers AS C
  ON E.EmployeeId = C.SupportRepId
WHERE
  E.Title = 'Sales Support Agent'
GROUP BY
  E.EmployeeId,
  E.FirstName,
  E.LastName
ORDER BY
  NumberOfCustomers ASC;
  