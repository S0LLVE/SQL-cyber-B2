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
    -- Note : la clause ELSE 'Unproductive' pour NbAlbums = 0 n'est plus nécessaire car HAVING les exclut
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
  A.Name ASC -- Gardons A.Name ASC comme hypothèse la plus probable après A.ArtistId
LIMIT 100;