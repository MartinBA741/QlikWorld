select CUSTOMER_ID,
    datetime , 
    ACTIVE,
    NEW_CUSTOMER, 
    CANCEL,
    MONTH(datetime) AS month,
    YEAR(datetime) AS year
from {{ ref('stg_active_users') }}
order by datetime asc