# Write your MySQL query statement below
with cte as
(
select customer_id, count(distinct product_key) as count_product
from Customer
group by customer_id
)
, cte1 as(
    select count(product_key) as count
    from Product
)
select a.customer_id
from cte1 b
join cte a on b.count = a.count_product