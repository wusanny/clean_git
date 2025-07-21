-- models/slow_hash_model.sql

{{ config(materialized = "table") }}

with numbers as (
  select
    seq4() as id
  from table(generator(rowcount => 300000000)) -- 300 million rows
)

select
  id,
  sha2(id::string, 512) as hash
from numbers
