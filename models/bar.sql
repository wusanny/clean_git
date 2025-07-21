with source as (
    select * from {{ ref('foo') }}
)

select dob from source
