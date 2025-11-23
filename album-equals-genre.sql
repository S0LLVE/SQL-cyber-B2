SELECT
  T.*
FROM tracks AS T
JOIN albums AS AL
  ON T.AlbumId = AL.AlbumId
WHERE
  AL.Title IN (
    SELECT
      G.Name
    FROM genres AS G
  );