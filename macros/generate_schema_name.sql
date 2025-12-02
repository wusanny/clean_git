{% macro generate_schema_name(custom_schema_name=none, node=none) %}

    {%- set default_schema = target.schema -%}

    {%- if target.name == 'ci' -%}

        {%- set dbt_ci_schema_name = target.schema %}

        {%- if custom_schema_name is none -%}
            {{ dbt_ci_schema_name | trim | upper }}
        {%- else -%}
            {{ dbt_ci_schema_name | trim | upper }}_{{ custom_schema_name | trim | upper }}
        {%- endif -%}

    {%- else -%}

        {%- if custom_schema_name is none -%}
            {{ default_schema | trim | upper }}
        {%- else -%}
            {{ custom_schema_name | trim | upper }}
        {%- endif -%}
    {%- endif -%}
    
{% endmacro %}