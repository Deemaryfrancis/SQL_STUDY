select AVG(c.AGE) from Customers c
join purchases p
on c.CUSTOMER_ID = p. CUSTOMER_ID
WHERE YEAR(p.PURCHASE_DATE) = 2020 and month(p.PURCHASE_DATE) = 5