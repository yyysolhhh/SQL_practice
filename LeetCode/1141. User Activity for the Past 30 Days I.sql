SELECT activity_date AS day, COUNT(DISTINCT(user_id)) AS active_users 
FROM Activity 
WHERE activity_date >= '2019-06-28' AND activity_date <= '2019-07-27' 
GROUP BY activity_date;

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users 
FROM Activity 
WHERE DATEDIFF('2019-07-27', activity_date) < 30 
GROUP BY activity_date;

