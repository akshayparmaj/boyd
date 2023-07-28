{{config (materialized = 'table')}}

with store_tbl_2023 as
(
    select s_store_sk, s_store_id, s_store_name,s_county from PROD.store_2023
)
select * from store_tbl_2023
