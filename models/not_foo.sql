{% set q = 'select 1 as c' %}
{% if execute %}
{% set res = run_query(q) %}
{% set a = res.columns[0].values() %}
{% set b = res.columns[0].values()[0] %}
{% endif %}

-- {{ a }}
-- {{ b }}
