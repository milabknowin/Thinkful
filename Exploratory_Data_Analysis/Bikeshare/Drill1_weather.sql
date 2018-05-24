select
	MinTemperatureF,
	Events,
	Zip
from
	weather
where
	Events  like 'rain' and
	Zip = 94301
order by MinTemperatureF