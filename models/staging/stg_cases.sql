select * 
from {{ source('subscribers', 'fact_cases') }}