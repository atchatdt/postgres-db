/*
WHERE
- IN: nằm trong 1 list
- AND, OR
- LIMIT: nên dùng với order by để có thứ tự xác định: Không thì lộ xộn
- n OFFSET m : lấy n phần tử bắt đầu từ m (chỉ số được tính từ 0)
- CAST: Dùng để chuyển đổi kiểu dữ liệu
- ILIKE: không phân biệt hoa với thường
	-: ~~ tương tự LIKE
	-: ~~* tương tự ILIKE
	-: !~~ tương tự NOT LIKE
	-: !~~* tương tự NOT ILIKE
*/

-- LIMIT
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	last_name = 'Rodriguez' OR 
	first_name = 'Adam';

SELECT
	first_name,
	last_name
FROM
	customer
WHERE 
	first_name IN ('Ann','Anne','Annie');


SELECT
	first_name,
	last_name
FROM
	customer
WHERE 
	first_name LIKE 'Ann%';    

SELECT
    customer_id,
	first_name
FROM
	customer
WHERE 
	first_name LIKE 'A%' AND
	LENGTH(first_name) BETWEEN 3 AND 5
ORDER BY
	customer_id
LIMIT NULL;

-- OFFSET
SELECT
	film_id,
	title,
	release_year
FROM
	film
ORDER BY
	film_id
LIMIT 5 OFFSET 0;

SELECT
	film_id,
	title,
	rental_rate
FROM
	film
ORDER BY
	rental_rate DESC
LIMIT 10;

-- FETCH
SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title 
OFFSET 7 ROWS 
FETCH FIRST 5 ROW ONLY; 

-- IN
SELECT
 customer_id,
	rental_id,
	return_date
FROM
	rental
WHERE
	customer_id IN (1, 2)
ORDER BY
	return_date DESC;

-- BETWEEN 
SELECT
	customer_id,
	payment_id,
	amount
FROM
	payment
WHERE
	amount BETWEEN 7 AND 9
ORDER BY amount;

-- LIKE
SELECT
	first_name,
        last_name
FROM
	customer
WHERE
	first_name LIKE '%er%'
-- ILIKE
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name ILIKE 'BAR%';


-- NULL
SELECT
    id,
    first_name,
    last_name,
    email,
    phone
FROM
    contacts
WHERE
    phone IS NULL;
	
-- Alias
SELECT
    first_name || ' ' || last_name AS full_name
FROM
    customer
ORDER BY 
    first_name || ' ' || last_name;

