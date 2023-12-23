use mavenmovies;

-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences.

SELECT * FROM information_schema.key_column_usage;

-- List all details of actors.

SELECT * FROM ACTOR;

-- List all customer information from DB.

SELECT * FROM CUSTOMER;

-- List different countries.

SELECT COUNTRY FROM COUNTRY;

-- Display all active customers.

SELECT * FROM CUSTOMER WHERE ACTIVE = 1;

-- List of all rental IDs for customer with ID 1.

SELECT RENTAL_ID FROM RENTAL WHERE CUSTOMER_ID = 1;

-- Display all the films whose rental duration is greater than 5.

SELECT TITLE, RENTAL_DURATION FROM FILM WHERE RENTAL_DURATION > 5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20.

SELECT count(TITLE) FROM FILM WHERE REPLACEMENT_COST BETWEEN 15 AND 20;

-- Display the count of unique first names of actors.

SELECT * FROM ACTOR;

SELECT count(distinct(FIRST_NAME))  FROM ACTOR;

-- Display the first 10 records from the customer table.

SELECT * FROM CUSTOMER LIMIT 10;

-- Display the first 3 records from the customer table whose first name starts with 'b'.

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "B%" LIMIT 3;

-- Display the names of the first 5 movies which are rated as 'G'.

SELECT TITLE, RATING FROM FILM WHERE RATING = 'G' limit 5;

-- Find all customers whose first name starts with "a".

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "A%";

-- Find all customers whose first name ends with "a".

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "%A";


-- Display the list of first 4 cities which start and end with 'a'.

SELECT * FROM CITY WHERE CITY LIKE "A%A" LIMIT 4;

-- Find all customers whose first name have "NI" in any position.

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "%NI%";

-- Find all customers whose first name have "r" in the second position.

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "_R%";

-- Find all customers whose first name starts with "a" and are at least 5 characters in length.

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "A____%";

-- Find all customers whose first name starts with "a" and ends with "o".

SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE "A%O";

-- Get the films with pg and pg-13 rating using IN operator.

SELECT * FROM FILM WHERE RATING IN ('PG','PG-13');

-- Get the films with length between 50 to 100 using between operator.

SELECT * FROM FILM WHERE LENGTH BETWEEN 50 AND 100;

-- Get the top 50 actors using limit operator.

SELECT * FROM ACTOR LIMIT 50;

-- Get the distinct film ids from inventory table.

SELECT distinct(FILM_ID) FROM INVENTORY;