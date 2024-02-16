{{ config(materialized = 'view')}}

select 
    -- identifiers
    dispatching_base_num,

    cast(PUlocationID as integer) as pickup_locationid,
    cast(DOlocationID as integer) as dropoff_locationid,

    --timestamp
    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(dropOff_datetime as timestamp) as dropoff_datetime,

    --trip info
    SR_Flag as sr_flag,
    Affiliated_base_number as affiliated_base_number
from {{source("staging", 'fhv_materialized_table')}}
