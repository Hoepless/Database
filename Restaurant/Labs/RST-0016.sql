/* 
A chef cook in a new restaurant has two kinds of suffering. They are the lack of inspiration and a demanding boss who wants to renew the menu. So he decided to resort to desperate measures. He kindly asks you to find all possible combinations of any two ingredients. The cook will analyze the results and, hopefully, new ideas will pop up in his mind.

The list can turn out to be quite long, therefore, for a start, we will limit the list to only those combinations where at least one ingredient begins with a vowel and the total length of both ingredients does not exceed 8 characters.

Output: IngredientA (the name of IngredientA), IngredientB.

Results must be ordered firstly by the name of ingredient A, then by ingredient B.


*/

SELECT A.Name AS IngredientA, B.Name AS IngredientB
FROM Ingredients AS A
INNER JOIN Ingredients AS B ON A.Name <> B.Name
WHERE SUBSTRING(A.Name,1,1) IN ('a','e','i','o','u')
   OR SUBSTRING(B.Name,1,1) IN ('a','e','i','o','u')
   AND A.Name NOT LIKE B.Name
GROUP BY A.Name, B.Name
  HAVING MAX(LEN(A.Name + B.Name)) <= 8
ORDER BY A.Name, B.Name
