-- Which country's customers spent the most?

Select Top.BillingCountry, Max(Top.TotalSales)
From (
    select i.BillingCountry, Sum(i.Total) as TotalSales
    From Invoice i
    Group By BillingCountry) as Top;