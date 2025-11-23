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
    ELSE 'Unproductive' -- Traite les artistes avec 0 album comme "Unproductive"
  END AS IsProductive
FROM artists AS A
LEFT JOIN albums AS AL
  ON A.ArtistId = AL.ArtistId
GROUP BY
  A.ArtistId,
  A.Name
ORDER BY
  A.Name ASC -- Tri par nom d'artiste
LIMIT 100;