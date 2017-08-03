-- Provide a query that shows the count of customers assigned to each sales agent.

select 
    e.FirstName || " " || e.LastName as SalesRep, 
    Count(c.SupportRepId) as CustomerCount
from Employee e, Customer c
Where e.EmployeeId = c.SupportRepId
Group By SalesRep;