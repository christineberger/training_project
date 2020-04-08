with source as (
    select * from {{ source('dbt_cberger', 'order_items') }}
),

renamed as (
    select
        -- Keys
        id as order_item_id,
        order_id,
        product_id,
        
        -- Float
        price,
        
        -- Int
        quantity,
        
        -- String
        size,
        color
    from source
)

select * from renamed