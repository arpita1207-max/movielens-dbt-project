with dim_movies as (
    select * from {{ ref('dim_movies') }}
)
select distinct genres_array
from dim_movies
where genres_array is not null