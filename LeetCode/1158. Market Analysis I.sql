#SELECT U.user_id AS buyer_id, U.join_date, IF(ISNULL(O.order_date), 0, COUNT(O.order_id)) AS orders_in_2019 FROM Orders O RIGHT JOIN Users U ON O.buyer_id = U.user_id WHERE YEAR(O.order_date) = 2019 GROUP BY U.user_id;

SELECT U.user_id AS buyer_id, 
	U.join_date, 
	IF(O.order_date IS NULL, 0, COUNT(O.order_id)) AS orders_in_2019 
FROM Orders O RIGHT JOIN Users U 
ON O.buyer_id = U.user_id AND YEAR(O.order_date) = 2019 
GROUP BY U.user_id;
