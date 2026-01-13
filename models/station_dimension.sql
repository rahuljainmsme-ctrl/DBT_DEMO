with BIKE AS (

    Select distinct 
    start_station_name as station_name,
    start_station_id  as start station_id,
    start_lat as station_lat,
    start_lng as station_lng
    FROM {{ source('demo', 'bike') }}
    where ride_id != 'ride_id'

limit 10
)

select 
*
from bike