SELECT
  ar.Name,
  a.Title AS AlbumTitle
FROM artists AS ar
LEFT JOIN albums AS a
  ON ar.ArtistId = a.ArtistId
ORDER BY
  ar.Name,
  a.Title
LIMIT 100;