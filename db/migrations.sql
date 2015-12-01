CREATE DATABASE recommendations;

\c recommendations

CREATE TABLE attractions (id SERIAL PRIMARY KEY, contributor TEXT, place TEXT, notes varchar(500), type TEXT);
