with source as (
    select * from {{ source('dbt_cberger', 'orders') }}
),

renamed as (
    select
        -- Keys
        id as order_id,
        customer_id,
        
        -- Float
        total,
        
        -- String
        street_address,
        referral_url,
        referral_domain,
        ip_address,
        email,
        billing_country_code,
        
        -- Boolean
        completed,
        
        -- Date
        created_at::date as created_date
        
    from source
)

select * from renamed