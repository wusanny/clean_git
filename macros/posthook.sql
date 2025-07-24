{% macro posthook(relation) %}

  {% set payment_method_query %}
  select distinct
  payment_method
  from {{ ref('base_foo') }}
  order by 1
  {% endset %}

  {% set results = run_query(payment_method_query) %}

  {% if execute %}
    {# Return the first column #}
    {% set payment_methods = results.columns[0].values() %}
    
    {{ log("=" * 50, info=True) }}
    {{ log("POST HOOK: Payment Methods Analysis for " ~ relation, info=True) }}
    {{ log("=" * 50, info=True) }}
    {{ log("Found " ~ payment_methods|length ~ " distinct payment methods:", info=True) }}
    
    {% for method in payment_methods %}
      {{ log("  → " ~ method, info=True) }}
    {% endfor %}
    
    {{ log("=" * 50, info=True) }}
    
  {% else %}
    {% set payment_methods = [] %}
  {% endif %}

{% endmacro %}