with src_tags as (
select * from {{ref('src_tags')}}
)
select distinct movie_id,tag
from src_tags
where tag is not null