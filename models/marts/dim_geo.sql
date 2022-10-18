select * 
from {{ source('subscribers', 'dim_geo') }}