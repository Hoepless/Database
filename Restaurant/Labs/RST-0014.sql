/* 
An owner of a restaurant decided to add the full English breakfast to the menu. It consists of fried eggs (Egg), sausages (Sausage), back bacon (Bacon), tomatoes (Tomato), mushrooms (Mushroom), fried bread (Bread) and often a slice of white or black pudding (similar to blood wurst. It is not an ingredient*). However, he needs help to clarify whether these ingredients exist in the database to add this dish to the menu. Please, help him with this task and output all possible ingredients.

Result set: IngredientName Output must be sorted by ingredient name.
*/

SELECT Name AS IngredientName
FROM Ingredients
WHERE Name LIKE 'Sausage'
   OR Name LIKE 'Bread'
   OR Name LIKE 'Tomato'
   OR Name LIKE 'EGG'
   OR Name LIKE 'Mushroom'
ORDER BY Name
