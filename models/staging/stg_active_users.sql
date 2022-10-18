select * 
from {{ source('subscribers', 'active_users') }}