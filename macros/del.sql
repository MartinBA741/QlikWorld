{% macro del() %}
{% set sql %}

DELETE FROM {{ ref(  'fact_active' ) }}
    WHERE datetime >'2021-11-30';

DELETE FROM {{ ref(  'fact_cases' ) }}
    WHERE datetime >'2021-11-30';

DELETE FROM {{ ref(  'fact_product' ) }}
    WHERE Signup_date_time >'2021-11-30';

--    {% set table_lst = ["dim_customer", "fact_cases", "fact_product", "fact_active"] %}  

--    {% for single_table in table_lst %}
--        DELETE FROM {{ ref(  single_table ) }}
--           WHERE customer_id IN (select customer_id from {{ ref( 'fact_active' ) }}  where 'datetime' >'2021-11-30');
--    {% endfor %}

    
{% endset %}
{% do run_query(sql) %}
{% endmacro %}