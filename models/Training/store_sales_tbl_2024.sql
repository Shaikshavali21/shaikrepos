{{ config(materialized='table') }}

with store_sales_tbl_2024 as(
select SS_STORE_SK,SS_QUANTITY,SS_SALES_PRICE,SS_NET_PROFIT from prod.STORE_SALES_2024)
select * from store_sales_tbl_2024
