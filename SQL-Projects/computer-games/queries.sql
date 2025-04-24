-- Computer Games Data Analysis
-- This exercise focuses on a dataset about computer games.
-- First, create your database and then execute the data from the 'games.sql' file
-- located in the 'data' folder. This dataset contains information and sales statistics
-- for computer games. For each question, write SQL queries to produce the desired outputs.


-- Section1: Top 10 recent games with global sales over 20 million
-- Returns name, release year, and global sales (without decimals, e.g., 1.6 as 1600000)
-- for the 10 newest games with over 20 million units sold worldwide.
-- If games were released in the same year, sort by global sales descending.
SELECT name, games.year_of_release, (global_sales * 1000000) AS global_sales
FROM games
WHERE global_sales > 20
ORDER BY global_sales DESC, year_of_release DESC
LIMIT 10;

-- Section2: Publisher with the highest total global sales
-- Returns the publisher with the maximum sum of global sales across all games.
SELECT publisher
FROM games
GROUP BY publisher
ORDER BY SUM(global_sales) DESC
LIMIT 1;

-- Section3: Genre with the highest sales in Asia, Europe, and Australia
-- Returns the genre with the maximum total sales across Asia, Europe, and Australia.
-- Replaces NULL values with the string 'OTHER'.
SELECT COALESCE(genre, 'OTHER') as genre
FROM games
GROUP BY genre
ORDER BY SUM(other_sales) DESC
LIMIT 1;


-- Section4: Game details with sales and custom sorting
-- Returns name, release year, sales in Asia, Europe, Australia, and global sales.
-- Filters: Games from 2000 onward are sorted by global sales descending.
-- Games before 2000 are sorted by combined Asia, Europe, Australia sales descending.
-- Ties in global sales or regional sales are sorted by game ID ascending.

SELECT name, year_of_release, other_sales, global_sales
FROM games
ORDER BY (IF(year_of_release >= 2000, 1, 0)) DESC, -- show results greater than or equal to the  year of release 2000 at first
         (IF(year_of_release >= 2000, global_sales, other_sales)) DESC,
         id;

-- the equivalent query with CASE
SELECT name,year_of_release,other_sales,global_sales
FROM games
ORDER BY
    CASE
        WHEN year_of_release >= 2000 THEN 1 -- show results greater than or equal to the  year of release 2000 at first
        ELSE 0
    END DESC,
    CASE
        WHEN year_of_release >= 2000 THEN global_sales
        ELSE (other_sales)
    END DESC,
    id ASC;