USE sql_invoicing;

CREATE TABLE invoices_archived
SELECT 
	i.invoice_id,
    c.name AS client,
    c.phone,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
from invoices i
JOIN clients c USING (client_id)
WHERE i.payment_date IS NOT NULL
