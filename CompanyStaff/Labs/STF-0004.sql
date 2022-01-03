/*
Find Zodiac sign of every employee of the company who is not a manager (nobody reports to him). Signs’ names and date periods are in the table below.

Zodiac sign	Dates
Aries	March 21 – April 20
Taurus	April 21 – May 21
Gemini	May 22 – June 21
Cancer	June 22 – July 22
Leo	July 23 – August 22
Virgo	August 23 – September 23
Libra	September 24 – October 23
Scorpio	October 24 – November 22
Sagittarius	November 23 – December 21
Capricorn	December 22 – January 20
Aquarius	January 21 — February 19
Pisces	February 20 — March 20
Output: Employee name, Birth Date, Zodiac Sign
*/


SELECT Name, DateOfBirth,
  CASE
  WHEN (MONTH(DateOfBirth) = 3 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 4 AND DAY(DateOfBirth) <= 19) THEN 'Aries'
  WHEN (MONTH(DateOfBirth) = 4 AND DAY(DateOfBirth) >= 20) OR (MONTH(DateOfBirth) = 5 AND DAY(DateOfBirth) <= 20) THEN 'Taurus'
  WHEN (MONTH(DateOfBirth) = 5 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 6 AND DAY(DateOfBirth) <= 20) THEN 'Gemini'
  WHEN (MONTH(DateOfBirth) = 6 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 7 AND DAY(DateOfBirth) <= 20) THEN 'Cancer'
  WHEN (MONTH(DateOfBirth) = 7 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 8 AND DAY(DateOfBirth) <= 20) THEN 'Leo'
  WHEN (MONTH(DateOfBirth) = 8 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 9 AND DAY(DateOfBirth) <= 20) THEN 'Virgo'
  WHEN (MONTH(DateOfBirth) = 9 AND DAY(DateOfBirth) >= 24) OR (MONTH(DateOfBirth) = 10 AND DAY(DateOfBirth) <= 23) THEN 'Libra'
  WHEN (MONTH(DateOfBirth) = 10 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 11 AND DAY(DateOfBirth) <= 20) THEN 'Scorpio'
  WHEN (MONTH(DateOfBirth) = 11 AND DAY(DateOfBirth) >= 23) OR (MONTH(DateOfBirth) = 12 AND DAY(DateOfBirth) <= 21) THEN 'Sagittarius'
  WHEN (MONTH(DateOfBirth) = 12 AND DAY(DateOfBirth) >= 22) OR (MONTH(DateOfBirth) = 1 AND DAY(DateOfBirth) <= 20) THEN 'Capricorn'
  WHEN (MONTH(DateOfBirth) = 1 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 2 AND DAY(DateOfBirth) <= 20) THEN 'Aquarius'
  WHEN (MONTH(DateOfBirth) = 2 AND DAY(DateOfBirth) >= 21) OR (MONTH(DateOfBirth) = 3 AND DAY(DateOfBirth) <= 20) THEN 'Pisces'
  END AS Zodiac
FROM Employees
WHERE ID NOT IN (Select LeaderID FROM Employees WHERE LeaderID IS NOT NULL)
