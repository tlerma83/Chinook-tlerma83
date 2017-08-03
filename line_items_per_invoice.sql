-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- Count(*) returns same results

select 
    Count(il.InvoiceId) As "Line Items Per Invoice",
    il.InvoiceId As "Invoice Id Number"
From InvoiceLine il
Group By il.InvoiceId;