/* Customer Analysis: Write a query to find the top 5 customers who have spent the most money in the last 6 months. */

SELECT c.CustomerID, c.Name,SUM(o.TotalAmount) AS TotalSpent
FROM  Orders o
JOIN  Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY c.CustomerID, c.Name
ORDER BY TotalSpent DESC
LIMIT 5;