SELECT w1.first_name,w1.salary
FROM worker as w1, worker as w2
WHERE w1.salary = w2.salary and w1.first_name != w2.first_name
