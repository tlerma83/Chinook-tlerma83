-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

Select e.FirstName, e.LastName, i.InvoiceId
From Employee e, Customer c, Invoice i
Where e.EmployeeId = c.SupportRepId
And i.CustomerId = c.CustomerId;