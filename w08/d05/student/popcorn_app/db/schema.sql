DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS purchase;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS genre;

CREATE TABLE users (
 id SERIAL PRIMARY KEY,
 email VARCHAR (100) UNIQUE,
 born_on DATE
);

CREATE TABLE purchases (
 id SERIAL PRIMARY KEY,
 purchase_type VARCHAR NOT NULL
 amount INTEGER default 1
);

CREATE TABLE movies (
 id SERIAL PRIMARY KEY,
 purchase_price money,
 rental_price money,
 available_on date,
 description VARCHAR NOT NULL,
 rating ENUM default 5
);

CREATE TYPE ratings AS ENUM (1, 2, 3, 4, 5)

CREATE TABLE genres (
 id SERIAL PRIMARY KEY,
 name VARCHAR (100) NOT NULL
);








