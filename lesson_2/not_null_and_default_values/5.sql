-- mine
SELECT "date", round(((low + high) / 2), 1) AS mean FROM temperatures WHERE "date" > '2016-03-01' AND "date" < '2016-03-09';

--LS
SELECT date, ROUND((high + low) / 2.0, 1) as average
  FROM temperatures
 WHERE date BETWEEN '2016-03-02' AND '2016-03-08';
