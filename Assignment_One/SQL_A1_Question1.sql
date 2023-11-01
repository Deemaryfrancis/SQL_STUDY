SELECT fruits.fruit_name, year(fruit_sales.order_date) as year, month(fruit_sales.order_date) as month, fruit_sales.total_sales_value 
FROM fruits join fruit_sales 
on fruits.fruit_id = fruit_sales.fruit_id 
where year(fruit_sales.order_date)= 2022 and month(fruit_sales.order_date)= 5
order by fruit_sales.total_sales_value desc;
