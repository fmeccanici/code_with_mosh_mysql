-- Do a cross join between shippers and products
-- using the implicit syntax
-- and then using the explicit syntax

use sql_store;

SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s, products p;

SELECT 
	s.name AS shipper,
    p.name AS product
FROM shippers s
CROSS JOIN products p;

