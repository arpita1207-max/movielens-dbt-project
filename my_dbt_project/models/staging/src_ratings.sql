with RAW_RATINGS as (
    select * from {{source('my_dbt_project','r_ratings')}})
select 
userId as user_id,
movieId as movie_id,
rating,
to_timestamp_tz(timestamp) as timestamp
from RAW_RATINGS