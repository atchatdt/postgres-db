/*

Select 
- || nối chuỗi, hoặc concat
- Hạn chế dùng * khi select, nên lấy một vài cột cấn thiết
- *: lấy nhiều cột không cần thiết ảnh hưởng đến tốc độ thực thi
Order by:
- Giá trị mặc định: ASC
DISTINCT:
- Nên dùng chung với order by, tránh lộn xộn dữ liệu
DISTINCT ON: Cân nhắn nên dùng này khi muốn chọn nhiều thuộc tính
- mà giá trị đầu tiên là duy nhất
Không dùng DISTINCT ON:  khi DISTINCT nhiều cột, nó sẽ lựa chọn những cặp không trùng lạp
*/

SELECT
   customer_id, first_name || ' ' || last_name as fullname, email
FROM
   customer
ORDER BY 
   customer_id ASC;


SELECT
   customer_id, CONCAT(first_name, last_name) as fullname, email
FROM
   customer
ORDER BY customer_id DESC;


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


-- DISTINCT
SELECT * FROM t1

SELECT
	DISTINCT bcolor,
	fcolor
FROM
	t1
ORDER BY
	bcolor,
	fcolor;

SELECT * FROM t1;

SELECT
	DISTINCT ON
	(bcolor) bcolor,
	fcolor
FROM
	t1
ORDER BY
	bcolor,
	fcolor;