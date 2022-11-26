INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age_,
	billing_info
) values(
	1,
	'Nick',
	'Hammer',
	'36',
	'1234-5678-9012-3456 012 01/22'
);

INSERT INTO movies(
	movie_id,
	title,
	rating,
	movie_length,
	genre
) VALUES(
	1,
	'True Romance',
	'R',
	'1:46',
	'Action'
);

INSERT INTO tickets(
	ticket_id,
	price,
	seat,
	start_time,
	theatre_number,
	movie_id
) VALUES(
	1,
	9.99,
	'G7',
	'7:50',
	5,
	1
);

INSERT INTO inventory(
	upc,
	product_amount
) VALUES(
	123456,
	5
);

INSERT INTO concessions(
	concession_id,
	sub_total,
	total_cost,
	upc,
	customer_id
) VALUES(
	1,
	12.99,
	13.36,
	123456,
	1
);

INSERT INTO product(
	item_id,
	product_price,
	product_name,
	upc
) VALUES(
	1,
	6.99,
	'Milk Duds',
	123456
);









