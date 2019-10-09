



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
