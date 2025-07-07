with RAW_TAGS as (
    select * from MOVIELENS.RAW.RAW_TAGS)
select 
userId as user_id,
movieId as movie_id,
tag,
to_timestamp_tz(timestamp) as tag_timestamp
from RAW_TAGS