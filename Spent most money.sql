/* Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money.*/
select c.customer_id,c.first_name,c.last_name, sum(i.total) as total
from customer c
join invoice i 
on c.customer_id = i.customer_id
group by c.customer_id
order by total desc
limit 1;