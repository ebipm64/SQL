SELECT CONCAT(first_name, ' ',last_name) as customer_name,SUM(amount) as total_amount
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY CONCAT(first_name, ' ',last_name)
HAVING SUM(amount) BETWEEN 120 AND 150
ORDER BY SUM(amount) DESC