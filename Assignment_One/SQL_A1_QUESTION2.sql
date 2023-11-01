SELECT f.FRUIT_NAME from fruits f
join
(SELECT FRUIT_ID, sum(TOTAL_SALES_VALUE) TSV_2021 from fruit_sales
where year(order_date) = 2021
group by FRUIT_ID
) ts_2021
on f.FRUIT_ID = ts_2021.FRUIT_ID
JOIN
(SELECT FRUIT_ID, sum(TOTAL_SALES_VALUE) TSV_2022 from fruit_sales
where year(order_date) = 2022
group by FRUIT_ID) ts_2022
on ts_2022.FRUIT_ID = ts_2021.FRUIT_ID
where ts_2022.FRUIT_ID < ts_2021.FRUIT_ID
