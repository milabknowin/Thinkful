select
	start_station,
	count(*) station_count
from
	trips
group by start_station
order by station_count desc