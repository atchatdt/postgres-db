-- JOSIN

-- JOIN LEFT
-----1
SELECT
	film.film_id,
	film.title,
	inventory_id
FROM
	film
LEFT JOIN inventory ON inventory.film_id = film.film_id;
-----2
SELECT
	film.film_id,
	film.title,
	inventory_id
FROM
	film
LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE
	inventory.film_id IS NULL;
	
-- Sefl join: Tự join với chính nó
SELECT
    e.first_name || ' ' || e.last_name employee,
    m .first_name || ' ' || m .last_name manager
FROM
    employee e
INNER JOIN employee m ON m .employee_id = e.manager_id
ORDER BY
    manager;