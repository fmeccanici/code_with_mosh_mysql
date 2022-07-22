SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Bronze' AS type
FROM customers c
WHERE points < 2000

UNION

SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Silver'
FROM customers c
WHERE points BETWEEN 2000 AND 3000

UNION

SELECT 
	c.customer_id,
    c.first_name,
    c.points,
    'Gold'
FROM customers c
WHERE points > 3000

ORDER BY first_name ASC