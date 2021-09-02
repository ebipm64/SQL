SELECT customer_id,
CASE 
    WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 101 AND 200) THEN 'PLUS'
	ELSE 'Normal' 
END AS class
FROM customer