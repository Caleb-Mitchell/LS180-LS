-- mine
SELECT state, count(state) FROM people GROUP BY state ORDER BY count(state) DESC LIMIT 10;

-- LS
SELECT state, COUNT(id) FROM people GROUP BY state ORDER BY count DESC LIMIT 10;
