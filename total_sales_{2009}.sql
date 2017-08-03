-- What are the respective total sales for each of those years?

select Sum(Total) As "Total Sales 2009"
from Invoice
Where InvoiceDate Like "2009%";