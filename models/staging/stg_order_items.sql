with source as (
    select * from {{ source('dbt_christine', 'order_items') }}
)

select * from source