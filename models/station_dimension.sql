with BIKE AS (

    Select distinct
    START_STATION_NAME as station_name,
    START_STATIO_ID  as station_id,
    start_lat as station_lat,
    start_lng as station_lng
    FROM {{ source('demo', 'bike') }}
    where ride_id != 'ride_id'

limit 10
)

select 
*
from bike