SELECT events.name, COUNT(tickets.id) AS popularity FROM events LEFT OUTER JOIN tickets ON events.id = tickets.event_id GROUP BY name ORDER BY popularity DESC;
