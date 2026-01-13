with CTE AS (
    select 
    TO_TIMESTAMP(started_at) as started_at,
    DATE(TO_TIMESTAMP(started_at)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(started_at)) AS HOUR_STARTED_AT,
    DAYNAME(TO_TIMESTAMP(started_at)) AS DAYNAME_STARTED_AT,
    {{day_type('STARTED_AT')}} as DAY_TYPE,
    {{get_season('STARTED_AT')}} AS STATION_OF_YEAR
     FROM 
    {{ source('demo', 'bike') }}
    where started_at != 'started_at' 

)


select * from cte