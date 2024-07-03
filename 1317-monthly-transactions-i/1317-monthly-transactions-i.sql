# Write your MySQL query statement below
-- select month,country, count(*) as trans_count, sum(state = 'approved') as approved_count,
-- sum(amount) as trans_total_amount, 
-- sum(if(state='approved', amount, 0)) as approved_total_amount
-- from (select *,DATE_FORMAT(trans_date, '%Y-%m') as month 
-- from transactions) as tab group by country,month;

with cte as(
    select *, date_format(trans_date, '%Y-%m') as month
    from Transactions
)
select month,country, count(*) as trans_count, sum(state = 'approved') as approved_count,
sum(amount) as trans_total_amount,
sum(if(state='approved', amount, 0)) as approved_total_amount
from cte 
group by country, month