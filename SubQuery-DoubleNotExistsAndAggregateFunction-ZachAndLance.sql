/* Query- by Zach and Lance and Double Not Exists*/
SELECT DISTINCT EmployeeNumber
FROM EMPLOYEE
WHERE NOT EXISTS (
SELECT *
FROM ASSIGNMENT
WHERE NOT EXISTS (
SELECT *
FROM DEPARTMENT
ORDER BY EmployeeNumber
)
);

/* Query- by Zach and Lance and Aggregate Function */
SELECT HoursWorked, EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked >
 (SELECT AVG(HoursWorked)
 FROM ASSIGNMENT)
ORDER BY HoursWorked
