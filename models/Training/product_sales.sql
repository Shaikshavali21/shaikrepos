{{ config(materialized='table') }}

with product_sales as(
select city,state,sum(sales) from prod.product
 group by 1,2)
select * from product_sales
