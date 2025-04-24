# Computer Games Data Analysis

## Introduction
This project involves analyzing a dataset of computer games, focusing on sales statistics and game information. The dataset, provided as a SQL file (`data/games.sql`), contains details about games, their platforms, genres, publishers, and sales across various regions. The project demonstrates SQL skills in database creation, data loading, and writing queries to extract meaningful insights.

## Dataset
The dataset includes information about computer games and their sales, stored in a SQL file (`data/games.sql`). The structure of the `games` table is as follows:

| Column Name       | Type                  | Description                          |
|-------------------|-----------------------|--------------------------------------|
| id                | BIGINT UNSIGNED PRIMARY KEY | Game identifier                     |
| name              | VARCHAR(255)          | Game name                            |
| platform          | VARCHAR(255)          | Game platform                        |
| year_of_release   | YEAR                  | Release year                         |
| genre             | VARCHAR(255)          | Game genre                           |
| publisher         | VARCHAR(255)          | Game publisher                       |
| na_sales          | DOUBLE(10,2)          | Sales in North America (in millions) |
| other_sales       | DOUBLE(10,2)          | Sales in Asia, Europe, Australia (in millions) |
| global_sales      | DOUBLE(10,2)          | Global sales (in millions)           |

**Note**: The dataset is not included in this repository due to its size or privacy constraints. Users can obtain the dataset or use a SQL file with the same structure.

## Setup Instructions
To run this project, follow these steps:

1. **Install MySQL**: Ensure MySQL is installed on your system. Alternatively, use a compatible SQL database.
2. **Set Up DataGrip (Optional)**: This project was tested with DataGrip, but any SQL client (e.g., MySQL Workbench) will work.
3. **Create Database**: Create a database (e.g., `computer_games`) in your SQL client.
4. **Load Data**: Execute the `games.sql` file from the `data` folder to populate the `games` table.
5. **Run Queries**: Execute the queries in `queries.sql` to answer the provided questions.

## Objectives
Write SQL queries to achieve the following outputs:

1. **Query 1: Top 10 Recent High-Selling Games**
   - Return the name, release year, and global sales (without decimals, e.g., 1.6 as 1600000) for the 10 newest games with over 20 million units sold worldwide.
   - If games were released in the same year, sort by global sales descending.

2. **Query 2: Top Publisher by Global Sales**
   - Return the publisher with the highest total global sales across all games.

3. **Query 3: Genre with Highest Regional Sales**
   - Return the genre with the maximum total sales in Asia, Europe, and Australia.
   - Replace NULL values with the string 'OTHER'.

4. **Query 4: Games with Custom Sorting**
   - Return name, release year, sales in Asia/Europe/Australia, and global sales.
   - Games from 2000 onward are sorted by global sales descending.
   - Games before 2000 are sorted by combined Asia, Europe, Australia sales descending.
   - Ties in global or regional sales are sorted by game ID ascending.

## SQL Queries
The SQL queries are provided in [queries.sql](queries.sql). The file includes:
- Database and table creation (if needed).
- Data loading instructions (referencing `games.sql`).
- Four analytical queries addressing the objectives above.


## Repository Structure
```
computer-games-project/
├── data/
│   └── games.sql (not included, provide your own)
├── queries.sql
└── README.md
```

## Notes
- Ensure the `games.sql` file is executed in the correct database to load the dataset.
- Verify column names in `queries.sql` match the `games` table schema.
- If using DataGrip, set the SQL dialect to MySQL to avoid warnings (Tools > Database > SQL Dialects > MySQL).
- For query 4, note that `other_sales` represents combined sales in Asia, Europe, and Australia, as specified in the dataset.

