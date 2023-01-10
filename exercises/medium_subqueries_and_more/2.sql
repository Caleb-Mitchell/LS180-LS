SELECT items.name AS "Bid on Items"
FROM items WHERE items.id IN (SELECT DISTINCT bids.item_id FROM bids);
