select
	field40 neighbourhood,
	field52 property_type,
	field61 price,
	field55 bathrooms,
	field56 bedrooms,
	field57 beds,
	field8 description,
	field77 revisits
from
	listings
order by price desc
limit 10