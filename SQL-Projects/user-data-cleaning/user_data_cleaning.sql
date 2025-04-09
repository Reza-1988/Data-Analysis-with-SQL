-- This script deletes specific data from the 'users' table based on defined conditions.

-- Section 1: Delete users whose last name contains neither 'm' nor 'd'
DELETE FROM users
       WHERE family NOT LIKE '%d%'
         AND family NOT LIKE '%m%';

-- Section 2: Delete users with last name 'mohammadi' or salary in the specified list
DELETE FROM users
       WHERE family = 'mohammadi'
          OR salary IN (7356, 9701, 2885, 7414, 3801);

-- Section 3: Delete users with last name 'booazar' or birth year between 1995 and 2000
DELETE FROM users
       WHERE family = 'booazar'
          OR YEAR(birth_date) BETWEEN 1995 AND 2000;