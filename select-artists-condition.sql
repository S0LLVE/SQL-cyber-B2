SELECT
  A.Name
FROM artists AS A
JOIN albums AS AL
  ON A.ArtistId = AL.ArtistId
GROUP BY
  A.ArtistId,
  A.Name
HAVING
  COUNT(AL.AlbumId) >= 4
ORDER BY
  A.Name DESC;