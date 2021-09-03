WITH CTE AS(
SELECT SUM(fare+extra+tax+tip) AS total_fare from taxi
group by date
order by date)
SELECT 
SUM(CASE 
WHEN (total_fare BETWEEN 0.00 AND 4200000) THEN 1
ELSE 0
END) "REGULAR",
SUM(CASE 
WHEN (total_fare BETWEEN 4200001 AND 5500000) THEN 1
ELSE 0
END) "MEDUIM",
SUM(CASE 
WHEN (total_fare > 5500000) THEN 1
ELSE 0
END) "HIGH"
FROM CTE
