{% macro max_min_rating(model, min_rating=0, max_rating=5) %}
    select rating
    from {{ model }}
    where rating < {{ min_rating }} or rating > {{ max_rating }}
{% endmacro %}