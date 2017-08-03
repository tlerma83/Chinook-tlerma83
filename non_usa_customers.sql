select
    c.FirstName, 
    c.LastName, 
    c.CustomerId, 
    c.Country
from Customer c
where c.Country != "USA";