with RAW_MOVIES as (
    select * from {{source('my_dbt_project','r_movies')}})
select 
movieId as movie_id,
title,
genres 
from RAW_MOVIES