-- GROUP BY & HAVING Practice.
-- ignore database name : nwe_schema



SELECT * FROM new_schema.movie_streaming;

--  Find the total number of streams by date.
select movie_streaming.date , sum(movie_streaming.number_of_streams)  as streams  from 
 movie_streaming group by movie_streaming.date;
 
	
--   Find the total number of streams by date and director.

select movie_streaming.date ,movie_streaming.director, sum(movie_streaming.number_of_streams) 
 as streams  from  movie_streaming group by movie_streaming.date ,  movie_streaming.director;
 
	
--  Find the total number of streams by date and director. Show only dates with a total number of streams above 740.
select movie_streaming.date ,movie_streaming.director, sum(movie_streaming.number_of_streams) 
 as streams  from  movie_streaming group by movie_streaming.date ,  movie_streaming.director having (streams>740);
 
	
	
--  aggregate functions are on this table avg , sum , count , min , max , count(*), count(expression) , count(DISITINCT)

SELECT  COUNT(*) AS TOTALCOUNT FROM new_schema.movie_streaming;

SELECT  COUNT(movie_streaming.number_of_streams) AS TOTALSTRAMING FROM new_schema.movie_streaming;

SELECT  MIN(movie_streaming.number_of_streams)  AS MINSTRAMING FROM new_schema.movie_streaming;

SELECT  MAX(movie_streaming.number_of_streams)  AS MAXSTRAMING FROM new_schema.movie_streaming;

SELECT  SUM(movie_streaming.number_of_streams)  AS SUMSTRAMING FROM new_schema.movie_streaming;

SELECT  AVG(movie_streaming.number_of_streams)  AS AVGSTRAMING FROM new_schema.movie_streaming;
 
 

