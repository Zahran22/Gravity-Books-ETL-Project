SELECT   address.address_id,
         address.street_number,
         address.street_name,
		 address.city,
		 country.country_id,
         country.country_name
FROM     address LEFT OUTER JOIN
         country ON address.country_id = country.country_id