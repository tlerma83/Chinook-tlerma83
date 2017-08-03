-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select 
	i.Total As "Invoice Total", 
	c.FirstName AS "Customer FirstName",
	c.LastName AS "Customer LastName",
	c.Country AS "Country",
	e.FirstName "FirstName",
	e.LastName AS "LastName"
From Invoice i, Customer c, Employee e
Where i.CustomerId = c.CustomerId
And c.SupportRepId = e.EmployeeId
Order by c.LastName;