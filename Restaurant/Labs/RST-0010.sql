/* 
Find the names of dishes consisting of three or more words.
Output: name of the dish (Name)
*/

SELECT Name
FROM Dishes
WHERE Name LIKE '% _%_ %'
  OR Name LIKE '% % % %'
  AND Name NOT LIKE '%  %'
ORDER BY Name ASC
