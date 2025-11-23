SELECT
  a.Title AS AlbumName,
  ar.Name AS ArtistName
FROM albums AS a
JOIN artists AS ar
  ON a.ArtistId = ar.ArtistId
LIMIT 100;