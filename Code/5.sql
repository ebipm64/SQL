SELECT customer_id,SUM(amount) AS total_payment FROM payment
GROUP BY customer_id
HAVING SUM(amount) < 85
ORDER BY customer_id DESC
LIMIT 5