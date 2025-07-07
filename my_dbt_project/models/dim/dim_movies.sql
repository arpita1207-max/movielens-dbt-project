with src_movies as (
    select * from {{ref('src_movies')}}
)
select 
movie_id,
initcap(regexp_replace(title,'\\(\\d{4}\\)','')) as movie_title,
REGEXP_REPLACE(REGEXP_SUBSTR(title, '\\(\\d{4}\\)'), '[()]', '') as release_year,
split(genres,'|') as genres_array,
genres
from src_movies