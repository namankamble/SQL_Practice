/* Stock Analysis: Identify products that have a stock level below a specified threshold (e.g., 10 units). List these products along with their current stock levels and product categories. */

select * from products
where Stock < 10;