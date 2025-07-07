with RAW_LINKS as (
    select * from 
    {{source('my_dbt_project', 'r_links')}}
)
select 
movieId as movie_id,
imdbId as imdb_id,
tmdbId as tmdb_id
from RAW_LINKS