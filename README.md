# Phonepe-profit
Same problem sloved for phonepe recharge plan
 
 Question

 1) Retrieve all sueccessfull paymat?
 
 CODE - create Database phonepay;
Use phonepay;

Select * from phonepay.phonepay Where Payment_Status = 'Successful';

2) Get the total numbers of pepole how have recharge most plan?

CODE - select Recharge_Amount, Count(*) AS Most_Used_Count
FROM phonepay.phonepay
GROUP BY Recharge_Amount
LIMIT 1;

3) Get the total numbers of cancelled paymat in recharge?

CODE - Select recharge_Amount, count(*) AS Cancelled_Count
from phonepay.phonepay
Where Payment_Status = 'cancelled'
Group by Recharge_Amount
ORDER BY cancelled_Count DESC;

4) The total profit of phonepe in recharge with added the extra amount of rechange plan with only 200 customer?

CODE - SELECT SUM(Company_commission)
FROM phonepay.phonepay
LIMIT 1;
