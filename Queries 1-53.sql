/* *** SQL-Query-CH03-01 *** */ 
SELECT    ProjectID, ProjectName, Department, MaxHours,
          StartDate, EndDate
FROM      PROJECT;

/* *** SQL-Query-CH03-02 *** */
SELECT    *
FROM      PROJECT;

/* *** SQL-Query-CH03-03 *** */
SELECT   ProjectName, Department, MaxHours
FROM      PROJECT;

/* *** SQL-Query-CH03-04 *** */
SELECT    ProjectName, MaxHours, Department
FROM      PROJECT;

/* *** SQL-Query-CH03-05 *** */
SELECT   Department
FROM      PROJECT;

/* *** SQL-Query-CH03-06 *** */
SELECT   DISTINCT Department
FROM     PROJECT;

/* *** SQL-Query-CH03-07 *** */
SELECT    *
FROM      PROJECT
WHERE     Department = 'Finance';



/* *** SQL-Query-CH03-33 *** */ 
SELECT ProjectName, COUNT(*) 
FROM PROJECT;

/* *** SQL-Query-CH03-34 *** */ 
SELECT *
FROM PROJECT 
WHERE MaxHours > AVG(MaxHours);

/* *** SQL-Query-CH03-35 *** */ 
SELECT ProjectID, ProjectName, MaxHours, 
(24.50 * MaxHours) AS MaxProjectCost 
FROM PROJECT;

/* *** SQL-Query-CH03-36 *** */ 
SELECT Department, Count(*) AS NumberOfEmployees 
FROM EMPLOYEE 
GROUP BY Department;

/* *** SQL-Query-CH03-37 *** */ 
SELECT Department, Count(*) AS NumberOfEmployees 
FROM EMPLOYEE 
GROUP BY Department 
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-38 *** */ 
SELECT Department, Count(*) AS NumberOfEmployees 
FROM EMPLOYEE 
WHERE EmployeeNumber <= 10 
GROUP BY Department 
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-39 *** */ 
SELECT FirstName, LastName 
FROM EMPLOYEE 
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/* *** SQL-Query-CH03-40 *** */ 
SELECT DISTINCT EmployeeNumber 
FROM ASSIGNMENT 
WHERE HoursWorked > 50;

/* *** SQL-Query-CH03-41 *** */ 
SELECT FirstName, LastName 
FROM EMPLOYEE 
WHERE EmployeeNumber IN 
(SELECT DISTINCT EmployeeNumber 
FROM ASSIGNMENT 
WHERE HoursWorked > 50);

/* *** SQL-Query-CH03-42 *** */ 
SELECT DISTINCT ProjectID 
FROM PROJECT 
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-43 *** */ 
SELECT DISTINCT EmployeeNumber 
FROM ASSIGNMENT 
WHERE HoursWorked > 40 
AND ProjectID IN 
(SELECT ProjectID 
FROM PROJECT 
WHERE Department = 'Accounting');

/* *** SQL-Query-CH03-44 *** */ 
SELECT FirstName, LastName 
FROM EMPLOYEE 
WHERE EmployeeNumber IN 
(SELECT DISTINCT EmployeeNumber 
FROM ASSIGNMENT 
WHERE HoursWorked > 40 
AND ProjectID IN 
(SELECT ProjectID 
FROM PROJECT 
WHERE Department = 'Accounting'));

/* *** SQL-Query-CH03-45 *** */ 
SELECT FirstName, LastName, ProjectID, HoursWorked 
FROM EMPLOYEE, ASSIGNMENT;

/* *** SQL-Query-CH03-46 *** */ 
SELECT FirstName, LastName, ProjectID, HoursWorked 
FROM EMPLOYEE, ASSIGNMENT 
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;

/* *** SQL-Query-CH03-47 *** */ 
SELECT FirstName, LastName, ProjectID, HoursWorked 
FROM EMPLOYEE, ASSIGNMENT 
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT. EmployeeNumber 
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-48 *** */ 
SELECT FirstName, LastName, ProjectID, HoursWorked 
FROM EMPLOYEE JOIN ASSIGNMENT 
ON EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber 
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-49 *** */ 
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked 
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A ON E.EmployeeNumber = A.EmployeeNumber 
GROUP BY LastName, FirstName 
ORDER BY LastName, FirstName;

/* *** SQL-Query-CH03-50 *** */ 
SELECT FirstName, LastName, ProjectID, HoursWorked 
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A ON E.EmployeeNumber = A.EmployeeNumber 
WHERE HoursWorked > 50 
ORDER BY LastName, FirstName, ProjectID;

/* *** SQL-Query-CH03-51 *** */ 
SELECT ProjectName, FirstName, LastName, HoursWorked 
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A ON E.EmployeeNumber = A.EmployeeNumber JOIN PROJECT AS P ON A.ProjectID = P.ProjectID 
ORDER BY P.ProjectID, A.EmployeeNumber;

/* *** SQL-Query-CH03-52 *** */ 
SELECT * 
FROM PROJECT;

/* *** SQL-Query-CH03-53 *** */ 
SELECT ProjectName, FirstName, LastName, HoursWorked 
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A ON E.EmployeeNumber = A.EmployeeNumber JOIN PROJECT AS P ON A.ProjectID = P.ProjectID 
ORDER BY P.ProjectID, A.EmployeeNumber;
