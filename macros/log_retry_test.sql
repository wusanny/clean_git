{% macro log_retry_test(message='Default retry log message') %}
    {{ log("Retry Test Macro: " ~ message, info=True) }}
{% endmacro %}
