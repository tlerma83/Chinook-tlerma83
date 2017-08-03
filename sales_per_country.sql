-- Provide a query that shows the total sales per country
select 
    i.BillingCountry As Country, Sum(i.Total) as TotalSales
From Invoice i
Group By Country;