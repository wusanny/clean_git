{% macro EDW_on_run_end() %}
    {% if invocation_args_dict['select'] %}
      {% set my_set = invocation_args_dict['select'] %}
      {% if my_set[0].startswith('SZ_PHMVBC') or my_set[0].startswith('EDZ_conformed') %}
        {{ dbt_artifacts.upload_results(results) }}
      {% endif %}
    {% endif %}
{% endmacro %}