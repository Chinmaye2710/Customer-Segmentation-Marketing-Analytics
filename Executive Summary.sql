SELECT
    Segment,
    COUNT(*) AS Customer_count,
    AVG(TOTAL_SPENT) AS Avg_spend,
    AVG(TOTAL_PURCHASE) AS Avg_Purchase,
    SUM(TOTAL_SPENT) AS Total_Revenue,
    SUM(TOTAL_SPENT)*100 / SUM(SUM(TOTAL_SPENT)) OVER() AS Revenue_Contribution,
    SUM(Response)*100 / COUNT(*) AS Response_Percentage
FROM Customer1
GROUP BY Segment
ORDER BY Avg_spend DESC