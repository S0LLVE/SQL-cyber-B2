SELECT
  AR.Name AS ArtistName,
  AL.Title AS AlbumName,
  T.Name AS TrackName,
  printf('%.2f MB', ROUND(T.Bytes / 1048576.0, 2)) AS MegaBytes
FROM tracks AS T
JOIN albums AS AL
  ON T.AlbumId = AL.AlbumId
JOIN artists AS AR
  ON AL.ArtistId = AR.ArtistId
WHERE
  AL.Title = 'American Idiot';