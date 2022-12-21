-- mine
SELECT regexp_match(email, '@(\w+)') AS domain, count(id) FROM people GROUP BY domain ORDER BY count DESC;

-- LS
SELECT substr(email, strpos(email, '@') + 1) as domain,
         COUNT(id)
  FROM people
  GROUP BY domain
  ORDER BY count DESC;
