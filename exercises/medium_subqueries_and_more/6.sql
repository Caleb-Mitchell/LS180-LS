SELECT
    items.name,
    (SELECT COUNT(bids.item_id) FROM bids WHERE bids.item_id = items.id)
FROM items;

-- Further Exploration
SELECT
    items.name,
    COUNT(bids.item_id)
FROM items LEFT OUTER JOIN bids ON items.id = bids.item_id GROUP BY items.name;
