select 
    payment_method,
    count(*) as payment_count,
    sum(amount) as total_amount,
    avg(amount) as avg_amount
from {{ ref('base_foo') }}
group by payment_method
order by total_amount desc