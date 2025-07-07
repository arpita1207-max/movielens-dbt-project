with mart_most_relevant_tag_per_movie as (
select movie_id ,tag_id,
row_number() over(partition by movie_id order by relevance desc) as tag_relevance
from  {{ref('src_genome_scores')}}  
)
,src_genome_tags as (
    select tag_id,tag from {{ref('src_genome_tags')}} 
)
,src_movies as (
    select movie_id,title from {{ref('src_movies')}} 
)
select r.movie_id,m.title as movie_name,t.tag,r.tag_relevance
from
(select * from mart_most_relevant_tag_per_movie 
where tag_relevance=1) as r
inner join 
src_genome_tags as t 
inner join
src_movies as m
on t.tag_id=r.tag_id
where m.movie_id=r.movie_id