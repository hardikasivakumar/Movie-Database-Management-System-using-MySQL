create table act_master(
act_id int auto_increment primary key,
act_name varchar(40) unique
);
select * from act_master;


insert into act_master(act_name)
select distinct act_name from movies 
order by act_name ;

create table lang_master(
lang_id int auto_increment primary key ,
lang_name varchar(50) unique
);

select* from lang_maste;

insert into lang_master(lang_name)
select distinct lang from Movies;

create table mov_details(
rel_year int,
mov_name varchar(100),
act_id int ,
lang_id int
);

select * from mov_details as movies;

INSERT INTO mov_details (rel_year, mov_name, act_id, lang_id)
SELECT
    m.rel_year,
    m.mov_name,
    a.act_id,
    l.lang_id
FROM movies m
INNER JOIN act_master a
ON m.act_name = a.act_name
INNER JOIN lang_master l
ON m.lang = l.lang_name;

#1. Display all movie details from the table
  SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id;
  
  
 #2. Display only the movie_name and actor_name for all movies.
 select 
   m.mov_name,
   a.act_name
   FROM mov_details m
   inner join act_master a
   on m.act_id = a.act_id;
   
#3. Show all movies released in the year 2020.
select
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
from mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where m.rel_year = 2020;

#4. Retrieve all movies acted by a specific actor (e.g., “Vijay”).
select
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
from mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where a.act_name = "Vijay";


#5. Show all movies in the Tamil language.
select
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
from mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where l.lang_name = "Tamil";


# 6.Display distinct movie release languages.
select distinct
l.lang_name
from mov_details m
inner join lang_master l
on m.lang_id = l.lang_id;

#7. Show unique actor names from the table.
select distinct
a.act_name
from mov_details m
inner join act_master a
on m.act_id = a.act_id;

#8. Show all movies whose name starts with the letter ‘K’.
SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where m.mov_name like"K%";

#9. Display all movies released between 2010 and 2020.
SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where m.rel_year between 2010 and 2020;


#10. Show all movies sorted by release_year in ascending order.
SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
order by m.rel_year  asc;

#11. Show all movies sorted by movie_name in alphabetical order.
SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
order by m.mov_name asc;

#12. List the latest 10 movies based on release_year.
SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
order by m.rel_year desc
limit 10;

#13. List old (earliest) 10 movies.

SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
order by m.rel_year  asc
limit 10;

#14. Show movies where actor_name contains the word “Khan”.

SELECT
    m.rel_year,
    m.mov_name,
    a.act_name,
    l.lang_name
FROM mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
where a.act_name like "%Khan%";

#15. Count the total number of movies in the table.
select count(*)
from mov_details m;

#16. Count how many movies are released in each language.
select l.lang_name,count(m.mov_name) as total_lang
from mov_details m
INNER JOIN lang_master l
ON m.lang_id = l.lang_id
group by l.lang_name;

# 17.Find the number of movies acted by each actor.
select a.act_name,count(m.mov_name) as total_act
from mov_details m
INNER JOIN act_master a
ON m.act_id = a.act_id
group by a.act_name;

#18. Find how many movies were released each year.
select m.rel_year,count(m.mov_name) as total
from mov_details m
group by m.rel_year;

#19. Identify the year with the highest number of movie releases.
select m.rel_year,count(m.mov_name) as total
from mov_details m
group by m.rel_year
order by total desc
limit 1;

#20. Find the actor who acted in the most movies.
select a.act_name,
    COUNT(m.mov_name) AS total_movies
from mov_details m
inner join act_master a
on m.act_id = a.act_id
group by a.act_name
order by total_movies desc
limit 1;

#21. List languages that have more than 100 movies.
select l.lang_name,count(m.mov_name) as total
from mov_details m
inner join lang_master l
on m.lang_id = l.lang_id
group by l.lang_name
having total >100;

#22. List actors who acted in more than 10 movies.
select a.act_name,count(m.mov_name) as total_mov
from mov_details m
inner join act_master a
on m.act_id = a.act_id
group by a.act_name
having total_mov >10;

#23. Find years where more than 50 movies were released.
select m.rel_year,count(*) as count_year
from mov_details m
group by m.rel_year
having count_year >50;


#  24. List actors who have worked in more than 3 languages.
select a.act_name, COUNT(DISTINCT l.lang_name) AS total_languages
FROM  mov_details m
inner join act_master a
on m.act_id = a.act_id
inner join lang_master l 
on m.lang_id = l.lang_id
GROUP BY a.act_name
HAVING total_languages > 3;
