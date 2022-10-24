select * 
from {{ source('subscribers', 'fact_product') }}