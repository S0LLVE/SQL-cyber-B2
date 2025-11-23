SELECT
  AR.Name AS ArtistName,
  AL.Title AS AlbumName,
  T.Name AS TrackName,
  REPLACE(REPLACE(printf('%.2f MB', ROUND(T.Bytes / 1000000.0, 2)), '.00 MB', ' MB'), '0 MB', ' MB') AS MegaBytes -- Tentative pour supprimer '.00'
FROM tracks AS T
JOIN albums AS AL
  ON T.AlbumId = AL.AlbumId
JOIN artists AS AR
  ON AL.ArtistId = AR.ArtistId
WHERE
  AL.Title = 'American Idiot';