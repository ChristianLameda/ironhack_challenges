SELECT customer.customer_id, customer.email,
COUNT(payment.payment_date) AS payments_count,
CAST(SUM(payment.amount) AS FLOAT) AS total_amount
FROM customer
LEFT JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.email
ORDER BY total_amount DESC
LIMIT 10