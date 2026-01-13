WITH CTE AS (
    SELECT t.*, w.*
    from {{ ref('trip_facts') }} t
    left join {{ ref('daily_weather') }} W on t.TRIP_DATE = W.DAILY_WEATHER
)

select * from cte