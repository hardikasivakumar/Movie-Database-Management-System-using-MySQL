# Movie Database Management System using MySQL

## Project Overview

This project demonstrates the implementation of a Movie Database Management System using MySQL. It includes database creation, data insertion, database normalization, and SQL queries using JOIN operations.

The project consists of two SQL files:

- `movies.sql` – Creates the main movie database and inserts movie records.
- `movie_join.sql` – Creates normalized tables and demonstrates SQL JOIN queries.

This project is intended for learning SQL, database management, and interview preparation.

---

# Features

- Movie database creation
- Data insertion using SQL
- Database normalization
- Primary Key and Foreign Key relationships
- SQL JOIN operations
- Data filtering
- Sorting and searching
- Aggregate functions
- GROUP BY and HAVING queries

---


# Database Files

## movies.sql

This file contains:

- Creation of the `movies` table
- Movie information including:
  - Release Year
  - Movie Name
  - Actor Name
  - Language
  - Director Name
- Sample movie data for SQL practice. The table defines the movie attributes and populates them with records.

---

## movie_join.sql

This file demonstrates:

- Database normalization
- Creation of master tables
- Data migration using `INSERT INTO ... SELECT`
- INNER JOIN operations
- Filtering and sorting
- Aggregate queries using COUNT, GROUP BY, and HAVING. It creates `act_master`, `lang_maste`, and `mov_details`, then includes a variety of JOIN and analytical queries.

---

# Technologies Used

- MySQL
- MySQL Workbench
- SQL

---

# SQL Concepts Covered

- CREATE TABLE
- INSERT INTO
- SELECT
- DISTINCT
- WHERE
- LIKE
- BETWEEN
- ORDER BY
- LIMIT
- INNER JOIN
- COUNT()
- GROUP BY
- HAVING
- Database Normalization

---

# Sample Queries

The project includes SQL queries to:

- Display all movie details
- Retrieve movies by actor
- Retrieve movies by language
- Filter movies by release year
- Count movies by actor
- Count movies by language
- Find actors with the highest number of movies
- Find the busiest release year
- List actors who have worked in multiple languages
- Sort and search movie records

---

# Learning Outcomes

By completing this project, you will gain practical knowledge of:

- Relational database design
- Database normalization
- SQL JOIN operations
- Data retrieval techniques
- Aggregate functions
- Query optimization basics

---


