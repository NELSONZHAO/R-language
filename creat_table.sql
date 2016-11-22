#Create Table
CREATE TABLE movies(
movieid INT UNSIGNED KEY,
title TEXT NOT NULL,
genres TEXT NOT NULL
)

CREATE TABLE users(
userid INT UNSIGNED KEY,
gender CHAR NOT NULL,
age INT UNSIGNED NOT NULL,
job INT UNSIGNED NOT NULL,
zipcode MEDIUMINT NOT NULL
)

CREATE TABLE ratings(
userid INT UNSIGNED,
movieid INT UNSIGNED,
rating FLOAT(2,1) UNSIGNED NOT NULL,
timestamp TEXT NOT NULL
)

#Load Data
LOAD DATA LOCAL INFILE '/Users/apple/Graduate/course/R-language/R-language-report'
INTO TABLE movies
FIELDS TERMINATED BY '::'
LINES TERMINATED BY '\n'