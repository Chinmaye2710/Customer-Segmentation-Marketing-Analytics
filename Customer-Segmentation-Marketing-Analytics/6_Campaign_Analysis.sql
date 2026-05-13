SELECT
	Segment,
	COUNT(*) AS CustomerCount,
	SUM(Response) AS Total_Responders,
	COUNT(*)- SUM(Response) AS UnRespondedCustomers,
	SUM(Response) *100/COUNT(*) AS ResponseRate
FROM Customer1
GROUP BY Segment 
ORDER BY ResponseRate DESC 