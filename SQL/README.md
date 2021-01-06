# Simple SQL commands

Cheat sheet with some simple SQL commands. 

## CREATE TABLE

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
); 
```

## SELECT

It is possible to change the column name of each of the columns selected by adding an AS clause. 

```sql
SELECT ...
FROM ...
WHERE ...;
```

## SELECT DISTINCT

```sql
SELECT DISTINCT ...
FROM ...
WHERE ...;
```

## Ordering

Can add a clause to get ordering ascending (default) or descending.

```sql
ORDER BY ... DESC;
```

## Set Operators

```sql
UNION;
INTERSECT;
EXCEPT;
```

## Subqueries in WHERE

Can add SELECT-subqueries in the WHERE-clause, which can be useful in some situations.

## Subqueries in FROM and SELECT


## Basic Operators

```sql
IN;
NOT IN;
<> -- Not equals. 
EXISTS;
NOT EXISTS;
ALL;
ANY;
/* It is always possible to write queries that use ALL/ANY with EXISTS/NOT EXISTS, 
   which is useful e.g. if the system does not support ALL/ANY. 
   E.g. sqlite does not support ALL/ANY */
```
