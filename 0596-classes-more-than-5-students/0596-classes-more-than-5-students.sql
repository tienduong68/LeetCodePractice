# Write your MySQL query statement below
with cte as
(
select class, count(student) number_of_student
from Courses
group by class
)
select class from cte
where number_of_student >= 5