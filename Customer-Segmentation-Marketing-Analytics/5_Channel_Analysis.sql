WITH ChannelAnalysis AS(
SELECT
	Segment,
	CASE 
		WHEN NumWebPurchases> NumCatalogPurchases AND NumWebPurchases> NumStorePurchases THEN 'WEB'

		WHEN  NumCatalogPurchases>NumWebPurchases AND NumCatalogPurchases > NumStorePurchases THEN 'Catalog'

		WHEN   NumStorePurchases>NumWebPurchases AND  NumStorePurchases> NumCatalogPurchases THEN 'Store'

		ELSE 
		'Mixed'
	END AS Preferred_Channel
FROM Customer1
)

SELECT
	Segment,
	Preferred_Channel,
	COUNT(*) CustomerCount
FROM ChannelAnalysis
GROUP BY Segment,Preferred_Channel
ORDER BY Segment, CustomerCount DESC