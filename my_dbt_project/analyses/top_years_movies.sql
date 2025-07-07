-- analyses/top_years_movies.sql

select  
  release_year,
  count(movie_id) as total_movies_released
from {{ ref('dim_movies') }}
where release_year is not null
group by release_year
order by count(movie_id) desc
limit 100
