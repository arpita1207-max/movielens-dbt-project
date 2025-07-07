-- depends_on: {{ ref('dim_movies') }}

{{ config(severity = 'warn') }}

{{ not_nulls_in_columns('dim_movies') }}
