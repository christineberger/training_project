with order_items as (
    select * from {{ ref('stg_order_items') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
)

select 
    orders.created_at as order_date,
    orders.email,
    orders.customer_id,
    order_items.id,
    order_items.order_id,
    order_items.price,
    order_items.quantity,
    order_items.size,
    order_items.color,
    order_items.product_id
from order_items
left join orders on order_items.order_id = orders.id
