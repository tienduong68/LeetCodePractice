# Write your MySQL query statement below
select p.product_name, s.year, s.price
from Sales s
left join product p on p.product_id = s.product_id