select * 
from {{ source('subscribers', 'dim_product') }}