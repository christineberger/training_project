with source as (
    select * from {{ source('dbt_christine', 'orders') }}
)

select * from source