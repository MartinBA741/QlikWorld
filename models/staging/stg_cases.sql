select * 
from {{ source('subscribers', 'cases') }}