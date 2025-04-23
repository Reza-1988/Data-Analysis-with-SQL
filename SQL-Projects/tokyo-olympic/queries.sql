-- Tokyo Olympics 2021 Data Analysis
-- This script creates a table for Tokyo Olympics athletes, loads data from a CSV file,
-- and runs queries to analyze athlete participation.
-- Environment: MySQL, tested with DataGrip

-- Create the athletes table
CREATE TABLE athletes (
    name varchar(255),
    nationality varchar(255),
    discipline varchar(255)
);



-- Load data from a CSV file into the athletes table
-- Note: In DataGrip, the full absolute path to the CSV file must be specified
LOAD DATA LOCAL INFILE '/home/reza/Desktop/Python_Code/Data_Analysis_with_SQL/SQL-Projects/tokyo-olympic/data/athletes.csv'
    INTO TABLE athletes
    FIELDS TERMINATED BY ',' -- CSV fields are separated by commas
    LINES TERMINATED BY '\n' -- Each row ends with a newline character
    IGNORE 1 LINES -- Skip the header row in the CSV file
    (name, nationality, discipline); -- Map CSV columns to table fields

-- Write SQL queries to achieve the following outputs. Each query is graded separately, so if you cannot solve one query,
-- submit the ones you have completed and leave the unsolved query blank:


-- Section1:
-- Retrieve the names of Iranian athletes participating in the Tokyo Olympics, sorted in ascending order by name.
-- Note: The nationality value for these athletes is 'Islamic Republic of Iran'.

SELECT  name
FROM athletes
WHERE nationality = 'Islamic Republic of Iran';

-- Section2
-- Return the disciplines for each country, along with the country name and the number of participants in that discipline for that country.
-- The query should return three columns named discipline, nationality, and count. The output should be sorted in descending order by 'count'.
SELECT discipline, nationality, COUNT(discipline) AS count FROM athletes
GROUP BY discipline, nationality
ORDER BY count DESC;



-- Section3
-- Predict the final ranking of countries based on the number of participants. In this project, "prediction" means
-- retrieving the names of countries sorted in descending order by the number of participants (name this column 'count').
SELECT nationality, COUNT(*) AS count
FROM athletes
GROUP BY nationality
ORDER BY count DESC;
