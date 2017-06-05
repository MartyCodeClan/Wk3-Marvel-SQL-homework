# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

3. Oops! Someone at CodeClan spelled James' name wrong! Change it to reflect the proper spelling (change 'Jasmse Cox' to 'James Cox').

UPDATE people SET name = 'James Cox' WHERE name = 'Jasmse Cox';

4. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Martin Eguizabel';

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Zsolt');

7. Winston Ingram, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Winston Ingram';

8. Somehow the list of people includes two people named 'Fred'. Change these entries to the proper names ('Jack Jarvis', 'Victor McDade')

UPDATE people SET name = 'Jack Jarvis' WHERE id = 9;
UPDATE people SET name = 'Victor McDade' WHERE id = 13;

9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (id, title, year, show_time)
VALUES (16, 'Guardians of the Galaxy 2', 1974, '24:00');

10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 19:05 to 21:30

UPDATE movies SET show_time = '21:30' WHERE id = 11;

## Extension

1. Research how to delete multiple entries from your table in a single command.

delete from your_table
where id in (value1, value2, ...);
If you need to delete based on the result of a query, you can also use IN:

delete from your_table
where id in (select aColumn from ...);
(Notice that the subquery must return only one column)

If you need to delete based on a range of values, either you use BETWEEN or you use inequalities:

delete from your_table
where id between bottom_value and top_value;
or

delete from your_table
where id >= a_value and id <= another_value;