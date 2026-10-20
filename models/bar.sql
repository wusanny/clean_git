{{
    config(
        materialized="table",
        grants={
          'SELECT': ['loader','public']
        }

    )
}}

select * from {{ ref("foo") }}