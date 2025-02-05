
WITH cte(Amount, Month,total_amount) AS (
   
SELECT 100, 1, 100 AS total_amount 
UNION ALL 

SELECT 100, MONTH + 1, total_amount + 100 as total_amount 
from cte
where MONTH < 12
)

select * from cte
