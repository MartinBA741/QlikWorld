select * 
from {{ source('subscribers', 'fact_active') }}