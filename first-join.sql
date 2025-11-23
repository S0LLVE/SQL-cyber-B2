SELECT
  a.Title AS AlbumName,
  ar.Name AS ArtistName
FROM albums AS a
JOIN artists AS ar
  ON a.ArtistId = ar.ArtistId
ORDER BY
  ar.Name,
  a.Title
LIMIT 100;