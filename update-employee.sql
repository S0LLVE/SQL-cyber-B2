   UPDATE employees
   SET Title = 'IT Manager',
       ReportsTo = 1  -- Remplacez par le bon ID que vous avez obtenu
   WHERE FirstName = 'Robert' AND LastName = 'King';
   