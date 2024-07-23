/* Order Trends: Find the average order value for each month in the current year. Show the month and the average value. */

SELECT DATE_FORMAT(o.OrderDate, '%Y-%m') AS Month, AVG(o.TotalAmount) AS AverageOrderValue
FROM Orders o
WHERE YEAR(o.OrderDate) = YEAR(CURDATE())
GROUP BY DATE_FORMAT(o.OrderDate, '%Y-%m')
ORDER BY Month;
