select
	trips.trip_id,
	weather.date,
	trips.start_date,
	trips.duration
from
	trips
join
	weather
on
	trips.zip_code = weather.ZIP
where
	Events like 'rain'
group by trip_id
order by duration desc
limit 3