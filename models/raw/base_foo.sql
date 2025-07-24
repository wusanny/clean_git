{{ config(materialized='table') }}

select 
    1 as payment_id,
    'credit_card' as payment_method,
    100.00 as amount
union all
select 
    2 as payment_id,
    'bank_transfer' as payment_method,
    250.50 as amount
union all
select 
    3 as payment_id,
    'paypal' as payment_method,
    75.25 as amount
union all
select 
    4 as payment_id,
    'credit_card' as payment_method,
    180.00 as amount
union all
select 
    5 as payment_id,
    'cash' as payment_method,
    50.00 as amount