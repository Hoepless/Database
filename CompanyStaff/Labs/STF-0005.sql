/*
HR department is preparing congratulatory letters in honor of the anniversary of the company. Now we store employees’ names in format “Last name, First name”. They need a list of names in a format “First name Last name”, i.e. “Smith, Stan” has to be transformed into “Stan Smith”.

We know that this rule is not met for part of the name - there is no comma in the name. You must add an exclamation mark to these names at the beginning, so that the manager pays attention and manually edit the name, i.e. “Jackie Chang” has to be transformed into “!Jackie Chang”.

Output: Transformed employee name (NewName)
*/

SELECT SUBSTRING(Name,CHARINDEX(',',Name)+2,LEN(Name)) 
  + ' ' +
  REPLACE(SUBSTRING(Name,1,CHARINDEX(',',Name)),',','') AS NewName
FROM Employees
WHERE Name LIKE '%, %'
UNION ALL
SELECT '!' + Name
FROM Employees
WHERE Name NOT LIKE '%, %'
