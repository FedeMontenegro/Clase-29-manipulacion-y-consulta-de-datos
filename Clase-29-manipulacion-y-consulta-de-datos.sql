-- Insertando registro en la tabla 'genres'
insert into genres (name, ranking, active)
values("Investigación", 13, 1);
-- Consultando datos...
select * from genres order by id desc
-- Actualizando datos....
update genres
set name = "Investigación científica"
where id = (select id from genres where name = "Investigación");
-- Eliminando registro...
delete from genres 
where id = (select id from genres where name = 'Investigación científica');


-- Mostrando registros de la tabla 'movies...'
select * from movies;

-- Mostrando información de actores...
select first_name, last_name, rating from actors;

-- Mostrando todos los titulos de la tabla 'series...'
select title titulo from series;

-- Mostrando actores cuyo rating sea mayor que 7.5
select first_name Nombre, last_name Apellido, rating from actors
where rating > 7.5;

-- Mostrando titulo, rating y premios de peliculas con rating mayor a 7,5 y mas de 2 premios...
select title, rating, awards
from movies
where rating > 7.5
and awards > 2;

-- Titulo y rating de peliculas ordenadas por rating de manera ascendente:
select title, rating 
from movies 
order by rating asc;

-- Mostrar titulo de las primeras 3 peliculas de la base de datos:
select title
from movies 
limit 3;

-- Top 5 de peliculas con mayor rating:
select title, rating
from movies
order by rating desc
limit 5;

-- top 5 a 10 peliculas con mayor rating:
select id, title, rating
from movies
where id > 5
order by rating desc 
limit 5;

-- Mostrar los primeros 10 actores:
select id, first_name, last_name
from actors
limit 10

-- Mostrar de id 21 a 30 actores:
select id, first_name, last_name
from actors
limit 10
offset 20;

-- Mostrar titulo y rating de todas las peliculas de Harry Potter:
select title, rating
from movies 
where title like "%Harry Potter%";

-- Mostrar todos los actores cuyo nombre comience con 'Sam':
select first_name, last_name
from actors
where first_name like "Sam%";

-- Mostrar el titulo de todas las peliculas lanzadas entre 2004 y 2008:
select title, release_date
from movies
where extract(year from release_date) between "2004" and "2008";

