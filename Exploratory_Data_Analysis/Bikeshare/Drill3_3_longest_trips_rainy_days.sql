with 
	rainy
as (
	select
		date
	from
		weather
	where Events = 'Rain'
	group by 1
)
select
	trip_id,
	date(start_date) trip_date,
	duration
from
	trips
join
	rainy
on
	rainy.date = trip_date
order by duration desc
limit 3