/* 
Find name of the dishes, which’s last letter is in between R and T. Output: dish name (Name)
*/

SELECT Name
FROM Dishes
WHERE Name LIKE '%[R-T]'
