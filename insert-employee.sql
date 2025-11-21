INSERT INTO employees (
    LastName, 
    FirstName, 
    Title, 
    ReportsTo, 
    BirthDate, 
    HireDate, 
    Address, 
    City, 
    State, 
    Country, 
    PostalCode, 
    Phone, 
    Fax, 
    Email
) VALUES (
    'Doe', 
    'John', 
    'IT Developer', 
    (SELECT EmployeeId FROM employees WHERE FirstName = 'Michael' AND LastName = 'Mitchell'), 
    '1999-03-18 00:00:00',  -- Format de date corrigé
    '2020-03-18 00:00:00',  -- Format de date corrigé
    '142 rue Sainte-Catherine', 
    'Bordeaux', 
    'NA', 
    'France', 
    '33000', 
    '+33 6 77 88 99 10', 
    '+33 5 68 89 90 90', 
    'john.doe@gmail.com'
);