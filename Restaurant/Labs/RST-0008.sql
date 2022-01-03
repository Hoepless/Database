/* 
Find name of the dishes, which’s first letter is in between M and P. Result set: dish name (Name)
*/

SELECT Name
FROM Dishes
WHERE Name Like '[M-P]%'
