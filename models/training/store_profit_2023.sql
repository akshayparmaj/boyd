{{config(materialized = 'table')}}

with store as
(
    select * from {{ref("store_2023")}}
),
store_sales as
(
    select * from {{ref("store_sales_2023")}}
),
sales_profit as
(
    select s_store_name,s_county,sum(SS_SALES_PRICE), sum(SS_NET_PROFIT) from store_2023,store_sales_2023
    where s_store_sk=SS_STORE_SK
    group by 1,2
)
select * from sales_profit
