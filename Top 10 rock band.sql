/* Q2: Let's invite the artists who have written the most rock music in our dataset. 
Write a query that returns the Artist name and total track count of the top 10 rock bands. */
select a.artist_id, a.name, count(a.artist_id) AS NUMBER_OF_SONGS
from track 
join album  al on al.album_id = track.album_id
join artist a on a.artist_id = al.artist_id
join genre g on g.genre_id = track.genre_id
where g.name like 'Rock'
group by a.artist_id
order by number_of_songs desc
limit 10;