WITH CTE AS(
SELECT name,department,salary,
	DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS salary_rank
	from test)
SELECT name,salary,department,salary_rank from cte
WHERE department='Hardware' AND salary_rank=2




