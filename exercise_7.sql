-- Get the customers whose
-- first names are ELKA or AMBUR
-- last names end with EY or ON
-- last names start with MY or contains SE
-- last names contain B followed by R or U

SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';
      
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';
      
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';
      
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';