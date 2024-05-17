{{ config(materialized='table') }}

with store_tbl_2024 as(
select S_STORE_SK,S_STORE_ID,S_STORE_NAME,S_COUNTY from {{ source('test_prod', 'Store_2024')}}
)
select * from store_tbl_2024
