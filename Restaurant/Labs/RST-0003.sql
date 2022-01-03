/* 
Find all the ingredients for dish Burrito.

Output: ingredient’s name (Name).
*/

SELECT Ingredients.Name 
FROM Ingredients
INNER JOIN DishesIngredients ON Ingredients.ID = DishesIngredients.IngredientID
INNER JOIN Dishes ON DishesIngredients.DishID = Dishes.ID
WHERE Dishes.Name LIKE 'Burrito'
ORDER BY Name
