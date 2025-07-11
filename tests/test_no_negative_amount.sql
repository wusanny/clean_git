{{
    config(
        severity='warn',
        group='yay'
    )
}}   
-- This test fails if any amount is negative
select *
from {{ ref('testing_amount') }}
where amount < 0