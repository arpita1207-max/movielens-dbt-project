{{ config(materialized='view', enabled=true) }}

with r_genome_tags as (
    select * from {{source('my_dbt_project','r_genome_tags')}})
select 
tagId as tag_id,
tag 
from r_genome_tags
where tag is not null