{% macro not_nulls_in_columns(model) %}
{% set relation = ref(model) %}
{% set columns = adapter.get_columns_in_relation(relation) %}
SELECT
    *
FROM
    {{ relation }}
WHERE
    {% for col in columns %}
        {{ col.name }} IS NULL 
        {{log("Checking column: " ~ col.name, info=True)}}
       
       
        {% if not loop.last %}
            OR
        {% endif %}
    {% endfor %}
{% endmacro %}
