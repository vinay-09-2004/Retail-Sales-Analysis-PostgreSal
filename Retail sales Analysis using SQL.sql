-- -============================================================
-- SQL RETAIL SALES ANALYSIS PROJECT
-- Database: Retail
-- ============================================================



-- =============================================================
--1. create table
-- =============================================================


CREATE TABLE retail_sales_temp (
    transaction_id INT,
    sale_date TEXT,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(50),
    price_per_unit NUMERIC,
    quantity INT,
    cogs NUMERIC,
    total_sales NUMERIC
);



--2. DATA CLEANING
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Check records containing NULL values

SELECT * from retail_sales
where transaction_id = NULL;



SELECT * from retail_sales
where transaction_id is NULL
   or sale_date is NULL
   or sale_time is null
   or customer_id is null
   or gender is null
   or age is null
   or category is null
   or price_per_unit is null
   or quantity is null
   or cogs is null
   or total_sales is null;

-- Delete rows containing NULL values or blank strings
-- in text columns

delete  from retail_sales
where transaction_id is NULL
   or sale_date is NULL
   or sale_time is null
   or customer_id is null
   or gender is null
   or age is null
   or category is null
   or price_per_unit is null
   or quantity is null
   or cogs is null
   or total_sales is null;

   select * from retail_sales;

-- Replace M with Male and F with Female
select distinct gender
from retail_sales;

update retail_sales
set gender = 'Male' 
where gender = 'M';


update retail_sales
set gender = 'Female' 
where gender = 'F';

-- Verify cleaned data

select * from retail_sales;

-- ======================================================
-- 3. DATA ANALYSIS & BUSINESS QUESTIONS
-- ======================================================


-- Q1. Retrieve all columns for sales made on November 5, 2022.

select * from retail_sales
where sale_date = '2022-11-05';



-- Q2. Retrieve all transactions where the category is
-- Clothing, quantity sold is greater than 2,
-- and the transaction occurred in November 2022.

select * from retail_sales
   where category ='Clothing' 
   and quantity >2
   and sale_date between '2022-11-01' and '2022-11-30'
    order by quantity ;


-- Q3. Calculate total sales revenue and the total number
-- of transactions for each product category.

select  category,
    SUM(total_saleS) as total_sale_revenue,
	COUNT(transaction_id) AS total_n0_of_sales
          from retail_sales
		  group by category;


-- Q4. Find the average age of customers who purchased
-- products from the Beauty category.


select 
   round (AVG(age),2) as avg_customer_age
   from retail_sales
   where category='Beauty';

-- Q5. Retrieve all transactions where total sales
--      exceeded 1000.


select * from retail_sales
where total_sales>1000
order by total_sales ;



-- Q6. Calculate the total number of transactions
-- made by each gender in each product category.


select category, gender,
         count(transaction_id) as total_no_of_transaction
		 from retail_sales
		 group by gender ,category;


-- Q7. Calculate total monthly sales for each year
-- and identify the best-selling month in each year.

with monthly_sales as (
     select
	       extract(year from sale_date) as year,
		   extract(month from sale_date) as month,
		   sum(total_sales) as total_sales,
		   rank() over(partition by extract(year from sale_date) order by sum(total_sales) desc
		                ) as rnk
						from retail_sales
						group by 1,2
						)
						select *from
						monthly_sales
						where rnk= 1;
	



-- Q8. Identify the top 5 customers based on
-- their highest total sales.



select customer_id,
       sum(total_sales) as total_sales
         from retail_sales
         group by customer_id
         order by total_sales desc
          limit 5



   
-- Q9. Calculate the number of unique customers
--     who purchased products from each category.


select category,count(distinct customer_id) as unique_customer
from retail_sales
group by category;

--Q10. Categorize transactions into Morning, Afternoon,
-- and Evening shifts and count the orders in each shift.

-- Morning: Before 12:00 PM
-- Afternoon: 12:00 PM to before 6:00 PM
-- Evening: 6:00 PM onward


 select 
        CASE 
		    WHEN  sale_time<'12:00:00' THEN 'MORNING'
            WHEN  sale_time<'18:00:00' THEN 'AFTERNOON'
            ELSE 'EVENING'
            END AS shift,
			count(*) AS total_orders
			from retail_sales
			group by shift
            order by total_orders desc;


select *, 
        CASE 
		    WHEN  sale_time<'12:00:00' THEN 'MORNING'
            WHEN  sale_time<'18:00:00' THEN 'AFTERNOON'
            ELSE 'EVENING'
            END AS shift
			from retail_sales;





-- ==================================================================
--END OF PROJECT
-- ====================================================================