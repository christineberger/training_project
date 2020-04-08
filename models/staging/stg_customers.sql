with source as (
    select * from {{ source('dbt_cberger', 'customers') }}
),

renamed as (
    select
        -- Keys
        id as customer_id,
        
        -- Strings
        email,
        first_name,
        last_name,
        gender,
        
        -- Boolean
        accepts_marketing,
        
        -- Dates
        created_at::date as created_date
    from source
)

select * from renamed