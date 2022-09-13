with orders as (
    select * from {{ ref('raw_order') }}
)
select orderid, sum(ordersellingprice) as total_sp
from orders
group by 1
having total_sp < 0