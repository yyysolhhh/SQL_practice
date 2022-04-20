SELECT * 
FROM Cinema 
WHERE id % 2 = 1 AND description != "boring" 
ORDER BY rating DESC;

SELECT * 
FROM Cinema 
WHERE MOD(id, 2) = 1 AND description != "boring" 
ORDER BY rating DESC;
