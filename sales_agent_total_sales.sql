-- Provide a query that shows total sales made by each sales agent
select e.FirstName || " " || e.LastName As EmployeeRep,  
	Round(Sum(i.Total), 2) As "Sales Total Amount", 
	Count(i.Total) As "Number of Sales Made"
From Employee e, Customer c, Invoice i
Where e.EmployeeId = c.SupportRepId
And c.CustomerId = i.CustomerId
Group By EmployeeRep;