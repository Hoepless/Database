/* 
Find ingredients that are used in both Spicy and Vegetarian dishes.

Output: ingredient name (Name)
*/

SELECT Ingredients.Name
FROM Ingredients
INNER JOIN DishesIngredients ON Ingredients.ID = DishesIngredients.IngredientID
INNER JOIN DishesTags ON DishesIngredients.DishID = DishesTags.DishID
INNER JOIN Tags ON DishesTags.TagID = Tags.ID
WHERE Tags.Name IN ('Vegetarian','Spicy')
GROUP BY Ingredients.Name
  HAVING COUNT(DISTINCT Tags.Name) >= 2
ORDER BY Name

  
