{{config(materialized='incremental',
          unique_key='prod_id')

}}
select * from Prod.SRC_Product
{%if is_incremental()%}
where updated_dt>(select max(updated_dt) from {{this}})
{%endif%}