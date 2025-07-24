{% macro verbose_logger(message="Debug info", line_count=1000, include_context=true) %}
  
  {# Log header #}
  {{ log("=" * 80, info=True) }}
  {{ log("VERBOSE LOGGER START: " ~ message, info=True) }}
  {{ log("=" * 80, info=True) }}
  
  {# Context information if requested #}
  {% if include_context %}
    {{ log("Model: " ~ this, info=True) }}
    {{ log("Target: " ~ target.name, info=True) }}
    {{ log("Schema: " ~ target.schema, info=True) }}
    {{ log("Database: " ~ target.database, info=True) }}
    {{ log("Timestamp: " ~ run_started_at, info=True) }}
    {{ log("dbt Version: " ~ dbt_version, info=True) }}
    {{ log("-" * 60, info=True) }}
  {% endif %}
  
  {# Generate multiple log lines #}
  {% for i in range(line_count) %}
    {% set line_num = i + 1 %}
    {% if i % 10 == 0 %}
      {{ log("🔄 Processing batch " ~ (i // 10 + 1) ~ " - Line " ~ line_num ~ " of " ~ line_count, info=True) }}
    {% elif i % 5 == 0 %}
      {{ log("📊 Checkpoint reached at line " ~ line_num ~ " - Progress: " ~ ((line_num / line_count * 100) | round(1)) ~ "%", info=True) }}
    {% else %}
      {{ log("⚡ Executing step " ~ line_num ~ " | Random value: " ~ (range(1000, 9999) | random), info=True) }}
    {% endif %}
  {% endfor %}
  
  {# Log footer #}
  {{ log("-" * 60, info=True) }}
  {{ log("✅ VERBOSE LOGGER COMPLETE: Generated " ~ line_count ~ " log lines", info=True) }}
  {{ log("=" * 80, info=True) }}
  
{% endmacro %}