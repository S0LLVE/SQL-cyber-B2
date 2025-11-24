SELECT
  G.Name AS Name, -- Changement ici: l'alias est 'Name', pas 'GenreName'
  AVG(T.Milliseconds) AS AverageDuration -- Changement ici: pas de formatage TIME(), juste la moyenne brute
FROM genres AS G
JOIN tracks AS T
  ON G.GenreId = T.GenreId
GROUP BY
  G.GenreId,
  G.Name
ORDER BY
  AVG(T.Milliseconds) DESC; -- L'ordre reste sur la valeur numérique