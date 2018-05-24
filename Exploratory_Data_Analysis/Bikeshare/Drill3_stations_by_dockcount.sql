select
	trips.start_station,
	stations.dockcount,
	count (*) start_station_count
from
	trips
join
	stations
on
	trips.start_station = stations.name
group by start_station
order by dockcount
