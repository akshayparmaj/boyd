{{config (materialized = 'table')}}

with store_sales_tbl_2023 as
(
select SS_STORE_SK,SS_QUANTITY,SS_SALES_PRICE,SS_NET_PROFIT from {{source ('test_prod','store_sales_2023')}}
)
Select * from  store_sales_tbl_2023