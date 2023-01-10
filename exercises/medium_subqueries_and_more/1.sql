-- Create database called auction
CREATE DATABASE auction;

-- Connect to database auction
\c auction

-- Create table bidders
CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

-- Create table items
CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price numeric(6, 2) NOT NULL CHECK (initial_price BETWEEN 0.01 AND 1000.00),
  sales_price numeric(6, 2) CHECK (sales_price BETWEEN 0.01 AND 1000.00)
);

-- Create table bids
CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer NOT NULL REFERENCES bidders(id) ON DELETE CASCADE,
  item_id integer NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  amount numeric(6, 2) NOT NULL CHECK (amount BETWEEN 0.01 AND 1000.00)
);

-- Create composite index on foreign key collumns in table bids
CREATE INDEX ON bids (bidder_id, item_id);

-- Copy contents of csv files to tables in auction database
\copy bidders FROM /home/caleb/LS180-LS/exercises/medium_subqueries_and_more/bidders.csv WITH CSV HEADER
\copy items FROM /home/caleb/LS180-LS/exercises/medium_subqueries_and_more/items.csv WITH CSV HEADER
\copy bids FROM /home/caleb/LS180-LS/exercises/medium_subqueries_and_more/bids.csv WITH CSV HEADER
