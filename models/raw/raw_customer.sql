{{
    config(
        materialized='table'
    )
}}

select *
--from RAW.GLOBALMART.CUSTOMERS
from {{ source('globalmart', 'customers') }}