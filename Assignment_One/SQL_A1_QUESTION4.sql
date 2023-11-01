SELECT s.Purchase_ID, s.CHANNEL, Test_1.Purchase_Date_year, tEST_1.TS, tEST_1.myrank from sessionS s
JOIN
(SELECT Purchase_ID, year(Purchase_Date) as Purchase_Date_year, (pu.UNIT_VALUE_POUNDS * pu.UNITS) TS, row_number() OVER( partition by year(Purchase_Date)
order by pu.UNIT_VALUE_POUNDS * pu.UNITS DESC) as myrank  
FROM purchases pu) as Test_1
on s.Purchase_ID = Test_1.Purchase_ID
where myrank =2