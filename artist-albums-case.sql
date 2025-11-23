SELECT
  A.Name AS Name,
  COUNT(AL.AlbumId) AS NbAlbums,
  CASE
    WHEN COUNT(AL.AlbumId) = 1
    THEN 'Unproductive'
    WHEN COUNT(AL.AlbumId) > 1 AND COUNT(AL.AlbumId) < 10
    THEN 'Productive'
    WHEN COUNT(AL.AlbumId) >= 10
    THEN 'Very Productive'
    ELSE 'Unknown' -- Au cas où un artiste n'aurait pas d'albums (bien que COUNT donnerait 0)
  END AS IsProductive
FROM artists AS A
LEFT JOIN albums AS AL
  ON A.ArtistId = AL.ArtistId
GROUP BY
  A.ArtistId,
  A.Name
ORDER BY
  A.ArtistId
LIMIT 100;