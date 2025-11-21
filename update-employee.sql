UPDATE employees
SET Title = 'IT Manager',
    ReportsTo = (SELECT EmployeeId FROM employees WHERE FirstName = 'Adams' AND LastName = 'Andrew')
WHERE FirstName = 'Robert' AND LastName = 'King';