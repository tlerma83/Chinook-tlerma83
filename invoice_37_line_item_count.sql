-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

select Count(*)
From InvoiceLine
Where InvoiceId = 37;