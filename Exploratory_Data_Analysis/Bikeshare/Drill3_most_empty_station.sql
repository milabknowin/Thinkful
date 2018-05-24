select
	status.station_id,
	stations.name,
	count(CASE WHEN bikes_available=0 THEN 1 END) empty
from
	status
join
	stations
on
	status.station_id = stations.station_id
group by 1
order by empty desc
