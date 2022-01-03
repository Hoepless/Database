/* 
Recently, in our restaurant there has been a large number of fights in the kitchen between the chefs of different sections due to a lack of ingredients.

Therefore, our director decided to make serious sacrifice from his wallet and allocated money for warehouses for ingredients for each section. But he did it on one condition - each ingredient must be used at least twice in a section. So to help to complete such separation and to stop the kitchen violence, you need to provide the director a list in which for each ingredient we would have all sections, in which this ingredient is used only for one dish, in alphabetical order separated by commas.

Output: Ingredient Name (IngredientName), List of sections (Sections).

Order the output by Ingredient name alphabetically.
*/

WITH cte as (
SELECT IngredientID, COUNT(DishID) as count, Sections.Name as Sn
FROM DishesIngredients as DI
INNER JOIN Dishes
ON Dishes.ID = DI.DishID
INNER JOIN Sections
ON Sections.ID = Dishes.SectionID
GROUP BY IngredientID, Sections.Name
HAVING COUNT(DishID) < 2
)

SELECT Ingredients.Name as IngredientName, STRING_AGG(Sections.Name, ',') WITHIN GROUP (ORDER BY Sections.Name) as 'Sections'
FROM Ingredients
CROSS JOIN cte
INNER JOIN DishesIngredients as DI
ON DI.IngredientID = Ingredients.ID
INNER JOIN Dishes
ON Dishes.ID = DI.DishID
INNER JOIN Sections
ON Sections.ID = Dishes.SectionID
WHERE DI.IngredientID = cte.IngredientID AND cte.Sn = Sections.Name
GROUP BY Ingredients.Name
ORDER BY IngredientName, 'Sections'
