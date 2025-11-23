SELECT
  G.Name AS GenreName,
  TIME(AVG(T.Milliseconds) / 1000, 'unixepoch') AS AverageDuration
FROM genres AS G
JOIN tracks AS T
  ON G.GenreId = T.GenreId
GROUP BY
  G.GenreId,
  G.Name
ORDER BY
  AVG(T.Milliseconds) DESC;