create Database phonepay;
Use phonepay;

Select * from phonepay.phonepay Where Payment_Status = 'Successful';

select Recharge_Amount, Count(*) AS Most_Used_Count
FROM phonepay.phonepay
GROUP BY Recharge_Amount
LIMIT 1;

Select recharge_Amount, count(*) AS Cancelled_Count
from phonepay.phonepay
Where Payment_Status = 'cancelled'
Group by Recharge_Amount
ORDER BY cancelled_Count DESC;

SELECT SUM(Company_commission)
FROM phonepay.phonepay
LIMIT 1;