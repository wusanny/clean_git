{{
    config(
        materialized="view",
        grants={
          'SELECT': ['loader']
        }

    )
}}

select 1 as id