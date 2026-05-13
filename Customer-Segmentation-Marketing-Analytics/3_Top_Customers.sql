WITH TopScore AS(
	SELECT*,
	RANK() OVER(PARTITION BY Segment 
				ORDER BY TOTAL_SPENT DESC
				) AS RankSegment
	FROM Customer1
)
SELECT*
FROM TopScore
WHERE RankSegment<5