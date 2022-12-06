{{ config(materialized='table') }}
select to_number(to_char(START_TIME, 'yyyymmdd')) as date_id,* from {{source('properties','US_ACCIDENTS_DATA_RAW_STAGE')}}