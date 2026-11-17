{{
    config(
        materialized="table",
        grants={
          'SELECT': ['loader']
        }

    )
}}

select * from {{ ref("foo") }}