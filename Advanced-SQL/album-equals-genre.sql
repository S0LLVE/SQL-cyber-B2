SELECT
  AL.* -- Sélectionne toutes les colonnes de la table albums
FROM albums AS AL
WHERE
  AL.Title IN (
    SELECT
      G.Name
    FROM genres AS G
  );