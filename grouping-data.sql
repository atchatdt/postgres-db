--Group by
--1
SELECT
   customer_id
FROM
   payment
GROUP BY
   customer_id;

--2
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id;
--3
SELECT
	customer_id,
	SUM (amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM (amount) DESC;

--4
SELECT
	staff_id,
	COUNT (payment_id),
	SUM(payment_id)
FROM
	payment
GROUP BY
	staff_id;

	
--5
SELECT 
	DATE(payment_date) paid_date, 
	SUM(amount) sum
FROM 
	payment
GROUP BY
	DATE(payment_date);
	
--6
SELECT
	staff_id,
	COUNT (payment_id),
	SUM(payment_id)
FROM
	payment
GROUP BY
	staff_id
HAVING staff_id < 3;

--EXCEPT: 2 bảng: thuốc bảng 1 không thuộc bảng 2 => như phép trừ
SELECT
	film_id,
	title
FROM
	film
EXCEPT
	SELECT
		DISTINCT inventory.film_id,
		title
	FROM
		inventory
	INNER JOIN film ON film.film_id = inventory.film_id
ORDER BY title;
	
	
	
	
	