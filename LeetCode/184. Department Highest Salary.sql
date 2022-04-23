SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary 
FROM Employee E JOIN Department D 
ON E.departmentId = D.id 
WHERE (E.departmentId, Salary) IN 
	(SELECT departmentId, MAX(salary) 
	FROM Employee 
	GROUP BY departmentId)
;
