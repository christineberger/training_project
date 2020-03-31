with source as (
    select * from {{ source('dbt_christine', 'customers') }}
)

select * from source