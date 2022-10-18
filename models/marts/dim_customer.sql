select * 
from {{ source('subscribers', 'dim_customer') }}