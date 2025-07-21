{{ config(
    pre_hook=[
        "create schema if not exists BANANA_JINJI"
    ]
) }}

select 1 as dummy