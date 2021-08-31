with cte as
(select name,department,salary,
 DENSE_RANK() OVER (PARTITION BY department ORDER BY salary desc) salary_rank
from test) 
select name,department,salary from cte
where salary_rank =1
