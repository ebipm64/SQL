# SQL
I this query we are going to identify the person with highest salary in each department
First retiee the table using the query below:
SELECT * FROM test
It returns the table

SELECT name,department,salary, 
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) salary_rank
FROM test
