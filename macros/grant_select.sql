{% macro grant_select(model_name, role) %}

  {% set relation = ref(model_name) %}

  {% set sql %}
    grant select on {{ relation }} to role {{ role }}
  {% endset %}

  {% do run_query(sql) %}
  {{ log("Granted select on " ~ relation ~ " to " ~ role, info=True) }}

{% endmacro %}