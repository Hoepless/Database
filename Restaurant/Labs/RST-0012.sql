/*A British company bought a Kyrgyz restaurant. However, the new owner became very upset when he discovered that the weight of ingredients is stored in the metric system, in grams. Please, help him to convert grams to pounds. Please, note that one pound is equal to 454 grams.

Result set: IngredientID, WeightInPounds. Output must be sorted by weight from highest to lowest value. Return first 25 rows (the heaviest) */

SELECT TOP 25 IngredientID, CAST(Weight AS DECIMAL) / 454.0 AS WeightInPounds
FROM DishesIngredients
ORDER BY Weight DESC
