SELECT c.name, u.first_name, u.last_name
FROM cities as c
left join addresses as a on a.city_id = c.id
inner join users as u on u.address_id = a.id
