-- Which sales agent made the most in sales over all?

-- / syntax for round(max(), 2) rounds the number and adds 2 decimal places
Select 
    BestRep.FirstName || " " || BestRep.LastName As "Best Sales Rep Overall", 
    "$" || Round(Max(BestRep.HighestSalesAmount), 2) As "Highest Sales"
From (
    select e.FirstName, e.LastName, Sum(i.Total) As "HighestSalesAmount"
    From Employee e, Customer c, Invoice i
    Where e.EmployeeId = c.SupportRepId
    And c.CustomerId = i.CustomerId
    Group By e.LastName) As "BestRep";