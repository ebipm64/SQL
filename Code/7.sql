SELECT first_name,last_name,SUM(amount) as total_amount
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY first_name,last_name
HAVING SUM(amount) < 150
ORDER BY total_amount DESC
