{{ config(materialized='view') }}

select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status,
    amount / 100.0 as amount_usd,
    created
from {{ source('stripe', 'payment') }}
