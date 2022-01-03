/* 
An owner of a restaurant read an article on the internet about perfect tags. The report recommended reducing the size of all tags to 5 symbols to increase the cognitive reaction of users. The owner wants to follow the recommendation and remove the long tags. Please, help the restaurateur to improve his establishment and output tags that can be removed.

Result set: TagName Results must be sorted by tag name.
*/

Select DISTINCT Dishes.Name AS 'First dish'
From Dishes
INNER JOIN DishesIngredients ON DishesIngredients.DishID = Dishes.ID
INNER JOIN Ingredients ON DishesIngredients.IngredientID = IngredientID
WHERE Dishes.Weight = 300
AND Ingredients.Name IN ('Ham', 'Chicken', 'Burger', 'Turkey', 'Pork', 'Beef', 'Sausage', 'Fish')
  
