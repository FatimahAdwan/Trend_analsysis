
-- create a new table with all the tables combined

with hotels as (
select * from dbo.['2018$']
union
Select * from dbo.['2019$']
union
select * from dbo. ['2020$'])

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
 left join dbo.meal_cost$ 
 on hotels.meal = hotels.meal

--we want to see if the hotel revenue is 
--growing according to the question asked
--since there is no hotel revenue, we create
--a new column in order to see that

--select arrival_date_year,
--hotel,
--round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) as Revenue from hotels
--group by arrival_date_year, hotel

--select * from dbo.market_segment$, dbo.meal_cost$

