WITH Items AS (
    SELECT Item FROM (SELECT MAX(Amount) AS "HighestBid", Item FROM Bid GROUP BY Item) WHERE HighestBid > 100
)
SELECT COUNT(DISTINCT Category.Category) FROM Items, Category WHERE Items.Item = Category.Item;
