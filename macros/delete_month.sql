{% macro delete_month() %}

    {% set table_lst = ["dim_customer", "fact_active", "fact_cases", "fact_product"] %}  

    {% for single_table in table_lst %}
        DELETE FROM {{ ref( {{ single_table }} ) }}
            WHERE customer_id IN (select customer_id from Analysis.deployment.fact_product where signup_date_time >'2021-11-30');
    {% endfor %}
{% endmacro %}