{% macro EDW_on_run_end() %}
    {% set raw = invocation_args_dict.get('select') %}
    {% if raw %}
      {% set my_set = raw.split() if raw is string else raw %}
      {% set first = my_set[0] | replace('fqn:', '') %}
      {% if first.startswith('SZ_PHMVBC') or first.startswith('EDZ_conformed') %}
        {{ dbt_artifacts.upload_results(results) }}
      {% endif %}
    {% endif %}
{% endmacro %}