# SQL
In this query we are going to identify the person with highest salary in each department
Step 1:
retrieve the table using the query below:
SELECT * FROM test
It returns the table
PICTURE 1
Step 2:
Group by the departments and sort them base off the salary in each department
"SELECT name,department,salary, 
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) salary_rank
FROM test"

Picture 2
Step3: 
Return the data with max salary in each department
with cte as
(select name,department,salary,
 DENSE_RANK() OVER (PARTITION BY department ORDER BY salary desc) salary_rank
from test) 
select name,department,salary from cte
where salary_rank =1
