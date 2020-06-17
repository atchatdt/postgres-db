/*

Select 
   - || nối chuỗi, hoặc concat
   - Hạn chế dùng * khi select, nên lấy một vài cột cấn thiết
   - *: lấy nhiều cột không cần thiết ảnh hưởng đến tốc độ thực thi
Order by:
   - Giá trị mặc định: ASC
   
*/

SELECT
   customer_id, first_name || ' ' || last_name as fullname, email
FROM
   customer
ORDER BY 
   customer_id ASC


SELECT
   customer_id, CONCAT(first_name, last_name) as fullname, email
FROM
   customer
ORDER BY customer_id DESC


SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC,
	last_name DESC;

SELECT 
	last_name,
	LENGTH(first_name) len
FROM
	customer
ORDER BY 
	LENGTH(first_name) DESC;


-- 
SELECT * FROM t1
SELECT
	DISTINCT ON
	(bcolor) bcolor,
	fcolor
FROM
	t1
ORDER BY
	bcolor,
	fcolor;