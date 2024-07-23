/* Product Performance: Determine which product category had the highest total sales in the last year. Include the total sales amount in your result. */

SELECT p.Category, SUM(oi.Quantity * oi.UnitPrice) AS TotalSales
FROM OrderItems oi
JOIN Orders o ON oi.OrderID = o.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
WHERE o.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY p.Category
ORDER BY TotalSales DESC
LIMIT 3;

