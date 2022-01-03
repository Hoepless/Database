/* 
We have made contact with the alien civilization Lhung-Zi! In the course of getting to know their culture, we found out that phonetics is one of the most sensitive stimuli for them. So, for example, it is unacceptable for them to use the sound/letter L, anywhere except the name of their civilization. But they admit the replacement of this sound by R (this is why the Japanese headed the contact delegation). What is completely unacceptable is the presence in the phrase of more than two letters/sounds A.

During the excursion, representatives of Lhung-Zi unexpectedly decided to visit our restaurant. It is necessary to replace ‘L’ with ‘R’ in all dishes names and exclude all dishes in the name of which there are more than two letters ‘A’. And you also need to remove all drinks - they have holes in their trunk, and they do not consume liquids at all.

Output: Corrected dish name
*/

SELECT REPLACE(Dishes.Name,'l','r') AS NewName
FROM Dishes
INNER JOIN Sections ON Dishes.SectionID = Sections.ID
WHERE Sections.Name <> 'Drink'
  AND Dishes.Name not in (SELECT Name FROM Dishes WHERE Name LIKE '%a%a%a%')

  
