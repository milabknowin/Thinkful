with 
	rainy
as (
	select
		date
	from
		weather
	where Events = 'Rain'
	group by 1
),

rainy_rides 
as (
	select
		trip_id,
		duration,
		date(start_date) trip_date
	from
		trips
	join 
		rainy
	on rainy.date = trip_date
	order by duration desc
)

select
	trip_date,
	max(duration)
from 
	rainy_rides
group by 1