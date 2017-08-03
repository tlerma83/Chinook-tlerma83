-- Which sales agent made the most in sales in 2009?

SELECT 
    Totals.FirstName || "" || Totals.LastName As "Best Darn Sales Rep", 
    Max(Totals.TotalAmount)
From (
    Select e.FirstName, 
           e.LastName, 
           Sum(i.Total) As "TotalAmount"
    From Employee e, Customer c, Invoice i
	Where i.CustomerId  = c.CustomerId
    And c.SupportRepId = e.EmployeeId
    And i.InvoiceDate Like "2009%"
    Group By e.LastName) 
    As "Totals"