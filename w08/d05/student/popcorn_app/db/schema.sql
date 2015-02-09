DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS purchase;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS genre;

CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 email VARCHAR (100) UNIQUE,
 born_on DATE,
 balance money default 0
);

CREATE TABLE purchases (
 id SERIAL PRIMARY KEY,
 purchase_type VARCHAR NOT NULL
 amount INTEGER default 1
);

CREATE TYPE ratings AS ENUM ('G', 'PG', 'PG-13', 'R', 'NC-17');

CREATE TABLE movies (
 id SERIAL PRIMARY KEY,
 purchase_price money default 14.99,
 rental_price money default 3.99,
 released_on date,
 description VARCHAR (1000) NOT NULL,
 rating ENUM default 'PG-13',
 image URL,
 runtime INTEGER,
 created_at TIMESTAMP current_time,
 updated_at TIMESTAMP current_time
);

CREATE TABLE genres (
 id SERIAL PRIMARY KEY,
 name VARCHAR (100) NOT NULL
);








