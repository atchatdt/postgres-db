-- Select 

SELECT 
   customer_id,first_name || ' ' || last_name as fullname,email
FROM 
   customer;