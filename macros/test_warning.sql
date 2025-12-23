-- macros/test_warning.sql
{% macro test_warning(number) %}
  {% if number < 0 or number > 100 %}
    {% do exceptions.warn("Invalid `number`. Got: " ~ number) %}
    {{ exceptions.warn("Invalid `number`. Got: " ~ number) }}
  {% endif %}
{% endmacro %}
