SELECT
  G.Name,
  COUNT(T.TrackId) AS NumberOfTracks
FROM genres AS G
JOIN tracks AS T
  ON G.GenreId = T.GenreId
GROUP BY
  G.GenreId,
  G.Name
ORDER BY
  G.Name;