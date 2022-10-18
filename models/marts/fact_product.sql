select * ,
    DAY(signup_date_time) AS signup_day,
    MONTH(signup_date_time) AS signup_month,
    YEAR(signup_date_time) AS signup_year,
    DAY(cancel_date_time) AS cancel_day,
    MONTH(cancel_date_time) AS cancel_month,
    YEAR(cancel_date_time) AS cancel_year
from {{ ref('stg_product') }}