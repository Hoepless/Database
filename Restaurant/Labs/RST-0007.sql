/* 
Find dish names that begin with the letter S. Sort the result by alphabet, ignoring first two symbols in the name of the dish. Result set: dish name (Name).
*/

SELECT Name
FROM Dishes
WHERE Name LIKE 'S%'
ORDER BY SUBSTRING(Name,3,15) ASC
