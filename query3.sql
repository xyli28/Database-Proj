SELECT COUNT(*) FROM (SELECT COUNT(*) AS "Occurance" FROM Category GROUP BY Item) WHERE Occurance=4;
