select * 
from {{ source('subscribers', 'product') }}