-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select 
    c.FirstName, 
    c.LastName, 
    i.InvoiceId, 
    i.BillingCountry, 
    i.InvoiceDate
from Customer c, Invoice i
Where c.CustomerId = i.CustomerId 
And c.Country = "Brazil";

