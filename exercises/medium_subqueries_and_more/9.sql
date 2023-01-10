EXPLAIN ANALYZE SELECT MAX(bid_counts.count) FROM
    (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;

EXPLAIN ANALYZE SELECT COUNT(bidder_id) AS max_bid FROM bids
GROUP BY bidder_id
ORDER BY max_bid DESC
LIMIT 1;

-- Further Exploration

EXPLAIN ANALYZE SELECT
    name,
    (SELECT COUNT(item_id) FROM bids WHERE item_id = items.id)
FROM items;

EXPLAIN ANALYZE
SELECT
    items.name,
    COUNT(bids.item_id)
FROM items LEFT OUTER JOIN bids ON items.id = bids.item_id GROUP BY items.name;
