SELECT *
FROM sales;

SELECT *
FROM sales
WHERE state = "Abia";

SELECT orderid, costofsales, productname
FROM sales
WHERE brandname = "Contoso";

CREATE INDEX orderid_index
ON sales(orderid);

DROP INDEX orderid_index ON sales;

#INDEX HELPS YOU ACCESS DETAILS FASTER

SELECT *
FROM sales
WHERE orderid = 2170;

SELECT *
FROM sales
WHERE state IN ("Lagos", "Ogun", "Oyo", "Osun", "Ekiti", "Ondo");

#VIEW(VIRTUAL TABLE)

CREATE VIEW west_sales AS
SELECT *
FROM sales
WHERE state IN ("Lagos", "Ogun", "Oyo", "Osun", "Ekiti", "Ondo");


SELECT *
FROM west_sales;

DROP VIEW west_sales;

CREATE VIEW Kardashians AS
SELECT *
FROM sales
WHERE state IN ("Kaduna" , "Kano", "Kastina", "Kebbi", "Kwara");

SELECT *
FROM kardashians;


##COUNT, SUM, MAX ,MIN

SELECT *
FROM sales

SELECT COUNT(*)
FROM sales;

SELECT SUM(orderqty)
FROM sales;

SELECT MAX(orderqty)
FROM sales;

SELECT MIN(orderqty)
FROM sales;

SELECT state, SUM(orderqty)
FROM sales
GROUP BY state;

#THIS IS TO KNOW WHAT EACH STATE SUMS UP TO

SELECT state, brandname, SUM(orderqty)
FROM sales
GROUP BY state, brandname

#THIS IS FOR state AND brandname

SELECT state, brandname, SUM(orderqty)
FROM sales
GROUP BY state, brandname
ORDER BY SUM(orderqty) DESC;

#USE ORDER BY TO SORT
##DESC IS DESCENDING, IF YOU WANT IT IN ASCENDING, USE ASC OR NOTHING
