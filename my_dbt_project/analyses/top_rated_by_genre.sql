-- models/marts/genre/top_rated_by_genre.sql

with top_rated_movies as (
    select
        movie_id,
        avg(rating) as avg_rating
    from {{ ref('fct_ratings') }}
    group by movie_id
)

select
    d.genres_array,
    round(avg(t.avg_rating), 2) as avg_rating
from {{ ref('dim_movies') }} d
inner join top_rated_movies t
    on t.movie_id = d.movie_id
group by d.genres_array
order by avg_rating desc
limit 100
