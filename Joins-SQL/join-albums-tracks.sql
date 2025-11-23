SELECT
  a.Title AS AlbumName,
  t.Name AS TrackName,
  t.Milliseconds
FROM albums AS a
JOIN tracks AS t
  ON a.AlbumId = t.AlbumId
ORDER BY
  t.Milliseconds ASC
LIMIT 50;