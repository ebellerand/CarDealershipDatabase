-- Query #6: Get all sales information for a specific dealer for a specific date range.
SELECT *
FROM sales_contracts s
JOIN dealerships d
ON s.id = d.dealership_id
JOIN vehicles v 
ON s.vin = v.vin
WHERE d.name = "BlackBear Auto Sales"
AND sale_date BETWEEN '2022-12-12' AND '2023-06-09';

