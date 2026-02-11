with

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity as qty

    from source

)

select * from renamed