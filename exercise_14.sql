USE sql_invoicing;

SELECT 
	p.date,
    p.invoice_id,
    p.amount,
	pm.name, 
    c.name
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	ON p.client_id = c.client_id