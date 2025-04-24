use brillica;
show tables;
select* from sales_data;

  
-- 1. Calculate the total sales amount for each product and show in Descending order by sale.
select product,sum(Sales_Amount) as sales from sales_data Group by product order by sales desc ;

-- 2. show the details of maximum sales of each Area.
select region ,max(quantity_sold) as max_sales from sales_data group by region ;

-- 3. Find the top 5 products with the highest total sales amount.
select product ,sales_amount from sales_data  order by  sales_amount desc limit 5;

-- 4. Determine the average profit for each sales person.
select sales_person ,avg(profit) as avg_profit from sales_data group by sales_person ;

-- 5. Calculate the total quantity sold in each area.
select region ,sum(quantity_sold) as total_quantity from sales_data group by region;

-- 6. Get the monthly sales amount for each product.
select product , month(date) as monthly_sales,sum(sales_amount) as sales from sales_data group by monthly_sales,product  ;



-- 7. Calculate the cumulative sales amount for each sales person.
select sales_person,sum(sales_amount) over(order by sales_amount)as Cumulative_sales from sales_data;

-- 8. Find the percentage of total sales amount contributed by each product.
select product,sum(sales_amount) as total_sales ,(sum(sales_amount)/(select sum(sales_amount) from sales_data)*100) as sales_per from sales_data group by product;

-- 9. Calculate the difference in total sales amount between consecutive months for each product.
-- 10. Calculate the running total of sales amount for each product ordered by date.
select date,product,sales_amount,sum(sales_amount)  over(order by sales_amount)AS running_total from sales_data order by date asc;
select * from sales_data;



