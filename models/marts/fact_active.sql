select CUSTOMER_ID,
    datetime , 
    CASE 
        WHEN active = 'true'
        THEN 1
        ELSE 0
    END AS active,
    CASE 
        WHEN new_customer = 'true' THEN 1
        ELSE 0
    END AS new_customer, 
    CASE 
        WHEN cancel = 'true' THEN 1
        ELSE 0
    END AS cancel,
    MONTH(datetime) AS month,
    YEAR(datetime) AS year
from {{ ref('stg_active_users') }}
order by datetime asc