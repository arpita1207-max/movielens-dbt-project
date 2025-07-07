{{ config(materialized='view', enabled=true) }}

with raw_genome_scores as (
    select * from {{source('my_dbt_project','r_genome_scores')}})
select 
movieId as movie_id,
tagId as tag_id,
relevance 
from raw_genome_scores