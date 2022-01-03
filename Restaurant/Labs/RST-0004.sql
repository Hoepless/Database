/* 
Find all the dishes that are marked as Vegetarian, but contains Turkey meat in the ingredients. Result set: dish names (Name).
*/

SELECT Dishes.Name
FROM Dishes
INNER JOIN DishesIngredients ON Dishes.ID = DishesIngredients.DishID
INNER JOIN Ingredients ON DishesIngredients.IngredientID = Ingredients.ID
INNER JOIN DishesTags ON DishesTags.DishID = Dishes.ID
INNER JOIN Tags ON DishesTags.TagID = Tags.ID
WHERE Tags.Name = 'Vegetarian'
  AND Ingredients.Name = 'Turkey'
