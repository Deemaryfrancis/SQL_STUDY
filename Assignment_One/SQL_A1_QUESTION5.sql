SELECT ((SELECT count(user_id) as divisor FROM page_views p
where page_category = 'product' and page_category = 'product'
group by User_ID)/count(p.user_id)*100) as percentage_User_ID
FROM page_views p