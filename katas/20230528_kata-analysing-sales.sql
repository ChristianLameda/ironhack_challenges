SELECT p.name AS product_name,
  (EXTRACT(YEAR FROM  s.date))::INT AS year,
  (EXTRACT(MONTH FROM  s.date))::INT AS month,
  (EXTRACT(DAY FROM  s.date))::INT AS day,
  SUM(sd.count * p.price)::NUMERIC AS total
  
  FROM products AS p
   JOIN sales_details AS sd ON p.id = sd.product_id
   JOIN sales AS s ON sd.sale_id = s.id
  GROUP BY p.name, ROLLUP(year, month, day)
  ORDER BY p.name, year, month, day