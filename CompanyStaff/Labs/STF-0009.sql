/*
ALERT! There is a spy in our company from company competitor.

We know that he is a second-level manager with no bonuses applied to him.

Your task is to find IDs of such suspects and report to us.

Consider employees who have no subordinates are subordinates to the first-level managers, the first-level managers are subordinate to the second-level and so on.
 */


SELECT DISTINCT LeaderID
FROM Employees
WHERE ID IN (SELECT LeaderID
             FROM Employees
             WHERE ID IN (
                          SELECT ID
                          FROM Employees
                          EXCEPT
                          SELECT LeaderID
                          FROM Employees
                          )
)
AND LeaderID IS NOT NULL
AND LeaderID NOT IN (SELECT Bonuses.EmployeeID FROM Bonuses)
 

