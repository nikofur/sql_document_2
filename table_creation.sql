-- Customer Table creation
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age_ INTEGER,
	billing_info VARCHAR(150)
);

-- Movies Table creation
create table movies(
	movie_id SERIAL primary key,
	title VARCHAR(100),
	rating VARCHAR(10),
	movie_length TIME,
	genre VARCHAR(20)
);

-- Tickets Table creation 
create table tickets(
	ticket_id SERIAL primary key,
	price NUMERIC(4,2),
	seat VARCHAR(5),
	start_time TIME,
	theatre_number INTEGER
	movie_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id)
);

-- Inventory Table creation 
create table inventory(
	upc SERIAL primary key,
	product_amount INTEGER
);

-- Concessions Table creation
create table concessions(
	concession_id SERIAL primary key,
	sub_total NUMERIC(4,2),
	total_cost NUMERIC(4,2),
	upc INTEGER not null,
	customer_id INTEGER not null,
	foreign key(upc) references inventory(upc),
	foreign key(customer_id) references customer(customer_id)
);

-- Product Table creation
create table product(
	item_id SERIAL primary key,
	product_price NUMERIC(4,2),
	product_name VARCHAR(100),
	upc INTEGER not null,
	foreign key(upc) references inventory(upc)
);