select
	field40 neighborhood,
	count (case when field77 > 1 then 1 end) revisits 
from
	listings
	group by 1
order by revisits desc
limit 10