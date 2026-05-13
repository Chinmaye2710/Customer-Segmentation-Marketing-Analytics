CREATE VIEW Customer1 AS 

WITH CustomerBase AS(

SELECT
    ID,
    Income,
    Education,
    Recency,
    Response,
    NumWebPurchases,
    NumCatalogPurchases,
    NumStorePurchases,

    MntWines +
    MntFruits +
    MntMeatProducts +
    MntFishProducts +
    MntSweetProducts +
    MntGoldProds AS TOTAL_SPENT,

    NumWebPurchases +
    NumCatalogPurchases +
    NumStorePurchases AS TOTAL_PURCHASE

FROM marketing_campaign
WHERE Income IS NOT NULL
),

RFM AS(
SELECT
    ID,
    RECENCY,
    TOTAL_SPENT,
    TOTAL_PURCHASE,
    Response,
    NumWebPurchases,
    NumCatalogPurchases,
    NumStorePurchases,
   
    NTILE(3) OVER(ORDER BY RECENCY DESC) AS R_SCORE,
    NTILE(3) OVER(ORDER BY TOTAL_PURCHASE) AS F_SCORE,
    NTILE(3) OVER(ORDER BY TOTAL_SPENT) AS M_SCORE
FROM CustomerBase
)

SELECT
    ID,
    TOTAL_SPENT,
    TOTAL_PURCHASE,
    R_SCORE,
    F_SCORE,
    M_SCORE,
    Recency,
    Response,
    NumWebPurchases,
    NumCatalogPurchases,
    NumStorePurchases,
    CASE
        WHEN (R_SCORE+F_SCORE+M_SCORE) >= 9 THEN 'VIP'
        WHEN F_SCORE = 2 THEN 'LOYAL'
        WHEN M_SCORE = 3 THEN 'BIG SPENDER'
        WHEN R_SCORE = 1 THEN 'AT RISK'
        ELSE 'LOW'
    END AS Segment

FROM RFM
