# Write your MySQL query statement below
WITH cte AS(
SELECT product_id, sum(unit) AS total
    FROM orders
    WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY product_id
)
SELECT p.product_name , cte.total AS unit  FROM cte cte
JOIN products p ON p.product_id=cte.product_id
HAVING total >= 100
