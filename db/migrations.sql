CREATE DATABASE chicago_recommendations;

\c chicago_recommendations

CREATE TABLE recommendations (id SERIAL PRIMARY KEY, contributor TEXT, place TEXT, notes varchar(500), type_of_place TEXT);
