SELECT DISTINCT
  t.Name AS TrackName,
  p.Name AS PlaylistName
FROM playlist_track AS pt
JOIN playlists AS p
  ON pt.PlaylistId = p.PlaylistId
JOIN tracks AS t
  ON pt.TrackId = t.TrackId
WHERE
  p.Name = 'TV Shows'
LIMIT 100;