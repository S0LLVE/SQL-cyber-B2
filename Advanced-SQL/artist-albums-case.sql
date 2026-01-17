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
  END AS IsProductive
FROM artists AS A
LEFT JOIN albums AS AL
  ON A.ArtistId = AL.ArtistId
GROUP BY
  A.ArtistId,
  A.Name
HAVING
  COUNT(AL.AlbumId) > 0 -- Exclure les artistes qui n'ont aucun album
ORDER BY
  A.ArtistId ASC -- Ordre par ID de l'artiste
LIMIT 100;
