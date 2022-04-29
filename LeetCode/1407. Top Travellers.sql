SELECT U.name AS name, 
	IFNULL(SUM(R.distance), 0) AS travelled_distance 
FROM Users U LEFT JOIN Rides R 
ON U.id = R.user_id 
GROUP BY R.user_id 
ORDER BY travelled_distance DESC, name;
