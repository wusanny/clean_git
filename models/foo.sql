{{
    config(
        materialized="view",
        grants={
          'SELECT': ['loader', 'public']
        }

    )
}}

select 1 as id