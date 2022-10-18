select * ,
    DAY(datetime) AS day,
    MONTH(datetime) AS month,
    YEAR(datetime) AS year
from {{ ref('stg_cases') }}