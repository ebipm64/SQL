SELECT name,department,salary, 
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) salary_rank
FROM test
