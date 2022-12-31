SELECT
    events.name AS event,
    events.starts_at,
    sections.name,
    seats.row,
    seats.number AS seat
FROM
    tickets
INNER JOIN
    customers ON tickets.customer_id = customers.id
INNER JOIN
    events ON events.id = tickets.event_id
INNER JOIN
    seats ON tickets.seat_id = seats.id
INNER JOIN
    sections ON sections.id = seats.section_id
WHERE customers.email = 'gennaro.rath@mcdermott.co';
