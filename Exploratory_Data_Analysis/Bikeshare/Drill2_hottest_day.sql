select
	city, MaxTemperatureF
from
	stations, weather
group by
	city, MaxTemperatureF
order by MaxTemperatureF desc
