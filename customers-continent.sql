SELECT
  FirstName,
  LastName,
  Country,
  CASE
    WHEN Country IN ('USA', 'Canada', 'Mexico', 'Brazil', 'Argentina', 'Colombia', 'Chile') THEN 'America'
    -- Ajout des pays manquants à la liste de l'Europe
    WHEN Country IN ('France', 'Germany', 'UK', 'Spain', 'Italy', 'Netherlands', 'Belgium', 'Sweden', 'Norway', 'Finland', 'Denmark', 'Switzerland', 'Austria', 'Ireland', 'Portugal', 'Greece', 'Poland', 'Czech Republic', 'Hungary', 'United Kingdom') THEN 'Europe'
    WHEN Country IN ('Japan', 'China', 'India', 'South Korea', 'Indonesia', 'Thailand', 'Vietnam', 'Philippines', 'Malaysia', 'Singapore') THEN 'Asia'
    WHEN Country IN ('Australia', 'New Zealand') THEN 'Oceania'
    ELSE 'Other'
  END AS Continent
FROM customers;