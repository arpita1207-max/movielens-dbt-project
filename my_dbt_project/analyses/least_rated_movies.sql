-- analyses/top_rated_movies.sql

with least_rated_movie_by_year as (
  select 
    movie_id,
    extract(year from rating_timestamp) as year,
    avg(rating) as avg_rating
  from {{ ref('fct_ratings') }}
  order by avg(rating) asc
  limit 100
)
select 
  d.movie_id,
  d.movie_title,
  y.year,
  y.avg_rating 
from {{ ref('dim_movies') }} d 
inner join least_rated_movie_by_year y
on y.movie_id = d.movie_id
