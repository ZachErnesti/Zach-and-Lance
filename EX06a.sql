SELECT EmployeeNumber, FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber NOT IN
 (SELECT DISTINCT EmployeeNumber
 FROM ASSIGNMENT)
ORDER BY EmployeeNumber
